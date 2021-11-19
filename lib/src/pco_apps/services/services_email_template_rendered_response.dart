/// This file was generated on 2021-11-19T12:10:42.019237


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesEmailTemplateRenderedResponse extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'EmailTemplateRenderedResponse';
  static const String kTypeId = 'email_template_rendered_response';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2';

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
  PcoServicesEmailTemplateRenderedResponse.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);







}
