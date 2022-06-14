part of pco;

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
  static const mainEndpoint =
      'https://api.planningcenteronline.com'; // no final slash
  static const uploadsEndpoint =
      'https://upload.planningcenteronline.com/v2/files';
  static const authEndpoint =
      'https://api.planningcenteronline.com/oauth/authorize';
  static const tokenEndpoint =
      'https://api.planningcenteronline.com/oauth/token';
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
  static PlanningCenter init(String appId, String secret) =>
      instance = PlanningCenter._(appId, secret);

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
      instance =
          PlanningCenter._withCredentials(clientId, clientSecret, credentials);

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
        '$authEndpoint?client_id=$clientId&redirect_uri=$redirectUri&response_type=code&scope=${scopes.join('+')}';

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
      instance =
          PlanningCenter._withCredentials(clientId, clientSecret, credentials);
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
  late Uri _uploadsUri;
  late http.Client _client;

  // oauth credentials are optional
  String? clientId;
  String? clientSecret;
  PlanningCenterCredentials? oAuthCredentials;
  final Map<String, String> _authHeaders = {};

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
    _uploadsUri = Uri.parse(uploadsEndpoint);
    _uploadsUri = Uri(
      scheme: _uploadsUri.scheme,
      userInfo: '$_appId:$_secret',
      host: _uploadsUri.host,
      path: _uploadsUri.path,
    );
    _client = http.Client();
    initialized = true;
  }

  PlanningCenter._withCredentials(
      this.clientId, this.clientSecret, this.oAuthCredentials) {
    _baseUri = Uri.parse(mainEndpoint);
    _baseUri = Uri(
      scheme: _baseUri.scheme,
      host: _baseUri.host,
      path: _baseUri.path,
    );
    _client = http.Client();
    var now = DateTime.now();
    var expiresAt = DateTime.fromMillisecondsSinceEpoch(
        1000 * (oAuthCredentials!.createdAt + oAuthCredentials!.expiresIn));
    var refreshExpiresAt =
        DateTime.fromMillisecondsSinceEpoch(1000 * oAuthCredentials!.createdAt)
            .add(Duration(days: 90));
    if (now.isAfter(expiresAt) && now.isAfter(refreshExpiresAt)) {
      initialized = false;
    } else {
      initialized = true;
    }
  }

  /// a kind of middleware to check credentials before doing an api call
  Future<PlanningCenterApiError?> _checkCredentials() async {
    // clear credentials from last time
    _authHeaders.remove('Authorization');

    // if we have oAuthCredentials, use them
    if (oAuthCredentials == null) return null;

    // do we need to refresh the token?
    var now = DateTime.now();
    var expiresAt = DateTime.fromMillisecondsSinceEpoch(
        1000 * (oAuthCredentials!.createdAt + oAuthCredentials!.expiresIn));
    var refreshExpiresAt =
        DateTime.fromMillisecondsSinceEpoch(1000 * oAuthCredentials!.createdAt)
            .add(Duration(days: 90));

    if (now.isAfter(expiresAt)) {
      if (now.isAfter(refreshExpiresAt)) {
        initialized = false;
        return PlanningCenterApiError.messageOnly(
            'Must Fully Reauthorize: refresh token has expired.');
      } else {
        // attempt to refresh the token
        var uri = Uri.parse(tokenEndpoint);
        var jsonString = json.encode({
          'client_id': clientId,
          'client_secret': clientSecret,
          'refresh_token': oAuthCredentials!.refreshToken,
          'grant_type': 'refresh_token',
        });
        var res = await _client.post(uri,
            headers: {'Content-Type': 'application/json'}, body: jsonString);
        if (res.statusCode == 200) {
          oAuthCredentials =
              PlanningCenterCredentials.fromJson(json.decode(res.body));
        } else {
          initialized = false;
          return PlanningCenterApiError(
            'Must Reauthorize: error while refreshing token',
            'auth',
            uri,
            jsonString,
            PlanningCenterApiQuery(),
            res.statusCode,
            res.body,
          );
        }
      }
    }
    _authHeaders['Authorization'] = 'Bearer ${oAuthCredentials!.accessToken}';
    return null;
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
  /// the optional operator can be one of `gt`,`gte`,`lt`,`lte` for greater than, etc.
  /// The [PlanningCenterApiQuery] object provides abstractions for this.
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
  Future<PlanningCenterApiResponse> call(
    String endpoint, {
    String verb = 'get',
    Object? data,
    PlanningCenterApiQuery? query,
    String apiVersion = '',
  }) async {
    if (endpoint.startsWith(mainEndpoint))
      endpoint = endpoint.replaceFirst(mainEndpoint, '');

    var application = endpoint.split('/')[1];

    // ensure query defaults
    query ??= PlanningCenterApiQuery();

    // fix params to be the correct type
    var params = <String, String>{};
    query.asMap.forEach((k, v) => params[k.toString()] = v.toString());

    // if we are using app secret authentication, it will be embedded in the _baseUri.authority
    var uri = Uri.https(_baseUri.authority, _baseUri.path + endpoint, params);
    var headers = <String, String>{};
    if (apiVersion.isNotEmpty) headers['X-PCO-API-Version'] = apiVersion;

    String jsonString = '';
    if (data != null && verb != 'get') {
      headers['Content-Type'] = 'application/json';
      if (data is String) {
        jsonString = data;
      } else if (data is PlanningCenterApiData) {
        jsonString = json.encode(data.asMapWithData);
      } else {
        jsonString = json.encode(data);
      }
    }

    await apiCanCall;
    apiCanCall = Future.delayed(Duration(milliseconds: apiInterval));

    var authFailure = await _checkCredentials();
    if (authFailure != null) return authFailure;

    headers.addAll(_authHeaders);

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
        return PlanningCenterApiError('Unsupported http verb', application, uri,
            jsonString, query, 400, '');
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

  /// Handle Uploads
  Future<PlanningCenterApiResponse> upload(String filename) async {
    // if we are using app secret authentication, it will be embedded in the _uploadsUri
    // if not, we try to populate the _authHeaders
    var authFailure = await _checkCredentials();
    if (authFailure != null) return authFailure;

    var request = http.MultipartRequest('POST', _uploadsUri);
    var fileBytes = File(filename).readAsBytesSync();
    var fileToPost = http.MultipartFile.fromBytes('file', fileBytes);
    request.files.add(fileToPost);
    request.headers.addAll(_authHeaders);
    var res = await http.Response.fromStream(await request.send());
    if (res.statusCode >= 200 && res.statusCode < 300) {
      var retval = PlanningCenterApiResponse.fromResponse(
        '-upload-',
        PlanningCenterApiQuery(),
        '',
        res,
      );
      return retval;
    }
    return PlanningCenterApiError(
      'UPLOAD Failed',
      '-upload-',
      _uploadsUri,
      '',
      PlanningCenterApiQuery(),
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
  /// [order] can usually be one of created_at, updated_at, title, sort_date, but may be others.
  ///
  /// Each class has a static field named `canOrderBy` that indicates which fields may be used.
  /// Order fields are also described in the class documentation.
  ///
  /// Prefix with a hyphen (`-`) to reverse the sort order.
  String? order;

  /// [where] should be a map of query parameters.
  ///
  /// Each class has a static field named `canQuery` with the list of fields that can be queried.
  /// Queryable fields are also described in the class documentation.
  ///
  /// The PlanningCenter API supports url params like this:
  /// - `?where[field_name]=value`
  /// - `?where[field_name][gt|lt|gte|lte]=value`
  ///
  /// However, this library uses a different format for the where component of a query.
  /// Use the queryable field name as a key and append a comparison suffix (`=`, `<`, `>`).
  ///
  /// The [where] map will be converted to url parameters like the following:
  ///
  /// - `{ 'created_at<': '2022-01-01' }`  -> `?where[created_at][lt]=2022-01-01`   (finds items before that date)
  /// - `{ 'created_at>=': '2022-01-01' }` -> `?where[created_at][gte]=2022-01-01`  (finds items on or after that date)
  /// - `{ 'created_at=': '2022-01-01' }`  -> `?where[created_at]=2022-01-01`       (finds items on that date)
  /// - `{ 'created_at':  '2022-01-01' }`  -> same as using `=`
  Map<String, String> where;

  /// [filter] should be something like `future`, `past`, `after`, `before`, `no_dates`
  ///
  /// Classes and methods that can accept a `filter` in their API calls will specify
  /// those filters in the documentation for that specific class or method. See
  /// [PcoServicesPlan.getFromServiceType()] for an example.
  ///
  /// Note: some filters require additional data that can be supplied with
  /// the [extraParams] property.
  Set<String> filter = {};

  /// [extraParams] allows you to specify arbitrary url parameters to the API.
  ///
  /// This is important because some filters require additional information
  /// (e.g. [PcoServicesPlan.getFromServiceType()] supports `after` as a filter
  /// but then requires an `after` parameter supplying a date string)
  Map<String, String> extraParams;

  /// [include] specifies which related items should be included.
  ///
  /// Each class has a static variable called `canInclude` that lists
  /// what can be included here, and each class also describes the possible
  /// includes in its class documentation.
  Set<String> include = {};

  /// Pagination defaults to 25, maximum allowed seems to be 100
  final int perPage;
  int pageOffset;

  PlanningCenterApiQuery({
    Set<String> filter = const <String>{},
    Set<String> include = const <String>{},
    this.perPage = 25,
    this.pageOffset = 0,
    this.order,
    this.where = const {},
    this.extraParams = const {},
  }) {
    this.filter.addAll(filter);
    this.include.addAll(include);
  }

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
    // the comparison suffix can be `>`, `<`, `=`, `<=`, `>=`
    final regex = RegExp(r'([^=<>]+)(.*)$');
    where.forEach((key, value) {
      // sanity check
      if (key.isEmpty) return;
      var suffix = '';
      var m = regex.matchAsPrefix(key);
      if (m != null) {
        key = m.group(1)!;
        switch (m.group(2)!) {
          case '<':
            suffix = '[lt]';
            break;
          case '>':
            suffix = '[gt]';
            break;
          case '<=':
            suffix = '[lte]';
            break;
          case '>=':
            suffix = '[gte]';
            break;
          case '=':
          default:
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
      filter: Set.from(filter),
      include: Set.from(include),
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
  final String message;
  PlanningCenterApiError.messageOnly(this.message)
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
    this.message,
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
      super.toJson(includeRawResponseBody: includeRawResponseBody)
        ..addAll({'message': message});

  @override
  String toString() {
    return 'PCOERROR: $statusCode, $message\nURI: $requestUri\n\nRESPONSE: $responseBody\n\nREQUEST: ${json.encode(requestBody)}\n\n';
  }
}

/// encapsulates the JSON:API response...
/// the [rawData] field holds contents of the data field in the response
/// but is always coerced to a list even if it was an object in the
/// original response
class PlanningCenterApiResponse<T extends PlanningCenterApiData> {
  bool get isError => this is PlanningCenterApiError;
  PlanningCenterApiError? get error =>
      isError ? (this as PlanningCenterApiError) : null;
  String get errorMessage => error?.message ?? '';

  // request items
  final String application;
  final PlanningCenterApiQuery query;
  final Uri requestUri;
  final String requestBody;

  // http response details
  final int statusCode;
  final String responseBody;

  // JSON:API / PCO raw content
  final List<T> data;
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
    // handle 'NO-CONTENT' (like DELETE) responses
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

    PlanningCenterApiMeta meta =
        PlanningCenterApiMeta.fromJson(body['meta'] ?? <String, dynamic>{});
    Map<String, dynamic> links = ((body['links'] ?? {}) as Map)
        .map((key, value) => MapEntry(key.toString(), value));

    // Process the raw data into List<PcoData>
    List<T> data = [];
    var rawData = body['data'] ?? [];
    if (rawData is! List) rawData = [rawData];
    for (var item in rawData) {
      data.add(PlanningCenterApiData.fromJson(item) as T);
      // data.add((item as Map).map((key, value) => MapEntry(key.toString(), value)));
    }

    // coerce the type of includes to List<Map<String, dynamic>>
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
      data,
      meta,
      links,
      included,
    );
  }

  /// Cretes a clone of this object replacing the data field.
  /// This is only really useful when you want to change the type of the underlying
  /// data. Note: this might make [data] lose similarity to the [responseBody].
  PlanningCenterApiResponse<F> withData<F extends PlanningCenterApiData>(
      List<F> data) {
    return PlanningCenterApiResponse<F>(
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
    );
  }
}

/// simple wrapper for JSON:API data that doesn't make sense as a full PcoResource
class PlanningCenterApiData {
  String type = '';
  String? id = '';

  final Map<String, dynamic> attributes;
  final Map<String, dynamic> relationships;
  final Map<String, dynamic> links;

  Map<String, dynamic> get asMap => {
        'type': type,
        if (id != null) 'id': id,
        'attributes': attributes,
        if (relationships.isNotEmpty) 'relationships': relationships,
        if (links.isNotEmpty) 'links': links,
      };
  Map<String, dynamic> get asFullMap => {
        'type': type,
        if (id != null) 'id': id,
        'attributes': attributes,
        'relationships': relationships,
        'links': links,
      };
  Map<String, dynamic> get asMapWithData => {'data': asMap};
  Map<String, dynamic> get asFullMapWithData => {'data': asFullMap};

  Map<String, dynamic> toJson() => asMap;

  dynamic get(String key) => attributes[key];
  void set(String key, dynamic val) => attributes[key] = val;

  PlanningCenterApiData(
    this.type, {
    this.id,
    this.attributes = const {},
    this.relationships = const {},
    this.links = const {},
  });
  PlanningCenterApiData.fromJson(Map<String, dynamic> data)
      : type = data['type'] ?? 'unknown',
        id = data['id'],
        attributes = data['attributes'] ?? {},
        relationships = data['relationships'] ?? {},
        links = data['links'] ?? {};
}
