import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

const int apiInterval = 200; // 100 requests per 20 seconds in milliseconds

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
  static const oAuthCallbackPort = 64738;
  static const oAuthCallbackUrl = 'http://localhost:${oAuthCallbackPort}/pco_callback';

  static bool initialized = false;
  static late PlanningCenter instance;
  static PlanningCenter init(appId, secret) => instance = PlanningCenter._http(appId, secret);

  /// NOT YET IMPLEMENTED
  /// Authorize by OAuth 2
  /// Scopes should be one or more of the following: api, calendar, check_ins, giving, groups, people, services, webhooks
  static Future<PlanningCenter> authorize(clientId, clientSecret, List<String> scopes, String credentialsJson) {
    var completer = Completer<PlanningCenter>();
    var url =
        '${authEndpoint}?client_id=${clientId}&redirect_uri=${oAuthCallbackUrl}&response_type=code&scope=${scopes.join('+')}';
    // call the oauth client
    // with data like this:
    // {
    //   "grant_type": "authorization_code",
    //   "code": "CODE_FROM_STEP_2",
    //   "client_id": "CLIENT_ID",
    //   "client_secret": "CLIENT_SECRET",
    //   "redirect_uri": "https://example.com/auth/complete"
    // }

    /// the response will look like this:
    // {
    //   "access_token": "1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef",
    //   "token_type": "bearer",
    //   "expires_in": 7200,
    //   "refresh_token": "1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef",
    //   "scope": "people",
    //   "created_at": 1469553476
    // }

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
    return completer.future.then((p) => instance = p);
  }

  late Uri _baseUri;
  late dynamic _client; // will be either http.Client or oauth2.Client

  /// used for throttling requests
  Future apiCanCall = Future.value(true);

  PlanningCenter._http(_appId, _secret) {
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

  PlanningCenter._oauth(this._client) {
    _baseUri = Uri.parse(mainEndpoint);
    _baseUri = Uri(
      scheme: _baseUri.scheme,
      host: _baseUri.host,
      path: _baseUri.path,
    );
    _client = http.Client();
    initialized = true;
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
    String data = '',
    PlanningCenterApiQuery? query,
    String apiVersion = '',
  }) async {
    if (endpoint.startsWith(mainEndpoint)) endpoint = endpoint.replaceFirst(mainEndpoint, '');

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

    // print(endpoint);
    // print(uri);
    // print(verb);
    // print(apiVersion);
    // print(query.toJson());
    // print(data);

    late http.Response res;
    switch (verb.toLowerCase()) {
      case 'get':
        res = await _client.get(uri, headers: headers);
        break;
      case 'post':
        res = await _client.post(uri, headers: headers, body: data);
        break;
      case 'patch':
        res = await _client.patch(uri, headers: headers, body: data);
        break;
      case 'put':
        res = await _client.put(uri, headers: headers);
        break;
      case 'delete':
        res = await _client.delete(uri, headers: headers);
        break;
      default:
        return PlanningCenterApiError(
          'Unsupported http verb',
          0,
          uri,
          {'query': query.asMap, 'data': data},
          '',
        );
    }
    if (res.statusCode >= 200 && res.statusCode < 300) {
      var retval = PlanningCenterApiResponse.fromMap(
        res.statusCode,
        uri,
        {'query': query.asMap, 'data': data},
        res.body,
        json.decode(res.body),
      );
      return retval;
    }
    return PlanningCenterApiError(
      'API Request Failed',
      res.statusCode,
      uri,
      {'query': query.asMap, 'data': data},
      res.body,
    );
  }
}

class PlanningCenterApiQuery {
  /// [order] can usually be one of created_at, updated_at, title, sort_date, but may be others
  /// prefix with a hyphen to reverse the order
  String? order;

  /// [where] should be a map of query parameters
  /// usually supports id and the same items as the order
  Map<String, String> where;

  /// [filter] is something like future, past, after, before, no_dates
  List<String> filter;

  /// [include] automatically includes related items
  List<String> include;

  // Pagination we default to 25
  final int perPage;
  int pageOffset;

  PlanningCenterApiQuery({
    this.filter = const [],
    this.include = const [],
    this.perPage = 25,
    this.pageOffset = 0,
    this.order,
    this.where = const {},
  });

  Map<String, dynamic> toJson() => asMap;

  Map<String, dynamic> get asMap {
    Map<String, dynamic> retval = {
      'per_page': perPage,
      'offset': pageOffset,
    };
    if (order != null) retval['order'] = order;
    where.forEach((key, value) {
      retval['where[$key]'] = value;
    });
    if (include.isNotEmpty) retval['include'] = include.join(',');
    if (filter.isNotEmpty) retval['filter'] = filter.join(',');

    return retval;
  }
}

class PlanningCenterApiError extends PlanningCenterApiResponse {
  final String errorMessage;
  PlanningCenterApiError(
    this.errorMessage,
    statusCode,
    requestUri,
    requestData,
    responseBody,
  ) : super(statusCode, requestUri, requestData, responseBody, {}, {}, {}, []);

  @override
  String toString() {
    return 'PCOERROR: $statusCode, $errorMessage\nURI: $requestUri\n\nRESPONSE: $responseBody\n\nREQUEST: ${json.encode(requestData)}\n\n';
  }
}

class PlanningCenterApiResponse {
  bool get isError => this is PlanningCenterApiError;

  final Uri requestUri;
  final dynamic requestData;

  final int statusCode;
  final dynamic responseBody;

  // successful queries only
  final dynamic data; // might be a list or a map
  final Map<String, dynamic> meta;
  final Map<String, dynamic> links;
  final List<Map<String, dynamic>> included;

  Map<String, dynamic> toJson() {
    return {
      'error': isError,
      'request': {
        'uri': requestUri,
        'body': requestData,
      },
      'response': {
        'code': statusCode,
        'body': responseBody,
      },
      'data': data,
      'meta': meta,
      'links': links,
      'included': included,
    };
  }

  PlanningCenterApiResponse(
    this.statusCode,
    this.requestUri,
    this.requestData,
    this.responseBody,
    this.data,
    this.meta,
    this.links,
    this.included,
  );

  factory PlanningCenterApiResponse.fromMap(
    statusCode,
    requestUri,
    requestData,
    responseBody,
    dynamic dataMap,
  ) {
    // print(dataMap);
    var data = dataMap['data'] ?? {};
    Map<String, dynamic> meta = dataMap['meta'] ?? {};
    Map<String, dynamic> links = dataMap['links'] ?? {};
    List<Map<String, dynamic>> included = [];
    if (dataMap['included'] != null && dataMap['included'] is List) {
      for (var inc in dataMap['included']) {
        if (inc is Map) {
          included.add(inc.map((k, v) => MapEntry(k.toString(), v)));
        }
      }
    }
    return PlanningCenterApiResponse(
      statusCode,
      requestUri,
      requestData,
      responseBody,
      data,
      meta,
      links,
      included,
    );
  }
}
