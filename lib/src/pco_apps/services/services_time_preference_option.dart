/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T13:08:21.645675
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
/// 
/// Description:
/// A Service Time a person prefers to be scheduled to.
/// 
/// Attributes:
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
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// - `day_of_week`: (URLParameter), prefix with a hyphen (-day_of_week) to reverse the order
/// - `hour_of_day`: (URLParameter), prefix with a hyphen (-hour_of_day) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `timepreferenceoption-servicetype-time_preference_options`: https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options
/// 
/// All Actions:
/// NONE
///
class PcoServicesTimePreferenceOption extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'TimePreferenceOption';
  static const String kTypeId = 'time_preference_option';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'timepreferenceoption-servicetype-time_preference_options';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `day_of_week`: (URLParameter), prefix with a hyphen (-day_of_week) to reverse the order
  /// - `hour_of_day`: (URLParameter), prefix with a hyphen (-hour_of_day) to reverse the order
  static List<String> get canOrderBy => ['day_of_week','hour_of_day'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesTimePreferenceOption._() : super(kPcoApplication, kTypeString);
  PcoServicesTimePreferenceOption.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesTimePreferenceOption] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/time_preference_options`
  static Future<PcoCollection<PcoServicesTimePreferenceOption>> getFromServiceType(String serviceTypeId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTimePreferenceOption.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/time_preference_options';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTimePreferenceOption>(url, query: query, apiVersion:kApiVersion);
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
