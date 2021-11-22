/// This file was generated on 2021-11-22T16:57:41.150568


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
/// possible includes with parameter ?include=a,b
/// @plan_note_category: include associated plan_note_category 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoServicesPlanNote extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PlanNote';
  static const String kTypeId = 'plan_note';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'plannote-plan-notes';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes';

  /// possible includes with parameter ?include=a,b
  /// @plan_note_category: include associated plan_note_category 
  static List<String> get canInclude => ['plan_note_category'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','updated_at'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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


  PcoServicesPlanNote() : super(kPcoApplication, kTypeString);
  PcoServicesPlanNote.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesPlanNote Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes;
  static Future<List<PcoServicesPlanNote>> getManyFromServiceTypeAndPlanAndNoteIds(String serviceTypeId,String planId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPlanNote> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanNote.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/notes';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanNote.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlanNote Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes;
  static Future<List<PcoServicesPlanNote>> getManyFromServiceTypeAndPlanTemplateAndNoteIds(String serviceTypeId,String planTemplateId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPlanNote> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanNote.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanNote.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesPlanNote Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes;
  static Future<PcoServicesPlanNote?> getSingleFromServiceTypeAndPlanAndNoteIds(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPlanNote?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanNote.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/notes' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanNote.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesPlanNote Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes;
  static Future<PcoServicesPlanNote?> getSingleFromServiceTypeAndPlanTemplateAndNoteIds(String serviceTypeId,String planTemplateId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPlanNote?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanNote.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanNote.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesPlanNoteCategory objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes/1/plan_note_category
Future<List<PcoServicesPlanNoteCategory>> getPlanNoteCategories({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPlanNoteCategory.canInclude;
  List<PcoServicesPlanNoteCategory> retval = [];
  var url = '$apiEndpoint/plan_note_category';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlanNoteCategory.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
