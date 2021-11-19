/// This file was generated on 2021-11-19T12:10:42.298374


import '../../pco.dart';

/// This class represents a PCO CheckIns PersonEvent Object
/// 
/// Application: check-ins
/// Id:          person_event
/// Type:        PersonEvent
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// Counts a person's attendence for a given event.\n
/// 
/// Example:
/// 
/// {"type":"PersonEvent","id":"1","attributes":{"check_in_count":1,"updated_at":"2000-01-01T12:00:00Z","created_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events
/// 
/// possible includes with parameter ?include=a,b
/// @event: include associated event 
/// @first_check_in: include associated first_check_in 
/// @last_check_in: include associated last_check_in 
/// @person: include associated person 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoCheckInsPersonEvent extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'PersonEvent';
  static const String kTypeId = 'person_event';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'personevent-person-person_events';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/people/1/person_events';

  /// possible includes with parameter ?include=a,b
  /// @event: include associated event 
  /// @first_check_in: include associated first_check_in 
  /// @last_check_in: include associated last_check_in 
  /// @person: include associated person 
  static List<String> get canInclude => ['event','first_check_in','last_check_in','person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kCheckInCount = 'check_in_count';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  int get checkInCount => attributes[kCheckInCount] ?? 0;




  PcoCheckInsPersonEvent() : super(kPcoApplication, kTypeString);
  PcoCheckInsPersonEvent.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsPersonEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events;
  static Future<List<PcoCheckInsPersonEvent>> getManyFromEventAndPersonEventIds(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsPersonEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPersonEvent.canInclude;
    var url = '/check-ins/v2/events/$eventId/person_events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsPersonEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsPersonEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/person_events;
  static Future<List<PcoCheckInsPersonEvent>> getManyFromPeopleAndPersonEventIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsPersonEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPersonEvent.canInclude;
    var url = '/check-ins/v2/people/$peopleId/person_events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsPersonEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsPersonEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events;
  static Future<PcoCheckInsPersonEvent?> getSingleFromEventAndPersonEventIds(String eventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsPersonEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPersonEvent.canInclude;
    var url = '/check-ins/v2/events/$eventId/person_events' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsPersonEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsPersonEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/person_events;
  static Future<PcoCheckInsPersonEvent?> getSingleFromPeopleAndPersonEventIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsPersonEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPersonEvent.canInclude;
    var url = '/check-ins/v2/people/$peopleId/person_events' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsPersonEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/event
Future<List<PcoCheckInsEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
  List<PcoCheckInsEvent> retval = [];
  var url = '$apiEndpoint/event';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEvent.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/first_check_in
Future<List<PcoCheckInsCheckIn>> getCheckInsFirstCheckIn({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
  List<PcoCheckInsCheckIn> retval = [];
  var url = '$apiEndpoint/first_check_in';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsCheckIn.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/last_check_in
Future<List<PcoCheckInsCheckIn>> getCheckInsLastCheckIn({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
  List<PcoCheckInsCheckIn> retval = [];
  var url = '$apiEndpoint/last_check_in';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsCheckIn.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsPerson objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/person
Future<List<PcoCheckInsPerson>> getPersons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
  List<PcoCheckInsPerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
