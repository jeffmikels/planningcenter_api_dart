/// This file was generated on 2021-11-22T16:57:41.909446


import '../../pco.dart';

/// This class represents a PCO Groups TagGroup Object
/// 
/// Application: groups
/// Id:          tag_group
/// Type:        TagGroup
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"TagGroup","id":"1","attributes":{"display_publicly":true,"multiple_options_enabled":true,"name":"string","position":1},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/groups/v2/tag_groups
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// possible orderings with parameter ?order=
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @position (URLParameter), prefix with a hyphen (-position) to reverse the order
///
class PcoGroupsTagGroup extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'TagGroup';
  static const String kTypeId = 'tag_group';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'taggroup-organization-tag_groups';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/tag_groups';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['name'];

  /// possible orderings with parameter ?order=
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @position (URLParameter), prefix with a hyphen (-position) to reverse the order
  static List<String> get canOrderBy => ['name','position'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kDisplayPublicly = 'display_publicly';
  static const kMultipleOptionsEnabled = 'multiple_options_enabled';
  static const kName = 'name';
  static const kPosition = 'position';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  bool get isDisplayPublicly => attributes[kDisplayPublicly] == true;

  /// Whether or not a group can belong to many tags within this tag group
  bool get isMultipleOptionsEnabled => attributes[kMultipleOptionsEnabled] == true;
  String get name => attributes[kName] ?? '';
  int get position => attributes[kPosition] ?? 0;




  PcoGroupsTagGroup() : super(kPcoApplication, kTypeString);
  PcoGroupsTagGroup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGroupsTagGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/tag_groups;
  static Future<List<PcoGroupsTagGroup>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGroupsTagGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsTagGroup.canInclude;
    var url = '/groups/v2/tag_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsTagGroup.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoGroupsTagGroup Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/tag_groups;
  static Future<PcoGroupsTagGroup?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGroupsTagGroup?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsTagGroup.canInclude;
    var url = '/groups/v2/tag_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsTagGroup.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoGroupsTag objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/tag_groups/1/tags
Future<List<PcoGroupsTag>> getTags({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsTag.canInclude;
  List<PcoGroupsTag> retval = [];
  var url = '$apiEndpoint/tags';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsTag.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
