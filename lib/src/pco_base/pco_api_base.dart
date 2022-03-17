import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

/// Planning Center limits requests to 100 requests per 20 seconds
/// That's 200 milliseconds per request, so we force every request
/// to wait 201 milliseconds after the previous request before execution.
const int apiInterval = 201;

/// PlanningCenter
///
/// example:
///
/// ```dart
/// /// will return a singular [PlanningCenter] instance
/// var pc1 = PlanningCenter.init(appId, secret);
/// var pc2 = PlanningCenter.instance;
/// assert(pc1 == pc2);
/// ```
///
/// This module doesn't support uploads yet.
///
/// Also, the only API version that works with all PCO applications is 2018-08-01
/// However, this package attempts to use the best version available for each application
/// That's why the global api object here allows a version to be specified in the call function
///
class PlanningCenter {
  static const mainEndpoint = 'https://api.planningcenteronline.com'; // no final slash
  static const uploadsEndpoint = 'https://upload.planningcenteronline.com/v2/files';
  static const authEndpoint = 'https://api.planningcenteronline.com/oauth/authorize';
  static const tokenEndpoint = 'https://api.planningcenteronline.com/oauth/token';
  static const oAuthScopes = [
    'calendar',
    'check_ins',
    'giving',
    'groups',
    'people',
    'services'
  ]; // api and webhooks don't work for me

  static bool initialized = false;
  static late PlanningCenter instance;

  /// initialize with an appId and a secret for basic authentication
  static PlanningCenter init(String appId, String secret) => instance = PlanningCenter._(appId, secret);

