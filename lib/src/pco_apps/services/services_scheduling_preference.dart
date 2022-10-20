/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:11.968113
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesSchedulingPreferenceOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesSchedulingPreferenceFilter { none }

/// Creates a [PcoServicesSchedulingPreferenceQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesSchedulingPreferenceQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesSchedulingPreferenceOrder, String> _orderMap = {};
  static String orderString(PcoServicesSchedulingPreferenceOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesSchedulingPreferenceFilter, String> _filterMap =
      {};
  static String filterString(PcoServicesSchedulingPreferenceFilter filter) =>
      _filterMap[filter]!;

  PcoServicesSchedulingPreferenceQuery({
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

/// This class represents a PCO Services SchedulingPreference Object
///
/// - Application:        services
/// - Id:                 scheduling_preference
/// - Type:               SchedulingPreference
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/scheduling_preferences
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesSchedulingPreference.fromJson()` constructor.
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
/// Household member scheduling preference
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `preference` (ro) -> PCO: `preference`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `schedulingpreference-person-scheduling_preferences`: https://api.planningcenteronline.com/services/v2/people/1/scheduling_preferences
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "SchedulingPreference",
///   "id": "1",
///   "attributes": {
///     "preference": "string"
///   },
///   "relationships": {
///     "household_member": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesSchedulingPreference extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SchedulingPreference';
  static const String kTypeId = 'scheduling_preference';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/scheduling_preferences';
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
  static const kPreference = 'preference';

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
  String get preference => _attributes[kPreference] ?? '';

  // Class Constructors
  PcoServicesSchedulingPreference.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesSchedulingPreference.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesSchedulingPreference] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesSchedulingPreference(
      {String? id,
      String? preference,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesSchedulingPreference.empty();
    obj._id = id;
    if (preference != null) obj._attributes['preference'] = preference;

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

  /// Will get a collection of [PcoServicesSchedulingPreference] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/scheduling_preferences`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesSchedulingPreference>> getFromPerson(
    String personId, {
    String? id,
    PcoServicesSchedulingPreferenceQuery? query,
  }) async {
    query ??= PcoServicesSchedulingPreferenceQuery();

    var url = '/services/v2/people/$personId/scheduling_preferences';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSchedulingPreference>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
