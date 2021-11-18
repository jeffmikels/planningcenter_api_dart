/// This file was generated on 2021-11-18T15:28:01.691686


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
class PcoServicesFolderPath extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'FolderPath';
  static const String kTypeId = 'folder_path';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/folders/1/path';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

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
  PcoServicesFolderPath.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);







}
