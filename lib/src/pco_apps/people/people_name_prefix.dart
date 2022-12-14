/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:38.005221
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `value` -> `?order=value`
enum PcoPeopleNamePrefixOrder { value }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleNamePrefixFilter { none }

/// Creates a [PcoPeopleNamePrefixQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleNamePrefix] objects can be requested with one or more of the following criteria:
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
/// - `PcoPeopleNamePrefixOrder.value` : will order by `value`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleNamePrefixQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleNamePrefixOrder, String> _orderMap = {
    PcoPeopleNamePrefixOrder.value: 'value',
  };
  static String orderString(PcoPeopleNamePrefixOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleNamePrefixFilter, String> _filterMap = {};
  static String filterString(PcoPeopleNamePrefixFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleNamePrefixQuery({
    /// Query by `value`
    /// query on a specific value, url example: ?where[value]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereValue,
    PcoPeopleNamePrefixOrder? orderBy,

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

/// This class represents a PCO People NamePrefix Object
///
/// - Application:        people
/// - Id:                 name_prefix
/// - Type:               NamePrefix
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/name_prefixes
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/name_prefixes
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleNamePrefix()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleNamePrefix.fromJson()` constructor.
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
/// A name prefix is one of Mr., Mrs., etc.
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
/// - `nameprefix-organization-name_prefixes`: https://api.planningcenteronline.com/people/v2/name_prefixes
/// - `nameprefix-person-name_prefix`: https://api.planningcenteronline.com/people/v2/people/1/name_prefix
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "NamePrefix",
///   "id": "1",
///   "attributes": {
///     "value": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeopleNamePrefix extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'NamePrefix';
  static const String kTypeId = 'name_prefix';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/name_prefixes';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/name_prefixes';

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
  String get value => _attributes[kValue] ?? '';

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set value(String? x) =>
      (x == null) ? _attributes.remove(kValue) : _attributes[kValue] = x;

  // Class Constructors
  PcoPeopleNamePrefix.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleNamePrefix.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleNamePrefix] object using this endpoint: `https://api.planningcenteronline.com/people/v2/name_prefixes`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `value`
  /// - FIELDS USED WHEN UPDATING: `value`
  factory PcoPeopleNamePrefix(
      {String? id,
      String? value,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleNamePrefix.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/name_prefixes';
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

  /// Will get a [PcoCollection] of [PcoPeopleNamePrefix] objects (expecting many)
  /// using a path like this: `/people/v2/name_prefixes`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleNamePrefix>> get({
    String? id,
    PcoPeopleNamePrefixQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoPeopleNamePrefixQuery();
    if (getAll) query.getAll = true;

    var url = '/people/v2/name_prefixes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleNamePrefix] object
  /// using a path like this: `/people/v2/name_prefixes/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleNamePrefix?> getSingle(
    String id, {
    PcoPeopleNamePrefixQuery? query,
  }) async {
    query ??= PcoPeopleNamePrefixQuery();

    var url = '/people/v2/name_prefixes/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleNamePrefix] objects (expecting many)
  /// using a path like this: `/people/v2/name_prefixes`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleNamePrefix>> getAll({
    String? id,
    PcoPeopleNamePrefixQuery? query,
  }) async {
    query ??= PcoPeopleNamePrefixQuery();
    query.getAll = true;

    var url = '/people/v2/name_prefixes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleNamePrefix] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/name_prefix`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleNamePrefix>> getFromPerson(
    String personId, {
    String? id,
    PcoPeopleNamePrefixQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoPeopleNamePrefixQuery();
    if (getAll) query.getAll = true;

    var url = '/people/v2/people/$personId/name_prefix';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleNamePrefix] object
  /// using a path like this: `/people/v2/people/$personId/name_prefix/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleNamePrefix?> getSingleFromPerson(
    String personId,
    String id, {
    PcoPeopleNamePrefixQuery? query,
  }) async {
    query ??= PcoPeopleNamePrefixQuery();

    var url = '/people/v2/people/$personId/name_prefix/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleNamePrefix] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/name_prefix`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleNamePrefix>> getAllFromPerson(
    String personId, {
    String? id,
    PcoPeopleNamePrefixQuery? query,
  }) async {
    query ??= PcoPeopleNamePrefixQuery();
    query.getAll = true;

    var url = '/people/v2/people/$personId/name_prefix';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
