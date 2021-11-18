/// This file was generated on 2021-11-18T13:57:09.738539


import '../../pco.dart';

/// This class represents a PCO Services PlanNote Object
/// 
/// Application: services
/// Id:          plan_note
/// Type:        PlanNote
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A specific plan note within a single plan.
/// 
/// Example:
/// 
/// {"type":"PlanNote","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","category_name":"string","content":"string"},"relationships":{"plan_note_category":{"data":{"type":"PlanNoteCategory","id":"1"}},"created_by":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes
/// 
class PcoServicesPlanNote extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'PlanNote';
  static const String typeId = 'plan_note';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'plannote-plan-notes';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kCategoryName = 'category_name';
  static const kContent = 'content';


  // getters and setters
  @override
  List<String> get createAllowed => ['content'];
  @override
  List<String> get updateAllowed => ['content'];

  String get categoryName => attributes[kCategoryName] ?? '';
  String get content => attributes[kContent] ?? '';


  set content(String s) => attributes[kContent] = s;


  PcoServicesPlanNote() : super(pcoApplication, typeString);
  PcoServicesPlanNote.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesPlanNote Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes;
  static Future<List<PcoServicesPlanNote>> getManyFromServiceTypeAndPlanAndNoteIds(String serviceTypeId,String planId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPlanNote> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/notes';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanNote.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlanNote Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes;
  static Future<List<PcoServicesPlanNote>> getManyFromServiceTypeAndPlanTemplateAndNoteIds(String serviceTypeId,String planTemplateId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPlanNote> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanNote.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesPlanNote Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes;
  static Future<PcoServicesPlanNote?> getSingleFromServiceTypeAndPlanAndNoteIds(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPlanNote?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/notes' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanNote.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesPlanNote Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes;
  static Future<PcoServicesPlanNote?> getSingleFromServiceTypeAndPlanTemplateAndNoteIds(String serviceTypeId,String planTemplateId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPlanNote?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanNote.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesPlanNoteCategory objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes/1/plan_note_category
Future<List<PcoServicesPlanNoteCategory>> getPlanNoteCategories({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesPlanNoteCategory> retval = [];
  var url = '$apiEndpoint/plan_note_category';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlanNoteCategory.fromJson(itemData));
    }
  }
  return retval;
}
    

}
