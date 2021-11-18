import 'dart:convert';
import 'package:http/http.dart' as http;

const int apiInterval = 200; // 100 requests per 20 seconds in milliseconds

class PlanningCenterApiQuery {
  /// [order] can usually be one of created_at, updated_at, title, sort_date, but may be others
  /// prefix with a hyphen to reverse the order
  final String? order;

  /// [where] should be a map of query parameters
  /// usually supports id and the same items as the order
  final Map<String, String> where;

  /// [filter] is something like future, past, after, before, no_dates
  final List<String> filter;

  /// [include] automatically includes related items
  final List<String> include;

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
  final List<dynamic> included;

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
    List<dynamic> included = dataMap['included'] ?? [];
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
  final mainEndpoint = 'https://api.planningcenteronline.com'; // no final slash
  final uploadsEndpoint = 'https://upload.planningcenteronline.com/v2/files';

  static bool initialized = false;
  static late PlanningCenter instance;
  static PlanningCenter init(appId, secret) => instance = PlanningCenter._(appId, secret);

  String appId;
  String secret;
  late Uri _baseUri;
  late http.Client _client;

  /// used for throttling requests
  Future apiCanCall = Future.value(true);

  PlanningCenter._(this.appId, this.secret) {
    _baseUri = Uri.parse(mainEndpoint);
    _baseUri = Uri(
      scheme: _baseUri.scheme,
      userInfo: '$appId:$secret',
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
