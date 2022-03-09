import { PlanningCenter, PlanningCenterApiError, PlanningCenterApiQuery } from './pco_api_base.js';

/// follows the implementation of a JSON:API resource object
///
/// Implementations should override static members [application], [typeString], [apiVersion]
/// as well as all the field mapping constants.
///
/// Implementations should override the getters [createAllowed], [updateAllowed],
/// and [defaultAttributes].
///
/// Implementations should also have a static [typeEndpoint] and override [itemEndpoint]
export class PcoResource {
	/// implementations should duplicate/override these
	static kPcoApplication = '';
	static kTypeString = '';
	static kApiVersion = '';
	static kShortestEdgeId = '';
	static kShortestEdgePathTemplate = '';
	static kDefaultPathTemplate = '';

	// will be overridden by the 'pco_constructors' file when it is run
	static builder = () => { };

	/// child classes can override these getters which will allow
	/// methods in this class to see static variables from child classes
	get apiVersion() { return this.constructor.kApiVersion; }
	get defaultPathTemplate() { return this.constructor.kDefaultPathTemplate; }
	get shortestEdgePathTemplate() { return this.constructor.kShortestEdgePathTemplate; }

	// field mapping constants
	static kCreatedAt = 'created_at';
	static kUpdatedAt = 'updated_at';

	/// planning center resources must be tied to an api
	get api() { return PlanningCenter.instance }

	/// all planning center resources must have a [type]
	resourceType = '';
	application = '';

	/// will be null if resource is new and not yet created
	_id = null;
	get id() { return _id }
	get needsSave() { return this.id == null }

	/// PcoResources include their own path as a link object
	/// but this might be null if we haven't created/fetched the object yet
	/// Child classes should redefine this getter to allow for manual path overrides
	get apiPath() { return _links.self ?? this.defaultPathTemplate }
	get apiEndpoint() { return '/' + ( this.apiPath?.split( '/' ).slice( 0, 3 ).join( '/' ) ?? '' ) }

	/// indicate whether an item is full or partial
	fetched = false;

	// these getters allow us to define which fields planning center
	// will accept on certain operations
	get createAllowed() { return [] }
	get updateAllowed() { return [] }

	// permissions getters
	get canDestroy() { return true }
	get canCreate() { return true }
	get canUpdate() { return true }

	// -- DATA FIELDS WITH GETTERS AND SETTERS --

	/// contains the underlying attributes returned by the api
	/// allow a user to access arbitrary data in the attributes by actual api name
	attributes = {};

	/// contains relationships parsed into objects
	/// even though the api sends relationship objects as Maps or Lists
	/// we always put them into lists for consistency
	_relationships = {};
	get relationships() { return this._relationships }

	/// contains the links data returned by the api if present
	_links = {};
	get links() { return this._links; }

	// all planning center resources implement at least these fields
	get createdAt() { return new Date.parse( this.attributes[ this.constructor.kCreatedAt ] ) }
	get updatedAt() { return new Date.parse( this.attributes[ this.constructor.kUpdatedAt ] ) }

	constructor ( application, resourceType ) {
		this.application = application;
		this.resourceType = resourceType;
	}

	static createFromJson(
		application,
		resourceType,
		{ data,
			withIncludes = [],
		} ) {
		let obj = new PcoResource( application, resourceType );

		if ( !data.type ) {
			print( data );
			throw Exception( 'data supplied does not meet JSON:API specs. No "type" field found' );
		}

		obj.fromJson( data );
		obj.handleIncludes( withIncludes );
		return obj;
	}

	async _selfcall( verb, data = '' ) {
		let res;
		if ( this.apiPath == null ) {
			res = new PlanningCenterApiError(
				'Cannot determine apiPath',
				application,
				'',
				'',
				new PlanningCenterApiQuery(),
				0,
				'',
			);
		} else {
			res = await this.api.call( this.apiEndpoint, { verb, apiVersion: apiVersion, data } );
			if ( !res.isError ) {
				// apiresponses now always give data as a list
				this.fromJson( res.data[ 0 ] );
			}
		}
		return res;
	}

	save() {
		if ( this.id == null && !this.canCreate ) return Promise.resolve( new PlanningCenterApiError.messageOnly( 'cannot create object' ) );
		if ( this.id != null && !this.canUpdate ) return Promise.resolve( new PlanningCenterApiError.messageOnly( 'cannot update object' ) );

		var jsonString = JSON.stringify( { 'data': id == null ? this.toCreateResource() : this.toUpdateResource() } );
		return this._selfcall( id == null ? 'post' : 'patch', jsonString );
	}

	delete() {
		if ( this.canDestroy ) return this._selfcall( 'delete' );
		return Promise.resolve( new PlanningCenterApiError.messageOnly( 'delete not allowed' ) );
	}

	/// Takes a full JSON:API Response Object (the contents of a "data" field)
	/// will clear and update [id], [apiPath], [attributes] and [_relationships]
	fromJson( data ) {
		if ( data?.type != this.resourceType ) {
			console.log( `Incorrect data type: ${data?.type} given, but ${this.resourceType} expected.` );
			return;
		}

		// responses will always have an id, but we shouldn't update this data
		// if the response data has a different id!
		// assert( this.id == null || data.id == this.id );

		// update this id if needed
		this._id = this._id ?? data.id;

		// update the attributes
		if ( data?.attributes ) {
			this.attributes = { ...data.attributes };
		}

		// update the links
		if ( data?.links ) {
			this._links = { ...data.links }
		}

		// process relationships, but first ensure
		// all relationship objects are actually lists
		if ( data.relationships ) {
			this._relationships = { ...this.handleItems( data.relationships ) }
		}
	}

