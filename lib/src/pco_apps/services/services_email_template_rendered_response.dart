/// This file was generated on 2021-11-18T13:57:09.713113


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
  static const String pcoApplication = 'services';
  static const String typeString = 'EmailTemplateRenderedResponse';
  static const String typeId = 'email_template_rendered_response';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoServicesEmailTemplateRenderedResponse() : super(pcoApplication, typeString);
  PcoServicesEmailTemplateRenderedResponse.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);







}
