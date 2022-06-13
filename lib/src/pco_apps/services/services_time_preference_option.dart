/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.631208
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Services TimePreferenceOption Object
///
/// - Application:        services
/// - Id:                 time_preference_option
/// - Type:               TimePreferenceOption
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options
/// - Create Endpoint:    NONE
///
/// ## Description
/// A Service Time a person prefers to be scheduled to.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `dayOfWeek` (ro) -> PCO: `day_of_week`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `description` (ro) -> PCO: `description`
/// - `sortIndex` (ro) -> PCO: `sort_index`
/// - `timeType` (ro) -> PCO: `time_type`
/// - `minuteOfDay` (ro) -> PCO: `minute_of_day`
/// - `startsAt` (ro) -> PCO: `starts_at`
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
/// - `day_of_week`: (URLParameter), prefix with a hyphen (-day_of_week) to reverse the order
/// - `hour_of_day`: (URLParameter), prefix with a hyphen (-hour_of_day) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `timepreferenceoption-servicetype-time_preference_options`: https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "TimePreferenceOption",
///   "id": "1",
///   "attributes": {
///     "day_of_week": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "description": "string",
///     "sort_index": "string",
///     "time_type": "string",
///     "minute_of_day": 1,
///     "starts_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoServicesTimePreferenceOption extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'TimePreferenceOption';
  static const String kTypeId = 'time_preference_option';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `day_of_week`: (URLParameter), prefix with a hyphen (-day_of_week) to reverse the order
  /// - `hour_of_day`: (URLParameter), prefix with a hyphen (-hour_of_day) to reverse the order
  static List<String> get canOrderBy => ['day_of_week', 'hour_of_day'];

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
  static const kDayOfWeek = 'day_of_week';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kDescription = 'description';
  static const kSortIndex = 'sort_index';
  static const kTimeType = 'time_type';
  static const kMinuteOfDay = 'minute_of_day';
  static const kStartsAt = 'starts_at';

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
  int get dayOfWeek => attributes[kDayOfWeek] ?? 0;
  String get description => attributes[kDescription] ?? '';
  String get sortIndex => attributes[kSortIndex] ?? '';
  String get timeType => attributes[kTimeType] ?? '';
  int get minuteOfDay => attributes[kMinuteOfDay] ?? 0;
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  // Class Constructors
  PcoServicesTimePreferenceOption.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesTimePreferenceOption.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesTimePreferenceOption] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/time_preference_options`
  static Future<PcoCollection<PcoServicesTimePreferenceOption>>
      getFromServiceType(String serviceTypeId,
          {String? id,
          PlanningCenterApiQuery? query,
          bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTimePreferenceOption.canInclude;
    var url =
        '/services/v2/service_types/$serviceTypeId/time_preference_options';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTimePreferenceOption>(url,
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