  /// initialize with an already configured client.
  ///
  /// This method is usually used with an oauth2.Client instance
  /// such as with the oauth2 package, but it may be any object
  /// that supports the same interface as http.Client
  static PlanningCenter initWithCredentials(
    String clientId,
    String clientSecret,
    PlanningCenterCredentials credentials,
  ) =>
      instance = PlanningCenter._withCredentials(clientId, clientSecret, credentials);

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
  ///   var completer = Completer<String>();
  ///   print('Please open your browser to ${url} to authorize this app.');
  ///
  ///   // start a server to listen to the response
  ///   var server = await HttpServer.bind('0.0.0.0', 64738);
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
  /// var authorized = await PlanningCenter.authorize(id, secret, ['giving'], oAuthCodeLocalhostRedirector);
  /// ```
  static Future<bool> authorize(
    clientId,
    clientSecret,
    redirectUri,
    List<String> scopes,
    Future<String> Function(String url) redirector,
  ) async {
    var url =
        '${authEndpoint}?client_id=${clientId}&redirect_uri=${redirectUri}&response_type=code&scope=${scopes.join('+')}';

    // call the redirector and wait for a code response
    var code = await redirector(url);
    print('CODE IS: ' + code);

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
    var res = await http.post(Uri.parse(tokenEndpoint),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'grant_type': 'authorization_code',
          'code': code,
          'client_id': clientId,
          'client_secret': clientSecret,
          'redirect_uri': redirectUri,
        }));

    /// the response will look like this:
    // {
    //   "access_token": "1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef",
    //   "token_type": "bearer",
    //   "expires_in": 7200,
    //   "refresh_token": "1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef",
    //   "scope": "people",
    //   "created_at": 1469553476
    // }
    // create a credentials object
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var credentials = PlanningCenterCredentials.fromJson(data);
      instance = PlanningCenter._withCredentials(clientId, clientSecret, credentials);
      return true;
    }
    print(res.statusCode);
    print(res.body);
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

  late Uri _baseUri;
  late http.Client _client;

  // oauth credentials are optional
  String? clientId;
  String? clientSecret;
  PlanningCenterCredentials? oAuthCredentials;

  /// used for throttling requests
  Future apiCanCall = Future.value(true);

  // private constructor prevents instantiating without proper credentials
  PlanningCenter._(_appId, _secret) {
    _baseUri = Uri.parse(mainEndpoint);
    _baseUri = Uri(
      scheme: _baseUri.scheme,
      userInfo: '$_appId:$_secret',
      host: _baseUri.host,
      path: _baseUri.path,
    );
    _client = http.Client();
    initialized = true;
  }

  PlanningCenter._withCredentials(this.clientId, this.clientSecret, this.oAuthCredentials) {
    _baseUri = Uri.parse(mainEndpoint);
    _baseUri = Uri(
      scheme: _baseUri.scheme,
      host: _baseUri.host,
      path: _baseUri.path,
    );
    _client = http.Client();
    var now = DateTime.now();
    var expiresAt =
        DateTime.fromMillisecondsSinceEpoch(1000 * (oAuthCredentials!.createdAt + oAuthCredentials!.expiresIn));
    var refreshExpiresAt =
        DateTime.fromMillisecondsSinceEpoch(1000 * oAuthCredentials!.createdAt).add(Duration(days: 90));
    if (now.isAfter(expiresAt) && now.isAfter(refreshExpiresAt)) {
      initialized = false;
    } else {
      initialized = true;
    }
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
  Future<PlanningCenterApiResponse> call(
    String endpoint, {
    String verb = 'get',
    Object? data,
    PlanningCenterApiQuery? query,
    String apiVersion = '',
  }) async {
    if (endpoint.startsWith(mainEndpoint)) endpoint = endpoint.replaceFirst(mainEndpoint, '');

    var application = endpoint.split('/')[1];

    // ensure query defaults
    query ??= PlanningCenterApiQuery();

    await apiCanCall;
    apiCanCall = Future.delayed(Duration(milliseconds: apiInterval));

    // fix params
    var fixedParams = <String, String>{};
    query.asMap.forEach((k, v) => fixedParams[k.toString()] = v.toString());
    var uri = Uri.https(_baseUri.authority, _baseUri.path + endpoint, fixedParams);
    var headers = <String, String>{};
    if (apiVersion.isNotEmpty) headers['X-PCO-API-Version'] = apiVersion;

    String jsonString = '';
    if (data != null && verb != 'get') {
      headers['Content-Type'] = 'application/json';
      if (data is! String) {
        jsonString = json.encode(data);
      } else {
        jsonString = data;
      }
    }

    // if we have oAuthCredentials, use them
    if (oAuthCredentials != null) {
      // do we need to refresh the token?
      var now = DateTime.now();
      var expiresAt =
          DateTime.fromMillisecondsSinceEpoch(1000 * (oAuthCredentials!.createdAt + oAuthCredentials!.expiresIn));
      var refreshExpiresAt =
          DateTime.fromMillisecondsSinceEpoch(1000 * oAuthCredentials!.createdAt).add(Duration(days: 90));

      if (now.isAfter(expiresAt)) {
        if (now.isAfter(refreshExpiresAt)) {
          initialized = false;
          return PlanningCenterApiError(
              'Must Reauthorize, refresh token has expired.', application, uri, jsonString, query, 401, '');
        } else {
          // attempt to refresh the token
          var res = await _client.post(Uri.parse(tokenEndpoint),
              headers: {'Content-Type': 'application/json'},
              body: json.encode({
                'client_id': clientId,
                'client_secret': clientSecret,
                'refresh_token': oAuthCredentials!.refreshToken,
                'grant_type': 'refresh_token',
              }));
          if (res.statusCode == 200) {
            oAuthCredentials = PlanningCenterCredentials.fromJson(json.decode(res.body));
          } else {
            initialized = false;
            return PlanningCenterApiError(
                'Must Reauthorize, failed to refresh token', application, uri, jsonString, query, 401, res.body);
          }
        }
      }
      headers['Authorization'] = 'Bearer ${oAuthCredentials!.accessToken}';
    }

    late http.Response res;
    switch (verb.toLowerCase()) {
      case 'get':
        res = await _client.get(uri, headers: headers);
        break;
      case 'post':
        res = await _client.post(uri, headers: headers, body: jsonString);
        break;
      case 'patch':
        res = await _client.patch(uri, headers: headers, body: jsonString);
        break;
      case 'put':
        res = await _client.put(uri, headers: headers);
        break;
      case 'delete':
        res = await _client.delete(uri, headers: headers);
        break;
      default:
        return PlanningCenterApiError('Unsupported http verb', application, uri, jsonString, query, 400, '');
    }
    if (res.statusCode >= 200 && res.statusCode < 300) {
      var retval = PlanningCenterApiResponse.fromResponse(
        application,
        query,
        jsonString,
        res,
      );
      return retval;
    }
    return PlanningCenterApiError(
      'API Request Failed',
      application,
      uri,
      jsonString,
      query,
      res.statusCode,
      res.body,
    );
  }
}

class PlanningCenterCredentials {
  String tokenType = '';
  String accessToken = '';
  String refreshToken = '';
  String scope = '';
  int createdAt = 0;
  int expiresIn = 0;

