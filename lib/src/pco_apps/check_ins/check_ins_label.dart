/// This file was generated on 2021-11-17T23:59:27.197810


import '../../pco.dart';

/// This class represents a PCO CheckIns Label Object
/// 
/// Application: check-ins
/// Id:          label
/// Type:        Label
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// Labels can be set to print for events (through `EventLabel`s),\nlocations (through `LocationLabel`s) or options.\nLabel type (security label / name label) is expressed with the\n`prints_for` attribute. `prints_for="Person"` is a name label,\n`prints_for="Group"` is a security label.\n
/// 
/// Example:
/// 
/// {"type":"Label","id":"1","attributes":{"name":"string","xml":"string","prints_for":"string","roll":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/labels
/// 
class PcoCheckInsLabel extends PcoResource {
  static const String pcoApplication = 'check-ins';
  static const String typeString = 'Label';
  static const String typeId = 'label';
  static const String apiVersion = '2019-07-17';
  static const String shortestEdgeId = 'label-organization-labels';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/labels';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kXml = 'xml';
  static const kPrintsFor = 'prints_for';
  static const kRoll = 'roll';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';
  String get xml => attributes[kXml] ?? '';
  String get printsFor => attributes[kPrintsFor] ?? '';
  String get roll => attributes[kRoll] ?? '';




  PcoCheckInsLabel() : super(pcoApplication, typeString);
  PcoCheckInsLabel.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCheckInsLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label;
  static Future<List<PcoCheckInsLabel>> getManyFromEventAndEventLabelAndLabelIds(String eventId,String eventLabelId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/event_labels/$eventLabelId/label';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLabel.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/label;
  static Future<List<PcoCheckInsLabel>> getManyFromLabelAndLocationLabelAndLabelIds(String labelId,String locationLabelId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/labels/$labelId/location_labels/$locationLabelId/label';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLabel.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/options/1/label;
  static Future<List<PcoCheckInsLabel>> getManyFromOptionAndLabelIds(String optionId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/options/$optionId/label';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLabel.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels;
  static Future<List<PcoCheckInsLabel>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/labels';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLabel.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsLabel Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label;
  static Future<PcoCheckInsLabel?> getSingleFromEventAndEventLabelAndLabelIds(String eventId,String eventLabelId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLabel?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/event_labels/$eventLabelId/label' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLabel.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLabel Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/label;
  static Future<PcoCheckInsLabel?> getSingleFromLabelAndLocationLabelAndLabelIds(String labelId,String locationLabelId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLabel?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/labels/$labelId/location_labels/$locationLabelId/label' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLabel.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLabel Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/options/1/label;
  static Future<PcoCheckInsLabel?> getSingleFromOptionAndLabelIds(String optionId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLabel?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/options/$optionId/label' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLabel.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLabel Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels;
  static Future<PcoCheckInsLabel?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLabel?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/labels' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLabel.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsEventLabel objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels
Future<List<PcoCheckInsEventLabel>> getEventLabels({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsEventLabel> retval = [];
  var url = '$apiEndpoint/event_labels';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEventLabel.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocationLabel objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels
Future<List<PcoCheckInsLocationLabel>> getLocationLabels({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLocationLabel> retval = [];
  var url = '$apiEndpoint/location_labels';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocationLabel.fromJson(itemData));
    }
  }
  return retval;
}
    

}
