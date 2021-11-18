/// This file was generated on 2021-11-18T15:28:01.690218


import '../../pco.dart';

/// This class represents a PCO Services EmailTemplateRenderedResponse Object
/// 
/// Application: services
/// Id:          email_template_rendered_response
/// Type:        EmailTemplateRenderedResponse
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A EmailTemplateRenderedResponse Resource
/// 
/// Example:
/// 
/// {"type":"EmailTemplateRenderedResponse","id":"1","attributes":{"body":"string","subject":"string"},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"email_template":{"data":{"type":"EmailTemplate","id":"1"}}}}
/// 
/// Collection Only: true
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2
/// 
class PcoServicesEmailTemplateRenderedResponse extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'EmailTemplateRenderedResponse';
  static const String kTypeId = 'email_template_rendered_response';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kBody = 'body';
  static const kSubject = 'subject';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get body => attributes[kBody] ?? '';
  String get subject => attributes[kSubject] ?? '';




  PcoServicesEmailTemplateRenderedResponse() : super(kPcoApplication, kTypeString);
  PcoServicesEmailTemplateRenderedResponse.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);







}
