/// This file was generated on 2021-11-19T12:10:42.107246


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @item_count (URLParameter), prefix with a hyphen (-item_count) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @note_count (URLParameter), prefix with a hyphen (-note_count) to reverse the order
/// @team_count (URLParameter), prefix with a hyphen (-team_count) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoServicesPlanTemplate extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PlanTemplate';
  static const String kTypeId = 'plan_template';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'plantemplate-servicetype-plan_templates';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @item_count (URLParameter), prefix with a hyphen (-item_count) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @note_count (URLParameter), prefix with a hyphen (-note_count) to reverse the order
  /// @team_count (URLParameter), prefix with a hyphen (-team_count) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','item_count','name','note_count','team_count','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoServicesPlanTemplate() : super(kPcoApplication, kTypeString);
  PcoServicesPlanTemplate.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesPlanTemplate Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates;
  static Future<List<PcoServicesPlanTemplate>> getManyFromServiceTypeAndPlanTemplateIds(String serviceTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPlanTemplate> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanTemplate.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanTemplate.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesPlanTemplate Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates;
  static Future<PcoServicesPlanTemplate?> getSingleFromServiceTypeAndPlanTemplateIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPlanTemplate?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanTemplate.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanTemplate.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesItem objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/items
Future<List<PcoServicesItem>> getItems({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesItem.canInclude;
  List<PcoServicesItem> retval = [];
  var url = '$apiEndpoint/items';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesItem.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlanNote objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes
Future<List<PcoServicesPlanNote>> getPlanNotesNotes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPlanNote.canInclude;
  List<PcoServicesPlanNote> retval = [];
  var url = '$apiEndpoint/notes';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlanNote.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
