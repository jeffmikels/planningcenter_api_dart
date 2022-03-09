/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:47.930815
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services PlanPerson Object
/// 
/// - Application:        services
/// - Id:                 plan_person
/// - Type:               PlanPerson
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/plan_people
/// 
/// Description:
/// A person scheduled within a specific plan.
/// 
/// Example:
/// ```json
/// {
///   "type": "PlanPerson",
///   "id": "1",
///   "attributes": {
///     "status": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "notes": "string",
///     "decline_reason": "string",
///     "name": "string",
///     "notification_changed_by_name": "string",
///     "notification_sender_name": "string",
///     "team_position_name": "string",
///     "photo_thumbnail": "string",
///     "status_updated_at": "2000-01-01T12:00:00Z",
///     "notification_changed_at": "2000-01-01T12:00:00Z",
///     "notification_prepared_at": "2000-01-01T12:00:00Z",
///     "notification_read_at": "2000-01-01T12:00:00Z",
///     "notification_sent_at": "2000-01-01T12:00:00Z",
///     "prepare_notification": true,
///     "can_accept_partial": true
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "scheduled_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     },
///     "team": {
///       "data": {
///         "type": "Team",
///         "id": "1"
///       }
///     },
///     "responds_to": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "times": {
///       "data": [
///         {
///           "type": "PlanTime",
///           "id": "1"
///         }
///       ]
///     },
///     "service_times": {
///       "data": [
///         {
///           "type": "PlanTime",
///           "id": "1"
///         }
///       ]
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
/// 
/// Possible includes with parameter ?include=a,b
/// - declined_plan_times: include associated declined_plan_times 
/// - person: include associated person 
/// - plan: include associated plan 
/// - team: include associated team 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `plantime-planperson-declined_plan_times`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/declined_plan_times
/// - `person-planperson-person`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/person
/// - `plan-planperson-plan`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan
/// - `planpersontime-planperson-plan_person_times`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times
/// - `plantime-planperson-plan_times`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_times
/// - `team-planperson-team`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/team
/// 
/// All Inbound Edges:
/// - `planperson-person-plan_people`: https://api.planningcenteronline.com/services/v2/people/1/plan_people
/// - `planperson-plan-team_members`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/team_members
/// - `planperson-team-plan_people`: https://api.planningcenteronline.com/services/v2/teams/1/plan_people
/// 
/// All Actions:
/// NONE
///
class PcoServicesPlanPerson extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PlanPerson';
  static const String kTypeId = 'plan_person';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'planperson-team-plan_people';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/teams/1/plan_people';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/plan_people';

  /// possible includes with parameter ?include=a,b
  /// - `declined_plan_times`: include associated declined_plan_times 
  /// - `person`: include associated person 
  /// - `plan`: include associated plan 
  /// - `team`: include associated team 
  static List<String> get canInclude => ['declined_plan_times','person','plan','team'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

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
  static const kStatus = 'status';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kNotes = 'notes';
  static const kDeclineReason = 'decline_reason';
  static const kName = 'name';
  static const kNotificationChangedByName = 'notification_changed_by_name';
  static const kNotificationSenderName = 'notification_sender_name';
  static const kTeamPositionName = 'team_position_name';
  static const kPhotoThumbnail = 'photo_thumbnail';
  static const kStatusUpdatedAt = 'status_updated_at';
  static const kNotificationChangedAt = 'notification_changed_at';
  static const kNotificationPreparedAt = 'notification_prepared_at';
  static const kNotificationReadAt = 'notification_read_at';
  static const kNotificationSentAt = 'notification_sent_at';
  static const kPrepareNotification = 'prepare_notification';
  static const kCanAcceptPartial = 'can_accept_partial';
  static const kPersonId = 'person_id';
  static const kRespondsToId = 'responds_to_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['person_id','status','decline_reason','notes','team_position_name','responds_to_id','prepare_notification','notification_prepared_at'];

  @override
  List<String> get updateAllowed => ['person_id','status','decline_reason','notes','team_position_name','responds_to_id','prepare_notification','notification_prepared_at'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get status => attributes[kStatus] ?? '';
  String get notes => attributes[kNotes] ?? '';
  String get declineReason => attributes[kDeclineReason] ?? '';
  String get name => attributes[kName] ?? '';
  String get notificationChangedByName => attributes[kNotificationChangedByName] ?? '';
  String get notificationSenderName => attributes[kNotificationSenderName] ?? '';
  String get teamPositionName => attributes[kTeamPositionName] ?? '';
  String get photoThumbnail => attributes[kPhotoThumbnail] ?? '';
  DateTime get statusUpdatedAt => DateTime.parse(attributes[kStatusUpdatedAt] ?? '');
  DateTime get notificationChangedAt => DateTime.parse(attributes[kNotificationChangedAt] ?? '');
  DateTime get notificationPreparedAt => DateTime.parse(attributes[kNotificationPreparedAt] ?? '');
  DateTime get notificationReadAt => DateTime.parse(attributes[kNotificationReadAt] ?? '');
  DateTime get notificationSentAt => DateTime.parse(attributes[kNotificationSentAt] ?? '');
  bool get isPrepareNotification => attributes[kPrepareNotification] == true;
  bool get isCanAcceptPartial => attributes[kCanAcceptPartial] == true;
  

  // setters for object attributes

  
  /// Accepts one of 'C', 'U', 'D', or 'Confirmed', 'Unconfirmed', or 'Declined'
  set status(String s) => attributes[kStatus] = s;
  set notes(String s) => attributes[kNotes] = s;
  set declineReason(String s) => attributes[kDeclineReason] = s;
  set teamPositionName(String s) => attributes[kTeamPositionName] = s;
  set notificationPreparedAt(DateTime d) => attributes[kNotificationPreparedAt] = d.toIso8601String();
  set isPrepareNotification(bool b) => attributes[kPrepareNotification] = b;
  

  // additional setters and getters for assignable values

  String get personId => attributes[kPersonId] ?? '';
  set personId(String s) => attributes[kPersonId] = s;
  String get respondsToId => attributes[kRespondsToId] ?? '';
  set respondsToId(String s) => attributes[kRespondsToId] = s;
  



  // Class Constructors
  PcoServicesPlanPerson._() : super(kPcoApplication, kTypeString);
  PcoServicesPlanPerson.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoServicesPlanPerson] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/people/$peopleId/plan_people`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesPlanPerson(String peopleId) {
    return PcoServicesPlanPerson._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/people/$peopleId/plan_people';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesPlanPerson] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/plan_people`
  static Future<PcoCollection<PcoServicesPlanPerson>> getPlanPeopleFromPeople(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanPerson.canInclude;
    var url = '/services/v2/people/$peopleId/plan_people';
    
    return PcoCollection.fromApiCall<PcoServicesPlanPerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPlanPerson] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/team_members`
  /// 
  /// Available Query Filters:
  /// - `confirmed`
  /// - `not_archived`
  /// - `not_deleted`
  static Future<PcoCollection<PcoServicesPlanPerson>> getTeamMembersFromServiceTypeAndPlan(String serviceTypeId,String planId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanPerson.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/team_members';
    
    return PcoCollection.fromApiCall<PcoServicesPlanPerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPlanPerson] objects (expecting one)
  /// using a path like this: `/services/v2/teams/$teamId/plan_people`
  static Future<PcoCollection<PcoServicesPlanPerson>> getPlanPeopleFromTeam(String teamId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanPerson.canInclude;
    var url = '/services/v2/teams/$teamId/plan_people';
    
    return PcoCollection.fromApiCall<PcoServicesPlanPerson>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/declined_plan_times`
  Future<PcoCollection<PcoServicesPlanTime>> getDeclinedPlanTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    var url = '$apiEndpoint/declined_plan_times';
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/person`
  Future<PcoCollection<PcoServicesPerson>> getPerson({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan`
  Future<PcoCollection<PcoServicesPlan>> getPlan({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '$apiEndpoint/plan';
    return PcoCollection.fromApiCall<PcoServicesPlan>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanPersonTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times`
  Future<PcoCollection<PcoServicesPlanPersonTime>> getPlanPersonTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanPersonTime.canInclude;
    var url = '$apiEndpoint/plan_person_times';
    return PcoCollection.fromApiCall<PcoServicesPlanPersonTime>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_times`
  Future<PcoCollection<PcoServicesPlanTime>> getPlanTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    var url = '$apiEndpoint/plan_times';
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/team`
  Future<PcoCollection<PcoServicesTeam>> getTeam({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '$apiEndpoint/team';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
