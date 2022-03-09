// const axios = require( 'axios' );
import axios from 'axios';
import { PcoResource } from './pco_resource_base.js';
import { buildResource } from './pco_constructors.js';

/// Planning Center limits requests to 100 requests per 20 seconds
/// That's 200 milliseconds per request, so we force every request
/// to wait 201 milliseconds after the previous request before execution.
const apiInterval = 201;

export class PlanningCenterCredentials {
	tokenType = '';
	accessToken = '';
	refreshToken = '';
	scope = '';
	createdAt = 0;
	expiresIn = 0;

	constructor () { }

	static fromJson( data ) {
		let obj = new PlanningCenterCredentials();
		obj.tokenType = data[ 'token_type' ] ?? '';
		obj.accessToken = data[ 'access_token' ] ?? '';
		obj.refreshToken = data[ 'refresh_token' ] ?? '';
		obj.scope = data[ 'scope' ] ?? '';
		obj.createdAt = data[ 'created_at' ] ?? 0;
		obj.expiresIn = data[ 'expires_in' ] ?? 0;
		return obj;
	}

	toJson() {
		return {
			'token_type': this.tokenType,
			'access_token': this.accessToken,
			'refresh_token': this.refreshToken,
			'scope': this.scope,
			'created_at': this.createdAt,
			'expires_in': this.expiresIn,
		}
	}
}

/// [PlanningCenterApiQuery] objects handle all the additional API parameters
/// accepted by the Planning Center API.
export class PlanningCenterApiQuery {
	/// [order] can usually be one of created_at, updated_at, title, sort_date, but may be others
	/// prefix with a hyphen to reverse the order
	order = ''

	/// [where] should be a map of query parameters
	/// usually supports id and the same items as the order
	where = {}

	/// [filter] is something like future, past, after, before, no_dates
	filter = []

	/// [include] automatically includes related items
	include = []

	/// Pagination defaults to 25, maximum allowed seems to be 100
	perPage = 25
	pageOffset = 0

	constructor ( { filter, include, perPage, pageOffset, order, where } ) {
		this.filter = filter ?? []
		this.include = include ?? []
		this.perPage = perPage ?? 25
		this.pageOffset = pageOffset ?? 0
		this.order = order ?? ''
		this.where = where ?? {}
	}

	static fromJson( data ) {
		return PlanningCenterApiQuery( data );
	}

	get asMap() {
		let retval = {
			'per_page': this.perPage,
			'offset': this.pageOffset,
		};
		if ( this.order != null ) retval.order = this.order;
		for ( let key of Object.keys( this.where ) ) {
			retval[ `where[${key}]` ] = this.where[ key ];
		}

		if ( this.include.length > 0 ) retval[ 'include' ] = include.join( ',' );
		if ( this.filter.length > 0 ) retval[ 'filter' ] = filter.join( ',' );

		return retval;
	}

	toJson() { return this.asMap }

	/// returns a copy of this query as a new object
	copy() {
		return PlanningCenterApiQuery.fromJson( this.asMap );
	}

	/// returns a new query only modifying the offset value
	withOffset( offset ) {
		let r = copy()
		r.pageOffset = offset;
		return r;
	}
}

/// holds metadata for API requests
export class PlanningCenterApiMeta {
	_data = {};

	get totalCount() { return _data[ 'total_count' ] ?? 0 }
	get count() { return _data[ 'count' ] ?? 0 }
	get nextOffset() { return ( _data[ 'next' ] ?? [] )[ 'offset' ] }
	get canOrderBy() { return _data[ 'can_order_by' ] }
	get canQueryBy() { return _data[ 'can_query_by' ] }
	get parent() { return _data[ 'parent' ] }

	constructor ( data ) {
		this._data = { ...data }
	}
	static fromJson( data ) {
		return new PlanningCenterApiMeta( data );
	}

	toJson() { return _data }
}

export class PlanningCenterApiResponse {
	get isError() { return 'errorMessage' in this };

	// request items
	application = '';
	query = {};
	requestUri = '';
	requestBody = '';

	// http response details
	statusCode = 0;
	responseBody = '';

	// JSON:API / PCO raw content
	data = []; // always coerced into a list
	meta = {};
	links = {};
	included = [];

	toJson( { includeRawResponseBody = false } ) {
		let r = {
			'error': this.isError,
			'request': {
				'uri': this.requestUri.toString(),
				'body': this.requestBody,
			},
			'response': {
				'code': this.statusCode,
			},
			'data': this.data,
			'meta': this.meta,
			'links': this.links,
			'included': this.included,
			'application': this.application,
		};
		if ( includeRawResponseBody ) r[ 'body' ] = this.responseBody;
		return r;
	}

