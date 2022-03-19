/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T13:06:04.899688
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
/// - Create Endpoint:    NONE
///
/// ## Description
/// A upcoming schedule for a song
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `arrangementName` (ro) -> PCO: `arrangement_name`
/// - `keyName` (ro) -> PCO: `key_name`
/// - `planDates` (ro) -> PCO: `plan_dates`
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
/// - `plan_sort_date`: (URLParameter), prefix with a hyphen (-plan_sort_date) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `songschedule-song-song_schedules`: https://api.planningcenteronline.com/services/v2/songs/1/song_schedules
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoServicesSongSchedule extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SongSchedule';
  static const String kTypeId = 'song_schedule';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/songs/1/song_schedules';
  static const String kCreatePathTemplate = 'null';

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

  // Class Constructors
  PcoServicesSongSchedule.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesSongSchedule.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesSongSchedule] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/song_schedules`
  ///
  /// Available Query Filters:
  /// - `three_most_recent`
  static Future<PcoCollection<PcoServicesSongSchedule>> getFromSong(
      String songId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSongSchedule.canInclude;
    var url = '/services/v2/songs/$songId/song_schedules';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSongSchedule>(url,
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
