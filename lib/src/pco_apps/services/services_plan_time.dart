/// This file was generated on 2022-03-04T20:00:53.390175


import '../../pco.dart';

/// This class represents a PCO Services PlanTime Object
/// 
/// - Application:        services
/// - Id:                 plan_time
/// - Type:               PlanTime
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/next_plan_time
/// 
/// Description:
/// A time in a plan.
/// 
/// Example:
/// ```json
/// {
///   "type": "PlanTime",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "time_type": 1,
///     "recorded": true,
///     "team_reminders": [],
///     "starts_at": "2000-01-01T12:00:00Z",
///     "ends_at": "2000-01-01T12:00:00Z",
///     "live_starts_at": "2000-01-01T12:00:00Z",
///     "live_ends_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "assigned_teams": {
///       "data": [
///         {
///           "type": "Team",
///           "id": "1"
///         }
///       ]
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - split_team_rehearsal_assignments: include associated split_team_rehearsal_assignments 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `time_type`: (URLParameter), query on a specific time_type, example: ?where[time_type]=1
/// 
/// Possible orderings with parameter ?order=
/// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
///
/// All Outbound Edges:
/// - `splitteamrehearsalassignment-plantime-split_team_rehearsal_assignments`: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments
/// 
/// All Inbound Edges:
/// - `plantime-neededposition-time`: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/time
/// - `plantime-planperson-declined_plan_times`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/declined_plan_times
/// - `plantime-planperson-plan_times`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_times
/// - `plantime-plan-plan_times`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/plan_times
/// - `plantime-schedule-declined_plan_times`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/declined_plan_times
/// - `plantime-schedule-plan_times`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/plan_times
/// - `plantime-servicetype-plan_times`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_times
/// 
/// All Actions:
/// NONE
///
class PcoServicesPlanTime extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PlanTime';
  static const String kTypeId = 'plan_time';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/next_plan_time';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/next_plan_time';

  /// possible includes with parameter ?include=a,b
  /// - `split_team_rehearsal_assignments`: include associated split_team_rehearsal_assignments 
  static List<String> get canInclude => ['split_team_rehearsal_assignments'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `time_type`: (URLParameter), query on a specific time_type, example: ?where[time_type]=1
  static List<String> get canQuery => ['time_type'];

  /// possible orderings with parameter ?order=
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static List<String> get canOrderBy => ['starts_at'];

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
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kName = 'name';
  static const kTimeType = 'time_type';
  static const kRecorded = 'recorded';
  static const kTeamReminders = 'team_reminders';
  static const kStartsAt = 'starts_at';
  static const kEndsAt = 'ends_at';
  static const kLiveStartsAt = 'live_starts_at';
  static const kLiveEndsAt = 'live_ends_at';


  // getters and setters
  @override
  List<String> get createAllowed => ['starts_at','ends_at','name','time_type','team_reminders'];

  @override
  List<String> get updateAllowed => ['starts_at','ends_at','name','time_type','team_reminders'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get name => attributes[kName] ?? '';
  int get timeType => attributes[kTimeType] ?? 0;
  bool get isRecorded => attributes[kRecorded] == true;
  List get teamReminders => attributes[kTeamReminders] ?? [];
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');
  DateTime get endsAt => DateTime.parse(attributes[kEndsAt] ?? '');
  DateTime get liveStartsAt => DateTime.parse(attributes[kLiveStartsAt] ?? '');
  DateTime get liveEndsAt => DateTime.parse(attributes[kLiveEndsAt] ?? '');
  

  // setters for object attributes

  set name(String s) => attributes[kName] = s;
  
  /// Possible values are:
  /// 
  /// - rehearsal
  /// 
  /// - service
  /// 
  /// - other
  set timeType(int n) => attributes[kTimeType] = n;
  
  /// A Hash that maps a Team ID to a reminder value. If nothing is specified, no reminder is set for that team. A reminder value is an integer (0-7) equal to the number of days before the selected time a reminder should be sent.
  set teamReminders(List a) => attributes[kTeamReminders] = a;
  
  /// Planned start time.
  set startsAt(DateTime d) => attributes[kStartsAt] = d.toIso8601String();
  
  /// Planned end time.
  set endsAt(DateTime d) => attributes[kEndsAt] = d.toIso8601String();
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesPlanTime() : super(kPcoApplication, kTypeString);
  PcoServicesPlanTime.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoServicesPlanTime] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/people/$peopleId/next_plan_time`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesPlanTime.create(String peopleId) {
    return PcoServicesPlanTime()
      .._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/people/$peopleId/next_plan_time';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesPlanTime] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/next_up_plans/$upPlanId/needed_positions/$neededPositionId/time`
  static Future<PcoCollection<PcoServicesPlanTime>> getTimeFromPeopleAndUpPlanAndNeededPosition(String peopleId,String upPlanId,String neededPositionId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    var url = '/services/v2/people/$peopleId/next_up_plans/$upPlanId/needed_positions/$neededPositionId/time';
    
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPlanTime] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/plan_people/$planPeopleId/declined_plan_times`
  static Future<PcoCollection<PcoServicesPlanTime>> getDeclinedPlanTimesFromPeopleAndPlanPeople(String peopleId,String planPeopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/declined_plan_times';
    
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `/services/v2/people/$peopleId/plan_people/$planPeopleId/plan_times`
  static Future<PcoCollection<PcoServicesPlanTime>> getFromPeopleAndPlanPeople(String peopleId,String planPeopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/plan_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/plan_times`
  static Future<PcoCollection<PcoServicesPlanTime>> getFromServiceTypeAndPlan(String serviceTypeId,String planId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/plan_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPlanTime] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/schedules/$scheduleId/declined_plan_times`
  static Future<PcoCollection<PcoServicesPlanTime>> getDeclinedPlanTimesFromPeopleAndSchedule(String peopleId,String scheduleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    var url = '/services/v2/people/$peopleId/schedules/$scheduleId/declined_plan_times';
    
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `/services/v2/people/$peopleId/schedules/$scheduleId/plan_times`
  static Future<PcoCollection<PcoServicesPlanTime>> getFromPeopleAndSchedule(String peopleId,String scheduleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    var url = '/services/v2/people/$peopleId/schedules/$scheduleId/plan_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plan_times`
  /// 
  /// Available Query Filters:
  /// - `future`
  /// - `named`
  /// - `past`
  static Future<PcoCollection<PcoServicesPlanTime>> getFromServiceType(String serviceTypeId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plan_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesSplitTeamRehearsalAssignment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments`
  Future<PcoCollection<PcoServicesSplitTeamRehearsalAssignment>> getSplitTeamRehearsalAssignments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSplitTeamRehearsalAssignment.canInclude;
    var url = '$apiEndpoint/split_team_rehearsal_assignments';
    return PcoCollection.fromApiCall<PcoServicesSplitTeamRehearsalAssignment>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