	constructor (
		application,
		query,
		requestUri,
		requestBody,
		statusCode,
		responseBody,
		data,
		meta,
		links,
		included,
	) {
		this.application = application ?? ''
		this.query = query ?? {}
		this.requestUri = requestUri ?? ''
		this.requestBody = requestBody ?? ''
		this.statusCode = statusCode ?? 0
		this.responseBody = responseBody ?? ''
		this.data = data ?? []
		this.meta = meta ?? {}
		this.links = links ?? {}
		this.included = included = []
	}

	static fromResponse(
		application,
		query,
		requestBody,
		response,
	) {
		// handle 'DELETE' responses
		if ( response.status == 204 ) {
			return new PlanningCenterApiResponse(
				application,
				query,
				response.request.url,
				requestBody,
				response.status,
				response.data,
				[],
				new PlanningCenterApiMeta(),
				{},
				[],
			);
		}

		let body = response.data;
		let meta = PlanningCenterApiMeta.fromJson( body.meta );
		let links = { ...body.links }
		let included = body.included ?? [];

		let data = body.data ?? [];
		if ( !Array.isArray( data ) ) data = [ data ];

		return new PlanningCenterApiResponse(
			application,
			query,
			response.request.url,
			requestBody,
			response.status,
			JSON.stringify( response.data ),
			data,
			meta,
			links,
			included,
		);
	}
}

export class PlanningCenterApiError extends PlanningCenterApiResponse {
	errorMessage = '';

	static messageOnly( errorMessage ) {
		return new PlanningCenterApiError( errorMessage, '', '', '', {}, 0, '' )
	}

	constructor (
		errorMessage,
		application,
		requestUri,
		requestBody,
		query,
		statusCode,
		responseBody,
	) {
		super(
			application,
			query,
			requestUri,
			requestBody,
			statusCode,
			responseBody,
			[],
			PlanningCenterApiMeta.fromJson( {} ),
			{},
			[],
		);
		this.errorMessage = errorMessage;
	}

	toJson( { includeRawResponseBody = false } ) {
		let r = super.toJson( { includeRawResponseBody } )
		r.message = errorMessage;
		return r;
	}

	toString() {
		return `PCOERROR: ${this.statusCode}, ${this.errorMessage}\nURI: ${this.requestUri}\n\nRESPONSE: ${this.responseBody}\n\nREQUEST: ${this.requestBody}\n\n`;
	}
}

/// PlanningCenter
///
/// example:
///
/// ```dart
/// /// will return a singular [PlanningCenter] instance
/// let pc1 = PlanningCenter.init(appId, secret);
/// let pc2 = PlanningCenter.instance;
/// assert(pc1 == pc2);
/// ```
///
/// This module doesn't support uploads yet.
///
/// Also, the only API version that works with all PCO applications is 2018-08-01
/// However, this package attempts to use the best version available for each application
/// That's why the global api object here allows a version to be specified in the call function
///
export class PlanningCenter {
	constructor () {
		PcoResource.builder = buildResource;
	}

	static mainEndpoint = 'https://api.planningcenteronline.com'; // no final slash
	static uploadsEndpoint = 'https://upload.planningcenteronline.com/v2/files';
	static authEndpoint = 'https://api.planningcenteronline.com/oauth/authorize';
	static tokenEndpoint = 'https://api.planningcenteronline.com/oauth/token';
	static oAuthScopes = [
		'calendar',
		'check_ins',
		'giving',
		'groups',
		'people',
		'services'
	]; // api and webhooks don't work for me

	static initialized = false;
	static instance;

	/// initialize with an appId and a secret for basic authentication
	static init( appId, secret ) { return PlanningCenter._withAppIdAndSecret( appId, secret ) }

	/// initialize with an already configured client.
	///
	/// This method is usually used with an oauth2.Client instance
	/// such as with the oauth2 package, but it may be any object
	/// that supports the same interface as http.Client
	static initWithCredentials(
		clientId,
		clientSecret,
		credentials,
	) {
		return PlanningCenter._withCredentials( clientId, clientSecret, credentials )
	}

