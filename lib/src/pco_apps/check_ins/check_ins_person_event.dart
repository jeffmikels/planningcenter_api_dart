/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T13:08:21.823208
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO CheckIns PersonEvent Object
/// 
/// - Application:        check-ins
/// - Id:                 person_event
/// - Type:               PersonEvent
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/events/1/person_events
/// 
/// Description:
/// Counts a person's attendence for a given event.
/// 
/// Attributes:
/// - `id` (ro) -> PCO: `id`
/// - `checkInCount` (ro) -> PCO: `check_in_count`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `createdAt` (ro) -> PCO: `created_at`
/// 
/// Example:
/// ```json
/// {
///   "type": "PersonEvent",
///   "id": "1",
///   "attributes": {
///     "check_in_count": 1,
///     "updated_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - event: include associated event 
/// - first_check_in: include associated first_check_in 
/// - last_check_in: include associated last_check_in 
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `event-personevent-event`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/event
/// - `checkin-personevent-first_check_in`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/first_check_in
/// - `checkin-personevent-last_check_in`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/last_check_in
/// - `person-personevent-person`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/person
/// 
/// All Inbound Edges:
/// - `personevent-event-person_events`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events
/// - `personevent-person-person_events`: https://api.planningcenteronline.com/check-ins/v2/people/1/person_events
/// 
/// All Actions:
/// NONE
///
class PcoCheckInsPersonEvent extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'PersonEvent';
  static const String kTypeId = 'person_event';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'personevent-person-person_events';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/people/1/person_events';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/events/1/person_events';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event 
  /// - `first_check_in`: include associated first_check_in 
  /// - `last_check_in`: include associated last_check_in 
  /// - `person`: include associated person 
  static List<String> get canInclude => ['event','first_check_in','last_check_in','person'];

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
  static const kCheckInCount = 'check_in_count';
  static const kUpdatedAt = 'updated_at';
  static const kCreatedAt = 'created_at';


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

  int get checkInCount => attributes[kCheckInCount] ?? 0;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoCheckInsPersonEvent._() : super(kPcoApplication, kTypeString);
  PcoCheckInsPersonEvent.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCheckInsPersonEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/person_events`
  static Future<PcoCollection<PcoCheckInsPersonEvent>> getFromEvent(String eventId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPersonEvent.canInclude;
    var url = '/check-ins/v2/events/$eventId/person_events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPersonEvent>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCheckInsPersonEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/people/$peopleId/person_events`
  static Future<PcoCollection<PcoCheckInsPersonEvent>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPersonEvent.canInclude;
    var url = '/check-ins/v2/people/$peopleId/person_events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPersonEvent>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/event`
  Future<PcoCollection<PcoCheckInsEvent>> getEvent({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/first_check_in`
  Future<PcoCollection<PcoCheckInsCheckIn>> getFirstCheckIn({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '$apiEndpoint/first_check_in';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/last_check_in`
  Future<PcoCollection<PcoCheckInsCheckIn>> getLastCheckIn({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '$apiEndpoint/last_check_in';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/person`
  Future<PcoCollection<PcoCheckInsPerson>> getPerson({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
