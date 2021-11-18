/// This file was generated on 2021-11-18T15:28:02.241278


import '../../pco.dart';

/// This class represents a PCO Groups Tag Object
/// 
/// Application: groups
/// Id:          tag
/// Type:        Tag
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Tag","id":"1","attributes":{"name":"string","position":1},"relationships":{"tag_group":{"data":{"type":"TagGroup","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/groups/v2/tags
/// 
class PcoGroupsTag extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Tag';
  static const String kTypeId = 'tag';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/tags';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kName = 'name';
  static const kPosition = 'position';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';
  int get position => attributes[kPosition] ?? 0;




  PcoGroupsTag() : super(kPcoApplication, kTypeString);
  PcoGroupsTag.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoGroupsTag Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/tags;
  static Future<List<PcoGroupsTag>> getManyFromGroupAndTagIds(String groupId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsTag> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/groups/$groupId/tags';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsTag.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsTag Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/tag_groups/1/tags;
  static Future<List<PcoGroupsTag>> getManyFromTagGroupAndTagIds(String tagGroupId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsTag> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/tag_groups/$tagGroupId/tags';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsTag.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGroupsTag Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/tags;
  static Future<PcoGroupsTag?> getSingleFromGroupAndTagIds(String groupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsTag?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/groups/$groupId/tags' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsTag.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGroupsTag Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/tag_groups/1/tags;
  static Future<PcoGroupsTag?> getSingleFromTagGroupAndTagIds(String tagGroupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsTag?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/tag_groups/$tagGroupId/tags' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsTag.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGroupsGroup objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/tags/1/groups
Future<List<PcoGroupsGroup>> getGroups({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsGroup> retval = [];
  var url = '$apiEndpoint/groups';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsGroup.fromJson(itemData));
    }
  }
  return retval;
}
    

}