	/// Use OAuth2 to authorize
	/// Scopes should be one or more of the following: api, calendar, check_ins, giving, groups, people, services, webhooks
	/// ... for some reason, the webhooks scope gives an error
	///
	/// [redirectUri] must be registered on Planning Center's API dashboard for the client id and secret
	/// example: 'http://localhost:64738/pco_callback'
	/// example: 'myappcallback://pcocallback'
	///
	/// [redirector] must be a function that takes a String and returns an auth token as a Future<String>
	///
	/// ```dart
	/// Future<String> oAuthCodeLocalhostRedirector(url) {
	///   // function to launch the url in a browser
	///   let completer = Completer<String>();
	///   print('Please open your browser to ${url} to authorize this app.');
	///
	///   // start a server to listen to the response
	///   let server = await HttpServer.bind('0.0.0.0', 64738);
	///   server.listen((HttpRequest req) async {
	///     req.response.write('Code received!');
	///     req.response.close();
	///     server.close();
	///     print(req.requestedUri);
	///     print(req.requestedUri.queryParameters);
	///     print(req.requestedUri.queryParameters);
	///     completer.complete(req.requestedUri.queryParameters['code']);
	///   });
	///   return completer.future;
	/// }
	/// let authorized = await PlanningCenter.authorize(id, secret, ['giving'], oAuthCodeLocalhostRedirector);
	/// ```
	static async authorize(
		clientId,
		clientSecret,
		redirectUri,
		scopes,
		redirector,
	) {
		let url =
			`${authEndpoint}?client_id=${clientId}&redirect_uri=${redirectUri}&response_type=code&scope=${scopes.join( ' + ' )}`;

		// call the redirector and wait for a code response
		let code = await redirector( url );
		print( 'CODE IS: ' + code );

		// now that we have a code
		// call the oauth client
		// with data like this:
		// {
		//   "grant_type": "authorization_code",
		//   "code": "CODE_FROM_STEP_2",
		//   "client_id": "CLIENT_ID",
		//   "client_secret": "CLIENT_SECRET",
		//   "redirect_uri": "https://example.com/auth/complete"
		// }
		let res = await axios.post( tokenEndpoint,
			JSON.stringify( {
				'grant_type': 'authorization_code',
				'code': code,
				'client_id': clientId,
				'client_secret': clientSecret,
				'redirect_uri': redirectUri,
			} ), { headers: { 'Content-Type': 'application/json' } } );

		/// the response data will look like this:
		// {
		//   "access_token": "1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef",
		//   "token_type": "bearer",
		//   "expires_in": 7200,
		//   "refresh_token": "1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef",
		//   "scope": "people",
		//   "created_at": 1469553476
		// }
		// create a credentials object
		if ( res.status == 200 ) {
			let data = JSON.decode( res.data );
			let credentials = PlanningCenterCredentials.createFromJson( data );
			instance = PlanningCenter._withCredentials( clientId, clientSecret, credentials );
			return true;
		}
		print( res.status );
		print( res.data );
		return false;

		// use the access token like this:
		// 'Authorization: Bearer 1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef'

		// refresh tokens like this:
		// POST https://api.planningcenteronline.com/oauth/token
		// {
		//   "client_id": "<your application client id>",
		//   "client_secret": "<your application secret>",
		//   "refresh_token": "<your access token refresh token>",
		//   "grant_type": "refresh_token"
		// }
		// open simple web server
		// wait for the server to call back
	}

	// instance members
	_baseUri;
	_client;

	// oauth credentials are optional
	clientId;
	clientSecret;
	oAuthCredentials; // PlanningCenterCredentials object

	/// used for throttling requests
	apiCanCall = Promise.resolve( true );

	// private constructor prevents instantiating without proper credentials
	static _withAppIdAndSecret( _appId, _secret ) {
		let obj = new PlanningCenter();
		obj._baseUri = this.mainEndpoint;
		obj._client = axios.create( { baseURL: obj._baseUri, validateStatus: null, auth: { username: _appId, password: _secret } } );
		obj.initialized = true;
		PlanningCenter.instance = obj;
		return obj;
	}

	static _withCredentials( clientId, clientSecret, oAuthCredentials ) {
		let obj = new PlanningCenter();
		obj._baseUri = this.mainEndpoint;
		obj._client = axios.create( {
			baseURL: obj._baseUri, validateStatus: null,
		} );

		let now = Date.now();
		let expiresAt = ( oAuthCredentials.createdAt + oAuthCredentials.expiresIn ) * 1000;
		let refreshExpiresAt = ( oAuthCredentials.createdAt + 90 * 24 * 60 * 60 ) * 1000;
		if ( now > expiresAt && now > refreshExpiresAt ) {
			obj.initialized = false;
		} else {
			obj.initialized = true;
		}
		obj.clientId = clientId;
		obj.clientSecret = clientSecret;
		PlanningCenter.instance = obj;
		return obj;
	}

