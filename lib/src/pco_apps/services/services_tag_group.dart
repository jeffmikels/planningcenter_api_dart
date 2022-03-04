/// This file was generated on 2022-03-04T15:29:14.088565


import '../../pco.dart';

/// This class represents a PCO Services TagGroup Object
/// 
/// - Application:        services
/// - Id:                 tag_group
/// - Type:               TagGroup
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/tag_groups
/// 
/// Description:
/// A tag group contains tags
/// 
/// Example:
/// ```json
/// {
///   "type": "TagGroup",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "required": true,
///     "allow_multiple_selections": true,
///     "tags_for": "string",
///     "service_type_folder_name": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - folder: include associated folder 
/// - tags: include associated tags 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `tags_for`: (URLParameter), query on a specific tags_for, example: ?where[tags_for]=string
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `folder-taggroup-folder`: https://api.planningcenteronline.com/services/v2/tag_groups/1/folder
/// - `tag-taggroup-tags`: https://api.planningcenteronline.com/services/v2/tag_groups/1/tags
/// 
/// All Inbound Edges:
/// - `taggroup-organization-tag_groups`: https://api.planningcenteronline.com/services/v2/tag_groups
/// 
/// All Actions:
/// NONE
///
class PcoServicesTagGroup extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'TagGroup';
  static const String kTypeId = 'tag_group';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'taggroup-organization-tag_groups';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/tag_groups';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/tag_groups';

  /// possible includes with parameter ?include=a,b
  /// - `folder`: include associated folder 
  /// - `tags`: include associated tags 
  static List<String> get canInclude => ['folder','tags'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `tags_for`: (URLParameter), query on a specific tags_for, example: ?where[tags_for]=string
  static List<String> get canQuery => ['name','tags_for'];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kId = 'id';
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

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes

  String get name => attributes[kName] ?? '';
  bool get isRequired => attributes[kRequired] == true;
  bool get isAllowMultipleSelections => attributes[kAllowMultipleSelections] == true;
  String get tagsFor => attributes[kTagsFor] ?? '';
  String get serviceTypeFolderName => attributes[kServiceTypeFolderName] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesTagGroup() : super(kPcoApplication, kTypeString);
  PcoServicesTagGroup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesTagGroup] objects (expecting many)
  /// using a path like this: `/services/v2/tag_groups`
  /// 
  /// Available Query Filters:
  /// - `arrangement`
  /// - `media`
  /// - `person`
  /// - `song`
  static Future<PcoCollection<PcoServicesTagGroup>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTagGroup.canInclude;
    var url = '/services/v2/tag_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTagGroup>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesFolder] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/tag_groups/1/folder`
  Future<PcoCollection<PcoServicesFolder>> getFolder({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    var url = '$apiEndpoint/folder';
    return PcoCollection.fromApiCall<PcoServicesFolder>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/tag_groups/1/tags`
  Future<PcoCollection<PcoServicesTag>> getTags({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
