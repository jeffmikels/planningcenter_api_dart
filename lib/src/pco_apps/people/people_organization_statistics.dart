/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.116244
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoPeopleOrganizationStatisticOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleOrganizationStatisticFilter { none }

/// Creates a [PcoPeopleOrganizationStatisticQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleOrganizationStatisticQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleOrganizationStatisticOrder, String> _orderMap = {};
  static String orderString(PcoPeopleOrganizationStatisticOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleOrganizationStatisticFilter, String> _filterMap =
      {};
  static String filterString(PcoPeopleOrganizationStatisticFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleOrganizationStatisticQuery({
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
  }) : super();
}

/// This class represents a PCO People OrganizationStatistics Object
///
/// - Application:        people
/// - Id:                 organization_statistics
/// - Type:               OrganizationStatistics
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/organization_statistics
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleOrganizationStatistic.fromJson()` constructor.
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
/// Returns statistics for the organization.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `organizationstatistics-organization-stats`: https://api.planningcenteronline.com/people/v2/stats
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "OrganizationStatistics",
///   "id": "1",
///   "attributes": {},
///   "relationships": {}
/// }
/// ```
class PcoPeopleOrganizationStatistic extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'OrganizationStatistics';
  static const String kTypeId = 'organization_statistics';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/organization_statistics';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  ///
  static List<String> get canOrderBy => [];

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

  // Class Constructors
  PcoPeopleOrganizationStatistic.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleOrganizationStatistic.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleOrganizationStatistic] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeopleOrganizationStatistic(
      {String? id,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleOrganizationStatistic.empty();
    obj._id = id;

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

  /// Will get a [PcoCollection] of [PcoPeopleOrganizationStatistic] objects (expecting many)
  /// using a path like this: `/people/v2/stats`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleOrganizationStatistic>> get({
    String? id,
    PcoPeopleOrganizationStatisticQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoPeopleOrganizationStatisticQuery();
    if (getAll) query.getAll = true;

    var url = '/people/v2/stats';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleOrganizationStatistic>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleOrganizationStatistic] object
  /// using a path like this: `/people/v2/stats/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleOrganizationStatistic?> getSingle(
    String id, {
    PcoPeopleOrganizationStatisticQuery? query,
  }) async {
    query ??= PcoPeopleOrganizationStatisticQuery();

    var url = '/people/v2/stats/$id';
    var retval =
        await PcoCollection.fromApiCall<PcoPeopleOrganizationStatistic>(url,
            query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleOrganizationStatistic] objects (expecting many)
  /// using a path like this: `/people/v2/stats`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleOrganizationStatistic>> getAll({
    String? id,
    PcoPeopleOrganizationStatisticQuery? query,
  }) async {
    query ??= PcoPeopleOrganizationStatisticQuery();
    query.getAll = true;

    var url = '/people/v2/stats';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleOrganizationStatistic>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
