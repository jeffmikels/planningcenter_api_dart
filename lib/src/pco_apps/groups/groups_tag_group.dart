/// This file was generated on 2021-11-18T13:57:10.274961


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
class PcoGroupsTagGroup extends PcoResource {
  static const String pcoApplication = 'groups';
  static const String typeString = 'TagGroup';
  static const String typeId = 'tag_group';
  static const String apiVersion = '2018-08-01';
  static const String shortestEdgeId = 'taggroup-organization-tag_groups';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/tag_groups';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoGroupsTagGroup() : super(pcoApplication, typeString);
  PcoGroupsTagGroup.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGroupsTagGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/tag_groups;
  static Future<List<PcoGroupsTagGroup>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsTagGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/tag_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsTagGroup.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGroupsTagGroup Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/tag_groups;
  static Future<PcoGroupsTagGroup?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsTagGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/tag_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsTagGroup.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGroupsTag objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/tag_groups/1/tags
Future<List<PcoGroupsTag>> getTags({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsTag> retval = [];
  var url = '$apiEndpoint/tags';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsTag.fromJson(itemData));
    }
  }
  return retval;
}
    

}
