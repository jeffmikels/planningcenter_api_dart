/// This file was generated on 2021-11-17T23:59:27.138300


import '../../pco.dart';

/// This class represents a PCO Services ServiceTypePath Object
/// 
/// Application: services
/// Id:          service_type_path
/// Type:        ServiceTypePath
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// The Folder path of a Service Type
/// 
/// Example:
/// 
/// {"type":"ServiceTypePath","id":"1","attributes":{"path":[]},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/service_types/1/path
/// 
class PcoServicesServiceTypePath extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'ServiceTypePath';
  static const String typeId = 'service_type_path';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/path';

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




  PcoServicesServiceTypePath() : super(pcoApplication, typeString);
  PcoServicesServiceTypePath.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);







}
