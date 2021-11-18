/// This file was generated on 2021-11-18T13:57:09.714474


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
  static const String pcoApplication = 'services';
  static const String typeString = 'FolderPath';
  static const String typeId = 'folder_path';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/folders/1/path';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kPath = 'path';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  List get path => attributes[kPath] ?? [];




  PcoServicesFolderPath() : super(pcoApplication, typeString);
  PcoServicesFolderPath.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);







}
