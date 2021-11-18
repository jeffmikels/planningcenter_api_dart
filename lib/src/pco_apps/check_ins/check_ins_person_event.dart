/// This file was generated on 2021-11-17T23:59:27.206434


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
class PcoCheckInsPersonEvent extends PcoResource {
  static const String pcoApplication = 'check-ins';
  static const String typeString = 'PersonEvent';
  static const String typeId = 'person_event';
  static const String apiVersion = '2019-07-17';
  static const String shortestEdgeId = 'personevent-person-person_events';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/people/1/person_events';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kCheckInCount = 'check_in_count';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  int get checkInCount => attributes[kCheckInCount] ?? 0;




  PcoCheckInsPersonEvent() : super(pcoApplication, typeString);
  PcoCheckInsPersonEvent.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCheckInsPersonEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events;
  static Future<List<PcoCheckInsPersonEvent>> getManyFromEventAndPersonEventIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsPersonEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/person_events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsPersonEvent.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsPersonEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/person_events;
  static Future<List<PcoCheckInsPersonEvent>> getManyFromPeopleAndPersonEventIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsPersonEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/people/$peopleId/person_events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsPersonEvent.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsPersonEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events;
  static Future<PcoCheckInsPersonEvent?> getSingleFromEventAndPersonEventIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsPersonEvent?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/person_events' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsPersonEvent.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsPersonEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/person_events;
  static Future<PcoCheckInsPersonEvent?> getSingleFromPeopleAndPersonEventIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsPersonEvent?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/people/$peopleId/person_events' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsPersonEvent.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/event
Future<List<PcoCheckInsEvent>> getEvents({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsEvent> retval = [];
  var url = '$apiEndpoint/event';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEvent.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/first_check_in
Future<List<PcoCheckInsCheckIn>> getCheckInsFirstCheckIn({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsCheckIn> retval = [];
  var url = '$apiEndpoint/first_check_in';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsCheckIn.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/last_check_in
Future<List<PcoCheckInsCheckIn>> getCheckInsLastCheckIn({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsCheckIn> retval = [];
  var url = '$apiEndpoint/last_check_in';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsCheckIn.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsPerson objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/person
Future<List<PcoCheckInsPerson>> getPersons({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsPerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsPerson.fromJson(itemData));
    }
  }
  return retval;
}
    

}
