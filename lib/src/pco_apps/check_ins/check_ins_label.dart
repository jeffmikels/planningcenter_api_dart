/// This file was generated on 2021-11-19T12:10:42.266152


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoCheckInsLabel extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Label';
  static const String kTypeId = 'label';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'label-organization-labels';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/labels';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

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




  PcoCheckInsLabel() : super(kPcoApplication, kTypeString);
  PcoCheckInsLabel.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label;
  static Future<List<PcoCheckInsLabel>> getManyFromEventAndEventLabelAndLabelIds(String eventId,String eventLabelId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    var url = '/check-ins/v2/events/$eventId/event_labels/$eventLabelId/label';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLabel.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/label;
  static Future<List<PcoCheckInsLabel>> getManyFromLabelAndLocationLabelAndLabelIds(String labelId,String locationLabelId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    var url = '/check-ins/v2/labels/$labelId/location_labels/$locationLabelId/label';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLabel.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/options/1/label;
  static Future<List<PcoCheckInsLabel>> getManyFromOptionAndLabelIds(String optionId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    var url = '/check-ins/v2/options/$optionId/label';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLabel.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels;
  static Future<List<PcoCheckInsLabel>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    var url = '/check-ins/v2/labels';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLabel.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsLabel Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label;
  static Future<PcoCheckInsLabel?> getSingleFromEventAndEventLabelAndLabelIds(String eventId,String eventLabelId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsLabel?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    var url = '/check-ins/v2/events/$eventId/event_labels/$eventLabelId/label' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLabel.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLabel Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/label;
  static Future<PcoCheckInsLabel?> getSingleFromLabelAndLocationLabelAndLabelIds(String labelId,String locationLabelId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsLabel?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    var url = '/check-ins/v2/labels/$labelId/location_labels/$locationLabelId/label' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLabel.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLabel Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/options/1/label;
  static Future<PcoCheckInsLabel?> getSingleFromOptionAndLabelIds(String optionId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsLabel?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    var url = '/check-ins/v2/options/$optionId/label' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLabel.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLabel Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels;
  static Future<PcoCheckInsLabel?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsLabel?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    var url = '/check-ins/v2/labels' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLabel.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCheckInsEventLabel objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels
Future<List<PcoCheckInsEventLabel>> getEventLabels({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEventLabel.canInclude;
  List<PcoCheckInsEventLabel> retval = [];
  var url = '$apiEndpoint/event_labels';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEventLabel.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocationLabel objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels
Future<List<PcoCheckInsLocationLabel>> getLocationLabels({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLocationLabel.canInclude;
  List<PcoCheckInsLocationLabel> retval = [];
  var url = '$apiEndpoint/location_labels';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocationLabel.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
