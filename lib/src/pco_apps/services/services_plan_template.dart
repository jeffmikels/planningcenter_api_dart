/// This file was generated on 2021-11-18T13:57:09.742812


import '../../pco.dart';

/// This class represents a PCO Services PlanTemplate Object
/// 
/// Application: services
/// Id:          plan_template
/// Type:        PlanTemplate
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A PlanTemplate Resource
/// 
/// Example:
/// 
/// {"type":"PlanTemplate","id":"1","attributes":{"name":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","item_count":1,"team_count":1,"note_count":1,"can_view_order":true,"multi_day":true,"prefers_order_view":true,"rehearsable":true},"relationships":{"service_type":{"data":{"type":"ServiceType","id":"1"}},"created_by":{"data":{"type":"Person","id":"1"}},"updated_by":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates
/// 
class PcoServicesPlanTemplate extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'PlanTemplate';
  static const String typeId = 'plan_template';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'plantemplate-servicetype-plan_templates';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kItemCount = 'item_count';
  static const kTeamCount = 'team_count';
  static const kNoteCount = 'note_count';
  static const kCanViewOrder = 'can_view_order';
  static const kMultiDay = 'multi_day';
  static const kPrefersOrderView = 'prefers_order_view';
  static const kRehearsable = 'rehearsable';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';
  int get itemCount => attributes[kItemCount] ?? 0;
  int get teamCount => attributes[kTeamCount] ?? 0;
  int get noteCount => attributes[kNoteCount] ?? 0;
  bool get isCanViewOrder => attributes[kCanViewOrder] == true;
  bool get isMultiDay => attributes[kMultiDay] == true;
  bool get isPrefersOrderView => attributes[kPrefersOrderView] == true;
  bool get isRehearsable => attributes[kRehearsable] == true;




  PcoServicesPlanTemplate() : super(pcoApplication, typeString);
  PcoServicesPlanTemplate.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesPlanTemplate Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates;
  static Future<List<PcoServicesPlanTemplate>> getManyFromServiceTypeAndPlanTemplateIds(String serviceTypeId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPlanTemplate> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanTemplate.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesPlanTemplate Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates;
  static Future<PcoServicesPlanTemplate?> getSingleFromServiceTypeAndPlanTemplateIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPlanTemplate?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanTemplate.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesItem objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/items
Future<List<PcoServicesItem>> getItems({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesItem> retval = [];
  var url = '$apiEndpoint/items';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesItem.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlanNote objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes
Future<List<PcoServicesPlanNote>> getPlanNotesNotes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesPlanNote> retval = [];
  var url = '$apiEndpoint/notes';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlanNote.fromJson(itemData));
    }
  }
  return retval;
}
    

}
