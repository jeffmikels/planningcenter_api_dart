/// This file was generated on 2021-11-22T16:57:41.354791


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
/// possible includes with parameter ?include=a,b
/// @event: include associated event 
/// @label: include associated label 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoCheckInsEventLabel extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'EventLabel';
  static const String kTypeId = 'event_label';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'eventlabel-label-event_labels';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels';

  /// possible includes with parameter ?include=a,b
  /// @event: include associated event 
  /// @label: include associated label 
  static List<String> get canInclude => ['event','label'];

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




  PcoCheckInsEventLabel() : super(kPcoApplication, kTypeString);
  PcoCheckInsEventLabel.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsEventLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels;
  static Future<List<PcoCheckInsEventLabel>> getManyFromEventAndEventLabelIds(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsEventLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventLabel.canInclude;
    var url = '/check-ins/v2/events/$eventId/event_labels';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEventLabel.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEventLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels;
  static Future<List<PcoCheckInsEventLabel>> getManyFromLabelAndEventLabelIds(String labelId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsEventLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventLabel.canInclude;
    var url = '/check-ins/v2/labels/$labelId/event_labels';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEventLabel.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsEventLabel Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels;
  static Future<PcoCheckInsEventLabel?> getSingleFromEventAndEventLabelIds(String eventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsEventLabel?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventLabel.canInclude;
    var url = '/check-ins/v2/events/$eventId/event_labels' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEventLabel.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEventLabel Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels;
  static Future<PcoCheckInsEventLabel?> getSingleFromLabelAndEventLabelIds(String labelId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsEventLabel?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventLabel.canInclude;
    var url = '/check-ins/v2/labels/$labelId/event_labels' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEventLabel.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/event
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
    
/// will get many PcoCheckInsLabel objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label
Future<List<PcoCheckInsLabel>> getLabels({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
  List<PcoCheckInsLabel> retval = [];
  var url = '$apiEndpoint/label';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLabel.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
