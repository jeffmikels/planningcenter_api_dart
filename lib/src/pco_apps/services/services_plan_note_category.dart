/// This file was generated on 2021-11-18T15:28:01.717266


import '../../pco.dart';

/// This class represents a PCO Services PlanNoteCategory Object
/// 
/// Application: services
/// Id:          plan_note_category
/// Type:        PlanNoteCategory
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A category of plan notes for an entire Service Type.
/// 
/// Example:
/// 
/// {"type":"PlanNoteCategory","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","deleted_at":"2000-01-01T12:00:00Z","name":"string","sequence":1,"updated_at":"2000-01-01T12:00:00Z"},"relationships":{"service_type":{"data":{"type":"ServiceType","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories
/// 
class PcoServicesPlanNoteCategory extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PlanNoteCategory';
  static const String kTypeId = 'plan_note_category';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'plannotecategory-servicetype-plan_note_categories';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kDeletedAt = 'deleted_at';
  static const kName = 'name';
  static const kSequence = 'sequence';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  DateTime get deletedAt => DateTime.parse(attributes[kDeletedAt] ?? '');
  String get name => attributes[kName] ?? '';
  int get sequence => attributes[kSequence] ?? 0;




  PcoServicesPlanNoteCategory() : super(kPcoApplication, kTypeString);
  PcoServicesPlanNoteCategory.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoServicesPlanNoteCategory Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes/1/plan_note_category;
  static Future<List<PcoServicesPlanNoteCategory>> getManyFromServiceTypeAndPlanTemplateAndNoteAndPlanNoteCategoryIds(String serviceTypeId,String planTemplateId,String noteId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPlanNoteCategory> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes/$noteId/plan_note_category';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanNoteCategory.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlanNoteCategory Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories;
  static Future<List<PcoServicesPlanNoteCategory>> getManyFromServiceTypeAndPlanNoteCategoryIds(String serviceTypeId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPlanNoteCategory> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plan_note_categories';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanNoteCategory.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesPlanNoteCategory Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes/1/plan_note_category;
  static Future<PcoServicesPlanNoteCategory?> getSingleFromServiceTypeAndPlanTemplateAndNoteAndPlanNoteCategoryIds(String serviceTypeId,String planTemplateId,String noteId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPlanNoteCategory?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes/$noteId/plan_note_category' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanNoteCategory.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesPlanNoteCategory Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories;
  static Future<PcoServicesPlanNoteCategory?> getSingleFromServiceTypeAndPlanNoteCategoryIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPlanNoteCategory?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plan_note_categories' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanNoteCategory.fromJson(res.data);
    }
    return retval;
  }




}
