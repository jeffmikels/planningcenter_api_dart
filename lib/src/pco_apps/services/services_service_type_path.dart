/// This file was generated on 2021-11-18T15:28:01.752082


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
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ServiceTypePath';
  static const String kTypeId = 'service_type_path';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/path';

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




  PcoServicesServiceTypePath() : super(kPcoApplication, kTypeString);
  PcoServicesServiceTypePath.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);







}
