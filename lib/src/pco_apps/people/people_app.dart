/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:37.990875
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `name` -> `?order=name`
/// - `url` -> `?order=url`
enum PcoPeopleAppOrder { name, url }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleAppFilter { none }

/// Creates a [PcoPeopleAppQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleApp] objects can be requested with one or more of the following criteria:
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `whereUrl`: query on a specific url, example: ?where[url]=string
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoPeopleAppOrder.name` : will order by `name`
/// - `PcoPeopleAppOrder.url` : will order by `url`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleAppQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleAppOrder, String> _orderMap = {
    PcoPeopleAppOrder.name: 'name',
    PcoPeopleAppOrder.url: 'url',
  };
  static String orderString(PcoPeopleAppOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleAppFilter, String> _filterMap = {};
  static String filterString(PcoPeopleAppFilter filter) => _filterMap[filter]!;

  PcoPeopleAppQuery({
    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,

    /// Query by `url`
    /// query on a specific url, url example: ?where[url]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUrl,
    PcoPeopleAppOrder? orderBy,

    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super() {
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (whereUrl != null)
      where.add(PlanningCenterApiWhere.parse('url', whereUrl));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People App Object
///
/// - Application:        people
/// - Id:                 app
/// - Type:               App
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/apps
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleApp.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
///
/// ## Description
/// An app is one of the handful of apps that Planning Center offers that organizations can subscribe to, e.g. Services, Registrations, etc.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `url` (ro) -> PCO: `url`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `app-messagegroup-app`: https://api.planningcenteronline.com/people/v2/message_groups/1/app
/// - `app-organization-apps`: https://api.planningcenteronline.com/people/v2/apps
/// - `app-personapp-app`: https://api.planningcenteronline.com/people/v2/people/1/person_apps/1/app
/// - `app-person-apps`: https://api.planningcenteronline.com/people/v2/people/1/apps
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "App",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "url": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeopleApp extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'App';
  static const String kTypeId = 'app';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/apps';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `url`: (URLParameter), query on a specific url, example: ?where[url]=string
  static List<String> get canQuery => ['name', 'url'];

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `url`: (URLParameter), prefix with a hyphen (-url) to reverse the order
  static List<String> get canOrderBy => ['name', 'url'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get createPathTemplate => kCreatePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kName = 'name';
  static const kUrl = 'url';

  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  String get url => _attributes[kUrl] ?? '';

  // Class Constructors
  PcoPeopleApp.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleApp.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleApp] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeopleApp(
      {String? id,
      String? name,
      String? url,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleApp.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
    if (url != null) obj._attributes['url'] = url;

    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }

    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }

    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a [PcoCollection] of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `/people/v2/apps`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleApp>> get({
    String? id,
    PcoPeopleAppQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoPeopleAppQuery();
    if (getAll) query.getAll = true;

    var url = '/people/v2/apps';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleApp] object
  /// using a path like this: `/people/v2/apps/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleApp?> getSingle(
    String id, {
    PcoPeopleAppQuery? query,
  }) async {
    query ??= PcoPeopleAppQuery();

    var url = '/people/v2/apps/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleApp>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `/people/v2/apps`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleApp>> getAll({
    String? id,
    PcoPeopleAppQuery? query,
  }) async {
    query ??= PcoPeopleAppQuery();
    query.getAll = true;

    var url = '/people/v2/apps';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `/people/v2/message_groups/$messageGroupId/app`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleApp>> getFromMessageGroup(
    String messageGroupId, {
    String? id,
    PcoPeopleAppQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoPeopleAppQuery();
    if (getAll) query.getAll = true;

    var url = '/people/v2/message_groups/$messageGroupId/app';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleApp] object
  /// using a path like this: `/people/v2/message_groups/$messageGroupId/app/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleApp?> getSingleFromMessageGroup(
    String messageGroupId,
    String id, {
    PcoPeopleAppQuery? query,
  }) async {
    query ??= PcoPeopleAppQuery();

    var url = '/people/v2/message_groups/$messageGroupId/app/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleApp>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `/people/v2/message_groups/$messageGroupId/app`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleApp>> getAllFromMessageGroup(
    String messageGroupId, {
    String? id,
    PcoPeopleAppQuery? query,
  }) async {
    query ??= PcoPeopleAppQuery();
    query.getAll = true;

    var url = '/people/v2/message_groups/$messageGroupId/app';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/person_apps/$personAppId/app`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleApp>> getFromPersonAndPersonApp(
    String personId,
    String personAppId, {
    String? id,
    PcoPeopleAppQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoPeopleAppQuery();
    if (getAll) query.getAll = true;

    var url = '/people/v2/people/$personId/person_apps/$personAppId/app';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleApp] object
  /// using a path like this: `/people/v2/people/$personId/person_apps/$personAppId/app/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleApp?> getSingleFromPersonAndPersonApp(
    String personId,
    String personAppId,
    String id, {
    PcoPeopleAppQuery? query,
  }) async {
    query ??= PcoPeopleAppQuery();

    var url = '/people/v2/people/$personId/person_apps/$personAppId/app/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleApp>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/person_apps/$personAppId/app`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleApp>> getAllFromPersonAndPersonApp(
    String personId,
    String personAppId, {
    String? id,
    PcoPeopleAppQuery? query,
  }) async {
    query ??= PcoPeopleAppQuery();
    query.getAll = true;

    var url = '/people/v2/people/$personId/person_apps/$personAppId/app';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/apps`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleApp>> getFromPerson(
    String personId, {
    String? id,
    PcoPeopleAppQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoPeopleAppQuery();
    if (getAll) query.getAll = true;

    var url = '/people/v2/people/$personId/apps';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleApp] object
  /// using a path like this: `/people/v2/people/$personId/apps/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleApp?> getSingleFromPerson(
    String personId,
    String id, {
    PcoPeopleAppQuery? query,
  }) async {
    query ??= PcoPeopleAppQuery();

    var url = '/people/v2/people/$personId/apps/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleApp>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/apps`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleApp>> getAllFromPerson(
    String personId, {
    String? id,
    PcoPeopleAppQuery? query,
  }) async {
    query ??= PcoPeopleAppQuery();
    query.getAll = true;

    var url = '/people/v2/people/$personId/apps';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