	/// Planning Center publishes their API documentation here:
	/// https://developer.planning.center/docs/#/overview/
	///
	/// Some relevant points from the documentation:
	/// resources (sent and received) are wrapped in an object like this
	/// { "data": { "type": "Thing", "id": "1", "attributes": { ... } } }
	///
	/// dates are YYYY-MM-DD
	/// date and time is YYYY-MM-DDTHH:MM:SSZ and always UTC
	/// to query for an item related to date use this format
	///  ?where[date_field_name]=2018-02-22
	///  or
	///  ?where[date_field_name][operator]=2018-02-22
	/// the optional operator can be one of gt,gte,lt,lte for greater than, etc.
	///
	/// related resources can be included with ?include=something
	///
	/// This function executes an api request with appropriate authentication.
	///
	/// Returns a [PlanningCenterApiResponse] object that decodes
	/// response data into various mappings, but does not create objects.
	///
	/// Real objects can be created with [PcoResponse.fromJson()]
	///
	/// [endpoint] should begin with a slash, because
	/// 'https://api.planningcenteronline.com' will be prepended automatically
	///
	///
	async call(
		endpoint, {
			verb = 'get',
			data = {},
			query = new PlanningCenterApiQuery(),
			apiVersion = '',
		} ) {
		// if ( !endpoint.startsWith( this.constructor.mainEndpoint ) )
		// 	endpoint = this.constructor.mainEndpoint + '/' + endpoint;

		let application = endpoint.split( '/' )[ 1 ];

		// ensure query defaults
		query = query ?? new PlanningCenterApiQuery( {} );

		await this.apiCanCall;
		this.apiCanCall = new Promise( function ( resolve, _ ) {
			setTimeout( function () {
				resolve();
			}, apiInterval )
		} );


		// sanitize request params
		let params = { ...query.asMap };

		let headers = {};
		if ( apiVersion != '' ) headers[ 'X-PCO-API-Version' ] = apiVersion;

		let jsonString = '';
		if ( data != null && verb != 'get' ) {
			headers[ 'Content-Type' ] = 'application/json';
			if ( typeof data == 'string' ) {
				jsonString = data
			} else {
				jsonString = JSON.stringify( data );
			}
		}

		// if we have oAuthCredentials, use them
		if ( this.oAuthCredentials != null ) {
			// do we need to refresh the token?
			let now = Date.now();
			let expiresAt = ( this.oAuthCredentials.createdAt + this.oAuthCredentials.expiresIn ) * 1000;
			let refreshExpiresAt = ( this.oAuthCredentials.createdAt + 90 * 24 * 60 * 60 ) * 1000;

			if ( now > expiresAt ) {
				if ( now > refreshExpiresAt ) {
					this.initialized = false;
					return new PlanningCenterApiError(
						'Must Reauthorize, refresh token has expired.', application, endpoint, data, query, 401, '' );
				} else {
					// attempt to refresh the token
					let res = await this._client.post( this.constructor.tokenEndpoint,
						{
							'client_id': clientId,
							'client_secret': clientSecret,
							'refresh_token': this.oAuthCredentials.refreshToken,
							'grant_type': 'refresh_token',
						}, { headers: { 'Content-Type': 'application/json' } } );
					if ( res.status == 200 ) {
						this.oAuthCredentials = PlanningCenterCredentials.fromJson( JSON.parse( res.body ) );
					} else {
						this.initialized = false;
						return new PlanningCenterApiError(
							'Must Reauthorize, failed to refresh token', application, endpoint, data, query, 401, res.body );
					}
				}
			}

			// accesstoken is still valid... we continue with it as our authorization token
			headers[ 'Authorization' ] = `Bearer ${this.oAuthCredentials.accessToken}`;
		}

		let res;
		let _client = this._client;
		switch ( verb.toLowerCase() ) {
			case 'get':
				res = await _client.get( endpoint, { headers, params } );
				break;
			case 'post':
				res = await _client.post( endpoint, data, { headers, params } );
				break;
			case 'patch':
				res = await _client.patch( endpoint, data, { headers, params } );
				break;
			case 'put':
				res = await _client.put( endpoint, { headers, params } );
				break;
			case 'delete':
				res = await _client.delete( endpoint, { headers, params } );
				break;
			default:
				return new PlanningCenterApiError( 'Unsupported http verb', application, endpoint, data, query, 400, '' );
		}

		if ( res.status >= 200 && res.status < 300 ) {
			// inject the original url into the response
			// because axios doesn't do it for us
			res.request.url = endpoint;
			let retval = PlanningCenterApiResponse.fromResponse(
				application,
				query,
				jsonString,
				res,
			);
			// console.log( 'RESPONSE RECEIVED' )
			// console.dir( res.request.url, { depth: 6 } )
			// console.log( 'PARSED ---------------' )
			// console.dir( retval, { depth: 6 } )
			return retval;
		}
		return new PlanningCenterApiError(
			'API Request Failed',
			application,
			endpoint,
			jsonString,
			query,
			res.status,
			res.data,
		);
	}
}