	/// this assumes that the relationship object has already been populated
	/// because it updates the relationships objects with the included data
	handleIncludes( included ) {
		// make a quick mapping for later reference into nested objects
		let relDataMap = {};
		for ( let key of Object.keys( this._relationships ) ) {
			let items = this._relationships[ key ]
			for ( let item of items ) {
				if ( item.id == null ) continue;
				relDataMap[ item.id + '-' + item.resourceType ] = item;
			}
		}

		// walk the relationships tree to find a matching item id and type
		for ( let data of included ) {
			if ( data.type == null || data.id == null ) continue;
			let key = data.id + '-' + data.type;
			relDataMap[ key ]?.fromJson( data );
		}
	}

	handleItems( items ) {
		let retval = {};
		for ( let key of Object.keys( items ) ) {
			retval[ key ] = [];
			var value = items[ key ];
			if ( value.data == null ) continue; // no data, leave empty
			if ( !Array.isArray( value.data ) ) value.data = [ value.data ];
			for ( let data of value.data ) {
				try {
					let res = PcoResource.builder( application, data );
					if ( res != null ) retval[ key ]?.push( res );
				} catch ( e ) {
					print( e );
				}
			}
		}
		return retval;
	}

	toJson() {
		return { 'type': this.resourceType, 'id': this.id, 'attributes': this.attributes };
	}

	filteredAttributes( allowedKeys ) {
		let filtered = {};
		for ( let key of allowedKeys ) {
			if ( this.attributes[ key ] != null ) filtered[ key ] = this.attributes[ key ];
		}
		return filtered;
	}

	toCreateResource() {
		let retval = this.toJson();
		retval[ 'attributes' ] = this.filteredAttributes( this.createAllowed );
		delete retval.id;
		return retval;
	}

	toUpdateResource() {
		let retval = this.toJson();
		retval[ 'attributes' ] = this.filteredAttributes( this.updateAllowed );
		return retval;
	}
}

/// [PcoCollection] represents any response that has one or more
/// items of data from the server. Most requests will return a PcoCollection.
///
/// Information like [endpoint] and [apiVersion] will be preserved so future
/// queries can be generated from existing collections.
/// Also, [meta] preserves the `meta` section of the ApiResponse,
/// [query] preserves the original `query` for the collection, and
/// [response] preserves the full response from the API Request.
/// Finally [data] is a typed list of the response data encapsulated by the appropriate class.
export class PcoCollection {
	endpoint = '';
	apiVersion = '';

	response = {};
	query = {};
	meta = {};

	data = [];

	get isError() { return this.response.isError }
	get hasMore() { return this.meta.nextOffset != null }

	constructor ( { data, meta, response, query, endpoint, apiVersion } ) {
		this.data = data ?? []
		this.meta = meta ?? []
		this.response = response ?? {}
		this.query = query ?? {}
		this.endpoint = endpoint ?? ''
		this.apiVersion = apiVersion ?? ''
	}

	/// url, query: query, apiVersion:kApiVersion
	static async fromApiCall( endpoint, { query, apiVersion } ) {
		let res = await PlanningCenter.instance.call( endpoint, { query, apiVersion } );
		return PcoCollection.fromApiResponse( res, endpoint, apiVersion );
	}

	/// we also require the original endpoint and the apiversion so that subsequent
	/// requests like [getMore] and [nextPage] can be built easily off of this one.
	static fromApiResponse( response, endpoint, apiVersion ) {
		let data = [];
		for ( let item of response.data ) {
			let res;
			if ( PcoResource.builder ) res = PcoResource.builder( response.application, item );
			else res = item;

			if ( res != null ) data.push( res );
		}
		return new PcoCollection( { data, meta: response.meta, response, query: response.query, endpoint, apiVersion } );
	}

	/// [nextPage] will return a *new collection* representing the next page of data from
	/// the server. The page offset is stored in the metadata of the previous response.
	/// If the server has no more items, the API will be called with an offset equal to the
	/// total count of items as reported by the server on the previous request.
	///
	/// You should not call this function unless you first check [hasMore] or you expect
	/// new resources have been added on the server. Otherwise it might be a wasted request.
	nextPage() {
		return PcoCollection.fromApiCall( endpoint,
			{
				query: this.query.withOffset( this.meta.nextOffset ?? this.meta.totalCount ),
				apiVersion: this.apiVersion
			} );
	}

	/// If a collection has more items available on the server
	/// [getMore] will call [nextPage] internally, will extend the current
	/// data with the the new data and then will update
	/// this collection with new [query], [meta], and [response] values.
	///
	/// It returns `true` if new items were fetched or `false` otherwise
	///
	/// You should not call this function unless you first check [hasMore] or you expect
	/// new resources have been added on the server. Otherwise it might be a wasted request.
	///
	/// ```dart
	/// while (res.hasMore) {
	///   await res.getMore();
	/// }
	/// // -- your code that saves a new item on the server --
	/// await res.getMore();
	/// ```
	async getMore() {
		var newCollection = await nextPage();
		if ( newCollection.data.isNotEmpty ) {
			this.query = newCollection.query;
			this.meta = newCollection.meta;
			this.response = newCollection.response;
			for ( let item of newCollection.data ) {
				this.data.push( item );
			}
			return true;
		}
		return false;
	}
}
