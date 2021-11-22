/// This file was generated on 2021-11-22T16:57:41.093897


import '../../pco.dart';

/// This class represents a PCO Services FolderPath Object
/// 
/// Application: services
/// Id:          folder_path
/// Type:        FolderPath
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// The Folder path of a Folder
/// 
/// Example:
/// 
/// {"type":"FolderPath","id":"1","attributes":{"path":[]},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/folders/1/path
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesFolderPath extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'FolderPath';
  static const String kTypeId = 'folder_path';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/folders/1/path';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kPath = 'path';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  List get path => attributes[kPath] ?? [];




  PcoServicesFolderPath() : super(kPcoApplication, kTypeString);
  PcoServicesFolderPath.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);








}
