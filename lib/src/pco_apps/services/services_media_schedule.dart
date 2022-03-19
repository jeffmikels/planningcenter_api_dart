/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T13:06:04.859511
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// NONE
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// NONE
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
  String get planDates => attributes[kPlanDates] ?? '';
  String get planShortDates => attributes[kPlanShortDates] ?? '';
  String get serviceTypeName => attributes[kServiceTypeName] ?? '';
  DateTime get planSortDate => DateTime.parse(attributes[kPlanSortDate] ?? '');

  // Class Constructors
  PcoServicesMediaSchedule.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesMediaSchedule.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesMediaSchedule] objects (expecting many)
  /// using a path like this: `/services/v2/media/$mediaId/media_schedules`
  static Future<PcoCollection<PcoServicesMediaSchedule>> getFromMedia(
      String mediaId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesMediaSchedule.canInclude;
    var url = '/services/v2/media/$mediaId/media_schedules';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesMediaSchedule>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
