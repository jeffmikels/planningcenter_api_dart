/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T13:08:21.611919
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services SongSchedule Object
/// 
/// - Application:        services
/// - Id:                 song_schedule
/// - Type:               SongSchedule
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/song_schedules
/// 
/// Description:
/// A upcoming schedule for a song
/// 
/// Attributes:
/// - `id` (ro) -> PCO: `id`
/// - `arrangementName` (ro) -> PCO: `arrangement_name`
/// - `keyName` (ro) -> PCO: `key_name`
/// - `planDates` (ro) -> PCO: `plan_dates`
/// - `serviceTypeName` (ro) -> PCO: `service_type_name`
/// - `planSortDate` (ro) -> PCO: `plan_sort_date`
/// 
/// Example:
/// ```json
/// {
///   "type": "SongSchedule",
///   "id": "1",
///   "attributes": {
///     "arrangement_name": "string",
///     "key_name": "string",
///     "plan_dates": "string",
///     "service_type_name": "string",
///     "plan_sort_date": "string"
///   },
///   "relationships": {
///     "arrangement": {
///       "data": {
///         "type": "Arrangement",
///         "id": "1"
///       }
///     },
///     "key": {
///       "data": {
///         "type": "Key",
///         "id": "1"
///       }
///     },
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
///     },
///     "item": {
///       "data": {
///         "type": "Item",
///         "id": "1"
///       }
///     }
///   }
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
/// - `plan_sort_date`: (URLParameter), prefix with a hyphen (-plan_sort_date) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `songschedule-song-song_schedules`: https://api.planningcenteronline.com/services/v2/songs/1/song_schedules
/// 
/// All Actions:
/// NONE
///
class PcoServicesSongSchedule extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SongSchedule';
  static const String kTypeId = 'song_schedule';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'songschedule-song-song_schedules';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/song_schedules';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/song_schedules';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `plan_sort_date`: (URLParameter), prefix with a hyphen (-plan_sort_date) to reverse the order
  static List<String> get canOrderBy => ['plan_sort_date'];

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
  static const kArrangementName = 'arrangement_name';
  static const kKeyName = 'key_name';
  static const kPlanDates = 'plan_dates';
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

  String get arrangementName => attributes[kArrangementName] ?? '';
  String get keyName => attributes[kKeyName] ?? '';
  String get planDates => attributes[kPlanDates] ?? '';
  String get serviceTypeName => attributes[kServiceTypeName] ?? '';
  String get planSortDate => attributes[kPlanSortDate] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesSongSchedule._() : super(kPcoApplication, kTypeString);
  PcoServicesSongSchedule.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesSongSchedule] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/song_schedules`
  /// 
  /// Available Query Filters:
  /// - `three_most_recent`
  static Future<PcoCollection<PcoServicesSongSchedule>> getFromSong(String songId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSongSchedule.canInclude;
    var url = '/services/v2/songs/$songId/song_schedules';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSongSchedule>(url, query: query, apiVersion:kApiVersion);
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
