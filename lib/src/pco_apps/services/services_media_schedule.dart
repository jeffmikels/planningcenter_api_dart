/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T14:42:03.423751
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesMediaScheduleOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesMediaScheduleFilter { none }

/// Creates a [PcoServicesMediaScheduleQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesMediaScheduleQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesMediaScheduleOrder, String> _orderMap = {};
  static String orderString(PcoServicesMediaScheduleOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesMediaScheduleFilter, String> _filterMap = {};
  static String filterString(PcoServicesMediaScheduleFilter filter) =>
      _filterMap[filter]!;

  PcoServicesMediaScheduleQuery({
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

/// This class represents a PCO Services MediaSchedule Object
///
/// - Application:        services
/// - Id:                 media_schedule
/// - Type:               MediaSchedule
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/media/1/media_schedules
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesMediaSchedule.fromJson()` constructor.
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
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `planDates` (ro) -> PCO: `plan_dates`
/// - `planShortDates` (ro) -> PCO: `plan_short_dates`
/// - `serviceTypeName` (ro) -> PCO: `service_type_name`
/// - `planSortDate` (ro) -> PCO: `plan_sort_date`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `mediaschedule-media-media_schedules`: https://api.planningcenteronline.com/services/v2/media/1/media_schedules
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "MediaSchedule",
///   "id": "1",
///   "attributes": {
///     "plan_dates": "string",
///     "plan_short_dates": "string",
///     "service_type_name": "string",
///     "plan_sort_date": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesMediaSchedule extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'MediaSchedule';
  static const String kTypeId = 'media_schedule';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/media/1/media_schedules';
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
  static const kPlanDates = 'plan_dates';
  static const kPlanShortDates = 'plan_short_dates';
  static const kServiceTypeName = 'service_type_name';
  static const kPlanSortDate = 'plan_sort_date';

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
  String get planDates => _attributes[kPlanDates] ?? '';
  String get planShortDates => _attributes[kPlanShortDates] ?? '';
  String get serviceTypeName => _attributes[kServiceTypeName] ?? '';
  DateTime get planSortDate => DateTime.parse(_attributes[kPlanSortDate] ?? '');

  // Class Constructors
  PcoServicesMediaSchedule.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesMediaSchedule.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesMediaSchedule] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoServicesMediaSchedule(
      {String? id,
      String? planDates,
      String? planShortDates,
      String? serviceTypeName,
      DateTime? planSortDate,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesMediaSchedule.empty();
    obj._id = id;
    if (planDates != null) obj._attributes['plan_dates'] = planDates;
    if (planShortDates != null)
      obj._attributes['plan_short_dates'] = planShortDates;
    if (serviceTypeName != null)
      obj._attributes['service_type_name'] = serviceTypeName;
    if (planSortDate != null)
      obj._attributes['plan_sort_date'] = planSortDate.toIso8601String();

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

  /// Will get a collection of [PcoServicesMediaSchedule] objects (expecting many)
  /// using a path like this: `/services/v2/media/$mediaId/media_schedules`
  static Future<PcoCollection<PcoServicesMediaSchedule>> getFromMedia(
    String mediaId, {
    String? id,
    PcoServicesMediaScheduleQuery? query,
  }) async {
    query ??= PcoServicesMediaScheduleQuery();

    var url = '/services/v2/media/$mediaId/media_schedules';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesMediaSchedule>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
