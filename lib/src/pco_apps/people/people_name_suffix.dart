/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.106028
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `value` -> `?order=value`
enum PcoPeopleNameSuffixOrder { value }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleNameSuffixFilter { none }

/// Creates a [PcoPeopleNameSuffixQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleNameSuffix] objects can be requested with one or more of the following criteria:
/// - `whereValue`: query on a specific value, example: ?where[value]=string
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
/// - `PcoPeopleNameSuffixOrder.value` : will order by `value`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleNameSuffixQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleNameSuffixOrder, String> _orderMap = {
    PcoPeopleNameSuffixOrder.value: 'value',
  };
  static String orderString(PcoPeopleNameSuffixOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleNameSuffixFilter, String> _filterMap = {};
  static String filterString(PcoPeopleNameSuffixFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleNameSuffixQuery({
    /// Query by `value`
    /// query on a specific value, url example: ?where[value]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereValue,
    PcoPeopleNameSuffixOrder? orderBy,

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
    if (whereValue != null)
      where.add(PlanningCenterApiWhere.parse('value', whereValue));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People NameSuffix Object
///
/// - Application:        people
/// - Id:                 name_suffix
/// - Type:               NameSuffix
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/name_suffixes
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/name_suffixes
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleNameSuffix()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleNameSuffix.fromJson()` constructor.
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
/// A name suffix is one of Sr., Jr., etc.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `value` (rw) -> PCO: `value`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `namesuffix-organization-name_suffixes`: https://api.planningcenteronline.com/people/v2/name_suffixes
/// - `namesuffix-person-name_suffix`: https://api.planningcenteronline.com/people/v2/people/1/name_suffix
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "NameSuffix",
///   "id": "1",
///   "attributes": {
///     "value": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeopleNameSuffix extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'NameSuffix';
  static const String kTypeId = 'name_suffix';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/name_suffixes';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/name_suffixes';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
  static List<String> get canQuery => ['value'];

  /// possible orderings with parameter ?order=
  /// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
  static List<String> get canOrderBy => ['value'];

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
  static const kValue = 'value';

  // getters and setters
  @override
  List<String> get createAllowed => ['value'];

  @override
  List<String> get updateAllowed => ['value'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get value => _getAttribute<String>(kValue, '');

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set value(String? x) =>
      (x == null) ? _attributes.remove(kValue) : _attributes[kValue] = x;

  // Class Constructors
  PcoPeopleNameSuffix.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleNameSuffix.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleNameSuffix] object using this endpoint: `https://api.planningcenteronline.com/people/v2/name_suffixes`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `value`
  /// - FIELDS USED WHEN UPDATING: `value`
  factory PcoPeopleNameSuffix(
      {String? id,
      String? value,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleNameSuffix.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/name_suffixes';
    if (value != null) obj._attributes['value'] = value;

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

  /// Will get a [PcoCollection] of [PcoPeopleNameSuffix] objects (expecting many)
  /// using a path like this: `/people/v2/name_suffixes`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleNameSuffix>> get({
    String? id,
    PcoPeopleNameSuffixQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoPeopleNameSuffixQuery();
    if (getAll) query.getAll = true;

    var url = '/people/v2/name_suffixes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleNameSuffix] object
  /// using a path like this: `/people/v2/name_suffixes/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleNameSuffix?> getSingle(
    String id, {
    PcoPeopleNameSuffixQuery? query,
  }) async {
    query ??= PcoPeopleNameSuffixQuery();

    var url = '/people/v2/name_suffixes/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleNameSuffix] objects (expecting many)
  /// using a path like this: `/people/v2/name_suffixes`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleNameSuffix>> getAll({
    String? id,
    PcoPeopleNameSuffixQuery? query,
  }) async {
    query ??= PcoPeopleNameSuffixQuery();
    query.getAll = true;

    var url = '/people/v2/name_suffixes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleNameSuffix] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/name_suffix`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleNameSuffix>> getFromPerson(
    String personId, {
    String? id,
    PcoPeopleNameSuffixQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoPeopleNameSuffixQuery();
    if (getAll) query.getAll = true;

    var url = '/people/v2/people/$personId/name_suffix';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleNameSuffix] object
  /// using a path like this: `/people/v2/people/$personId/name_suffix/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleNameSuffix?> getSingleFromPerson(
    String personId,
    String id, {
    PcoPeopleNameSuffixQuery? query,
  }) async {
    query ??= PcoPeopleNameSuffixQuery();

    var url = '/people/v2/people/$personId/name_suffix/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleNameSuffix] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/name_suffix`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleNameSuffix>> getAllFromPerson(
    String personId, {
    String? id,
    PcoPeopleNameSuffixQuery? query,
  }) async {
    query ??= PcoPeopleNameSuffixQuery();
    query.getAll = true;

    var url = '/people/v2/people/$personId/name_suffix';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