  PlanningCenterCredentials();
  PlanningCenterCredentials.fromJson(Map data) {
    tokenType = data['token_type'] ?? '';
    accessToken = data['access_token'] ?? '';
    refreshToken = data['refresh_token'] ?? '';
    scope = data['scope'] ?? '';
    createdAt = data['created_at'] ?? 0;
    expiresIn = data['expires_in'] ?? 0;
  }

  Map toJson() => {
        'token_type': tokenType,
        'access_token': accessToken,
        'refresh_token': refreshToken,
        'scope': scope,
        'created_at': createdAt,
        'expires_in': expiresIn,
      };
}

/// [PlanningCenterApiQuery] objects handle all the additional API parameters
/// accepted by the Planning Center API.
class PlanningCenterApiQuery {
  /// [order] can usually be one of created_at, updated_at, title, sort_date, but may be others
  /// prefix with a hyphen to reverse the order
  String? order;

  /// [where] should be a map of query parameters.
  ///
  /// The API usually supports `id` and the same items as `order`
  ///
  /// The API supports url params like this:
  /// - `?where[key]=value`
  /// - `?where[key][gt|lt]=value`
  ///
  /// For our purposes, use a comparison suffix (=, <, >) for your keys.
  ///
  /// - `{ 'created_at<': '2022-01-01' }` -> `?where[created_at][lt]=2022-01-01`  (finds items before that date)
  /// - `{ 'created_at>': '2022-01-01' }` -> `?where[created_at][gt]=2022-01-01`  (finds items after that date)
  /// - `{ 'created_at=': '2022-01-01' }` -> `?where[created_at]=2022-01-01`      (finds items on that date)
  /// - `{ 'created_at':  '2022-01-01' }` -> same as using `=`
  Map<String, String> where;

  /// [filter] should be something like `future`, `past`, `after`, `before`, `no_dates`
  /// Classes and methods that can accept a `filter` in their API calls will specify
  /// those filters in the documentation for that specific class or method.
  ///
  /// Note: some filters require additional data that can be supplied with
  /// the [extraParams] property.
  List<String> filter;

  /// [extraParams] allows you to specify arbitrary url parameters to the API.
  /// This is important because some filters require additional information
  /// (e.g. the `after` filter also requires an `after` parameter with a date string)
  Map<String, String> extraParams;

  /// [include] specifies which related items should be included.
  /// Each class has a static variable called `canInclude` that lists
  /// what can be included here, and each class also describes the possible
  /// includes in the class documentation.
  List<String> include;

  /// Pagination defaults to 25, maximum allowed seems to be 100
  final int perPage;
  int pageOffset;

  PlanningCenterApiQuery({
    this.filter = const [],
    this.include = const [],
    this.perPage = 25,
    this.pageOffset = 0,
    this.order,
    this.where = const {},
    this.extraParams = const {},
  });

  Map<String, dynamic> toJson() => asMap;

  Map<String, dynamic> get asMap {
    Map<String, dynamic> retval = {
      'per_page': perPage,
      'offset': pageOffset,
    };
    if (order != null) retval['order'] = order;

    if (include.isNotEmpty) retval['include'] = include.join(',');
    if (filter.isNotEmpty) retval['filter'] = filter.join(',');

    // unlike the API, we handle where keys using a comparison suffix
    // where keys will be transformed like this
    where.forEach((key, value) {
      // sanity check
      if (key.isEmpty) return;
      var suffix = '';
      if (key.contains(RegExp(r'[=<>]$'))) {
        var endchar = key.substring(key.length - 1);
        key = key.substring(0, key.length - 1);
        if (endchar != '=') {
          suffix = endchar == '<' ? '[lt]' : '[gt]';
        }
      }
      retval['where[$key]$suffix'] = value;
    });

    // if the user specified extra params, we add them now
    if (extraParams.isNotEmpty) {
      extraParams.forEach((key, value) {
        retval[key] = value;
      });
    }

    return retval;
  }

  /// returns a copy of this query as a new object
  /// this method works because Strings and ints are
  /// always copied by value
  PlanningCenterApiQuery copy() {
    return PlanningCenterApiQuery(
      filter: [...filter],
      include: [...include],
      perPage: perPage,
      pageOffset: pageOffset,
      order: order,
      where: {...where},
      extraParams: {...extraParams},
    );
  }

  /// returns a new query only modifying the offset value
  PlanningCenterApiQuery withOffset(int offset) {
    return copy()..pageOffset = offset;
  }
}

/// holds metadata for API requests
class PlanningCenterApiMeta {
  final Map<String, dynamic> _data = {};

