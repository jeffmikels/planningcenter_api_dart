/// This file was generated on 2021-11-17T23:59:27.145123


import '../../pco.dart';

/// This class represents a PCO Services TagGroup Object
/// 
/// Application: services
/// Id:          tag_group
/// Type:        TagGroup
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A tag group contains tags
/// 
/// Example:
/// 
/// {"type":"TagGroup","id":"1","attributes":{"name":"string","required":true,"allow_multiple_selections":true,"tags_for":"string","service_type_folder_name":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/tag_groups
/// 
class PcoServicesTagGroup extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'TagGroup';
  static const String typeId = 'tag_group';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'taggroup-organization-tag_groups';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/tag_groups';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kRequired = 'required';
  static const kAllowMultipleSelections = 'allow_multiple_selections';
  static const kTagsFor = 'tags_for';
  static const kServiceTypeFolderName = 'service_type_folder_name';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';
  bool get isRequired => attributes[kRequired] == true;
  bool get isAllowMultipleSelections => attributes[kAllowMultipleSelections] == true;

  /// Scopes a tag group to `person`, `song`, `arrangement`, `media`
  String get tagsFor => attributes[kTagsFor] ?? '';
  String get serviceTypeFolderName => attributes[kServiceTypeFolderName] ?? '';




  PcoServicesTagGroup() : super(pcoApplication, typeString);
  PcoServicesTagGroup.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesTagGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups;
  static Future<List<PcoServicesTagGroup>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTagGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/tag_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTagGroup.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesTagGroup Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups;
  static Future<PcoServicesTagGroup?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTagGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/tag_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTagGroup.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesFolder objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups/1/folder
Future<List<PcoServicesFolder>> getFolders({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesFolder> retval = [];
  var url = '$apiEndpoint/folder';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesFolder.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTag objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups/1/tags
Future<List<PcoServicesTag>> getTags({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesTag> retval = [];
  var url = '$apiEndpoint/tags';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTag.fromJson(itemData));
    }
  }
  return retval;
}
    

}
