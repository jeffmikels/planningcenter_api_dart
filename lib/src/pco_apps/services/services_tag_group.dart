/// This file was generated on 2021-11-19T12:10:42.142817


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
/// possible includes with parameter ?include=a,b
/// @folder: include associated folder 
/// @tags: include associated tags 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @tags_for (URLParameter), query on a specific tags_for, example: ?where[tags_for]=string
/// possible orderings with parameter ?order=

///
class PcoServicesTagGroup extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'TagGroup';
  static const String kTypeId = 'tag_group';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'taggroup-organization-tag_groups';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/tag_groups';

  /// possible includes with parameter ?include=a,b
  /// @folder: include associated folder 
  /// @tags: include associated tags 
  static List<String> get canInclude => ['folder','tags'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @tags_for (URLParameter), query on a specific tags_for, example: ?where[tags_for]=string
  static List<String> get canQuery => ['name','tags_for'];

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




  PcoServicesTagGroup() : super(kPcoApplication, kTypeString);
  PcoServicesTagGroup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesTagGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups;
  static Future<List<PcoServicesTagGroup>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesTagGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTagGroup.canInclude;
    var url = '/services/v2/tag_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTagGroup.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesTagGroup Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups;
  static Future<PcoServicesTagGroup?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesTagGroup?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTagGroup.canInclude;
    var url = '/services/v2/tag_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTagGroup.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesFolder objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups/1/folder
Future<List<PcoServicesFolder>> getFolders({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesFolder.canInclude;
  List<PcoServicesFolder> retval = [];
  var url = '$apiEndpoint/folder';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesFolder.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTag objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups/1/tags
Future<List<PcoServicesTag>> getTags({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTag.canInclude;
  List<PcoServicesTag> retval = [];
  var url = '$apiEndpoint/tags';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTag.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
