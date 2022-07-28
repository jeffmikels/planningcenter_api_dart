/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.612310
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Services SplitTeamRehearsalAssignment Object
///
/// - Application:        services
/// - Id:                 split_team_rehearsal_assignment
/// - Type:               SplitTeamRehearsalAssignment
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments
///
/// ## Instantiation
/// - Create a new instance using the `PcoServicesSplitTeamRehearsalAssignment()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesSplitTeamRehearsalAssignment.fromJson()` constructor.
/// - Manually create an object using the `PcoServicesSplitTeamRehearsalAssignment.manual()` constructor.
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
/// For Rehearsal/Other Times, maps a Split Team to selected Time Preference Options. For example, used to assign 8am Ushers to 7:30am call time, and 11am Ushers to 10:30am call time.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `isScheduleSpecialServiceTimes` (rw) -> PCO: `schedule_special_service_times`
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
/// - `team-splitteamrehearsalassignment-team`: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments/1/team
///
/// Inbound Edges:
/// - `splitteamrehearsalassignment-plantime-split_team_rehearsal_assignments`: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "SplitTeamRehearsalAssignment",
///   "id": "1",
///   "attributes": {
///     "schedule_special_service_times": true
///   },
///   "relationships": {
///     "team": {
///       "data": {
///         "type": "Team",
///         "id": "1"
///       }
///     },
///     "time_preference_options": {
///       "data": [
///         {
///           "type": "TimePreferenceOption",
///           "id": "1"
///         }
///       ]
///     }
///   }
/// }
/// ```
class PcoServicesSplitTeamRehearsalAssignment extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SplitTeamRehearsalAssignment';
  static const String kTypeId = 'split_team_rehearsal_assignment';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments';

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
  static const kScheduleSpecialServiceTimes = 'schedule_special_service_times';

  // getters and setters
  @override
  List<String> get createAllowed => ['schedule_special_service_times'];

  @override
  List<String> get updateAllowed => ['schedule_special_service_times'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  bool get isScheduleSpecialServiceTimes =>
      _attributes[kScheduleSpecialServiceTimes] == true;

  // setters for object attributes

  /// Controls if the related rehearsal/other time is assigned when a person is scheduled to a split team service time that does not match a Time Preference Option

  /// pass `null` to remove key from attributes
  set isScheduleSpecialServiceTimes(bool? x) => (x == null)
      ? _attributes.remove(kScheduleSpecialServiceTimes)
      : _attributes[kScheduleSpecialServiceTimes] = x;

  // Class Constructors
  PcoServicesSplitTeamRehearsalAssignment.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoServicesSplitTeamRehearsalAssignment.empty()
      : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesSplitTeamRehearsalAssignment] object using this endpoint: `https://api.planningcenteronline.com/services/v2/people/$personId/next_plan_time/$planTimeId/split_team_rehearsal_assignments`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: `isScheduleSpecialServiceTimes`
  /// - FIELDS USED WHEN UPDATING: `isScheduleSpecialServiceTimes`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoServicesSplitTeamRehearsalAssignment(
      {required String personId,
      required String planTimeId,
      String? id,
      bool? isScheduleSpecialServiceTimes,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesSplitTeamRehearsalAssignment.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/people/$personId/next_plan_time/$planTimeId/split_team_rehearsal_assignments';
    if (isScheduleSpecialServiceTimes != null)
      obj._attributes['schedule_special_service_times'] =
          isScheduleSpecialServiceTimes;
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

  /// Will get a collection of [PcoServicesSplitTeamRehearsalAssignment] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/next_plan_time/$planTimeId/split_team_rehearsal_assignments`
  static Future<PcoCollection<PcoServicesSplitTeamRehearsalAssignment>>
      getFromPersonAndPlanTime(
    String personId,
    String planTimeId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url =
        '/services/v2/people/$personId/next_plan_time/$planTimeId/split_team_rehearsal_assignments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSplitTeamRehearsalAssignment>(
        url,
        query: query,
        apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments/1/team`
  Future<PcoCollection<PcoServicesTeam>> getTeam({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includePeople = false,
    bool includePersonTeamPositionAssignments = false,
    bool includeServiceType = false,
    bool includeTeamLeaders = false,
    bool includeTeamPositions = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoServicesSplitTeamRehearsalAssignment.canInclude);
    if (includePeople) query.include.add('people');
    if (includePersonTeamPositionAssignments)
      query.include.add('person_team_position_assignments');
    if (includeServiceType) query.include.add('service_type');
    if (includeTeamLeaders) query.include.add('team_leaders');
    if (includeTeamPositions) query.include.add('team_positions');
    var url = '$apiEndpoint/team';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