  int get totalCount => _data['total_count'] ?? 0;
  int get count => _data['count'] ?? 0;
  int? get nextOffset => _data['next']?['offset'];
  List<String>? get canOrderBy => _data['can_order_by'];
  List<String>? get canQueryBy => _data['can_query_by'];
  Map<String, dynamic>? get parent => _data['parent'];

  PlanningCenterApiMeta();
  PlanningCenterApiMeta.fromJson(Map<String, dynamic> data) {
    _data.addAll(data);
  }

  Map toJson() => _data;
}

class PlanningCenterApiError extends PlanningCenterApiResponse {
  final String errorMessage;
  PlanningCenterApiError.messageOnly(this.errorMessage)
      : super(
          '',
          PlanningCenterApiQuery(),
          Uri(),
          '',
          0,
          '',
          [],
          PlanningCenterApiMeta.fromJson({}),
          {},
          [],
        );

  PlanningCenterApiError(
    this.errorMessage,
    String application,
    Uri requestUri,
    String requestBody,
    PlanningCenterApiQuery query,
    int statusCode,
    String responseBody,
  ) : super(
          application,
          query,
          requestUri,
          requestBody,
          statusCode,
          responseBody,
          [],
          PlanningCenterApiMeta.fromJson({}),
          {},
          [],
        );

  @override
  Map<String, dynamic> toJson({bool includeRawResponseBody = false}) =>
      super.toJson(includeRawResponseBody: includeRawResponseBody)..addAll({'message': errorMessage});

  @override
  String toString() {
    return 'PCOERROR: $statusCode, $errorMessage\nURI: $requestUri\n\nRESPONSE: $responseBody\n\nREQUEST: ${json.encode(requestBody)}\n\n';
  }
}

class PlanningCenterApiResponse {
  bool get isError => this is PlanningCenterApiError;
  PlanningCenterApiError? get error => isError ? (this as PlanningCenterApiError) : null;

  // request items
  final String application;
  final PlanningCenterApiQuery query;
  final Uri requestUri;
  final String requestBody;

  // http response details
  final int statusCode;
  final String responseBody;

  // JSON:API / PCO raw content
  final List<Map<String, dynamic>> data; // always coerced into a list
  final PlanningCenterApiMeta meta;
  final Map<String, dynamic> links;
  final List<Map<String, dynamic>> included;

  Map<String, dynamic> toJson({bool includeRawResponseBody = false}) {
    return {
      'error': isError,
      'request': {
        'uri': requestUri.toString(),
        'body': requestBody,
      },
      'response': {
        'code': statusCode,
        if (includeRawResponseBody) 'body': responseBody,
      },
      'data': data,
      'meta': meta,
      'links': links,
      'included': included,
      'application': application,
    };
  }

  PlanningCenterApiResponse(
    this.application,
    this.query,
    this.requestUri,
    this.requestBody,
    this.statusCode,
    this.responseBody,
    this.data,
    this.meta,
    this.links,
    this.included,
  );

  factory PlanningCenterApiResponse.fromResponse(
    String application,
    PlanningCenterApiQuery query,
    String requestBody,
    http.Response response,
  ) {
    // handle 'DELETE' responses
    if (response.statusCode == 204) {
      return PlanningCenterApiResponse(
        application,
        query,
        response.request!.url,
        requestBody,
        response.statusCode,
        response.body,
        [],
        PlanningCenterApiMeta(),
        {},
        [],
      );
    }

    var body = json.decode(response.body);

    PlanningCenterApiMeta meta = PlanningCenterApiMeta.fromJson(body['meta'] ?? <String, dynamic>{});
    Map<String, dynamic> links = ((body['links'] ?? {}) as Map).map((key, value) => MapEntry(key.toString(), value));

    // coerce the type of the data
    List<Map<String, dynamic>> realData = [];
    var data = body['data'] ?? [];
    if (data is! List) data = [data];
    for (var item in data) {
      realData.add((item as Map).map((key, value) => MapEntry(key.toString(), value)));
    }

    // coerce the type of includes
    List<Map<String, dynamic>> included = [];
    if (body['included'] != null && body['included'] is List) {
      for (var inc in body['included']) {
        if (inc is Map) {
          included.add(inc.map((k, v) => MapEntry(k.toString(), v)));
        }
      }
    }
    return PlanningCenterApiResponse(
      application,
      query,
      response.request!.url,
      requestBody,
      response.statusCode,
      response.body,
      realData,
      meta,
      links,
      included,
    );
  }
}
