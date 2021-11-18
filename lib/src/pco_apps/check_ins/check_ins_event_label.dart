/// This file was generated on 2021-11-18T13:57:09.859438


import '../../pco.dart';

/// This class represents a PCO CheckIns EventLabel Object
/// 
/// Application: check-ins
/// Id:          event_label
/// Type:        EventLabel
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// Says how many of a given label to print for this event and\nwhether to print it for regulars, guests, and/or volunteers.\n
/// 
/// Example:
/// 
/// {"type":"EventLabel","id":"1","attributes":{"quantity":1,"for_regular":true,"for_guest":true,"for_volunteer":true,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels
/// 
class PcoCheckInsEventLabel extends PcoResource {
  static const String pcoApplication = 'check-ins';
  static const String typeString = 'EventLabel';
  static const String typeId = 'event_label';
  static const String apiVersion = '2019-07-17';
  static const String shortestEdgeId = 'eventlabel-label-event_labels';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kQuantity = 'quantity';
  static const kForRegular = 'for_regular';
  static const kForGuest = 'for_guest';
  static const kForVolunteer = 'for_volunteer';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  int get quantity => attributes[kQuantity] ?? 0;
  bool get isForRegular => attributes[kForRegular] == true;
  bool get isForGuest => attributes[kForGuest] == true;
  bool get isForVolunteer => attributes[kForVolunteer] == true;




  PcoCheckInsEventLabel() : super(pcoApplication, typeString);
  PcoCheckInsEventLabel.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCheckInsEventLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels;
  static Future<List<PcoCheckInsEventLabel>> getManyFromEventAndEventLabelIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsEventLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/event_labels';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEventLabel.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEventLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels;
  static Future<List<PcoCheckInsEventLabel>> getManyFromLabelAndEventLabelIds(String labelId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsEventLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/labels/$labelId/event_labels';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEventLabel.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsEventLabel Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels;
  static Future<PcoCheckInsEventLabel?> getSingleFromEventAndEventLabelIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsEventLabel?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/event_labels' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEventLabel.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEventLabel Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels;
  static Future<PcoCheckInsEventLabel?> getSingleFromLabelAndEventLabelIds(String labelId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsEventLabel?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/labels/$labelId/event_labels' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEventLabel.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/event
Future<List<PcoCheckInsEvent>> getEvents({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsEvent> retval = [];
  var url = '$apiEndpoint/event';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEvent.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLabel objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label
Future<List<PcoCheckInsLabel>> getLabels({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLabel> retval = [];
  var url = '$apiEndpoint/label';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLabel.fromJson(itemData));
    }
  }
  return retval;
}
    

}
