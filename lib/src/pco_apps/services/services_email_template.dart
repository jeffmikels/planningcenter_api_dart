/// This file was generated on 2021-11-25T00:07:20.243202


import '../../pco.dart';

/// This class represents a PCO Services EmailTemplate Object
/// 
/// Application: services
/// Id:          email_template
/// Type:        EmailTemplate
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A EmailTemplate Resource
/// 
/// Example:
/// 
/// {"type":"EmailTemplate","id":"1","attributes":{"kind":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","html_body":"string","subject":"string"},"relationships":{"template_owner":{"data":{"type":"Organization","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/email_templates
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesEmailTemplate extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'EmailTemplate';
  static const String kTypeId = 'email_template';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'emailtemplate-organization-email_templates';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/email_templates';

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
  static const kKind = 'kind';
  static const kHtmlBody = 'html_body';
  static const kSubject = 'subject';


  // getters and setters
  @override
  List<String> get createAllowed => ['html_body','subject','kind'];
  @override
  List<String> get updateAllowed => ['html_body','subject'];

  String get kind => attributes[kKind] ?? '';
  String get htmlBody => attributes[kHtmlBody] ?? '';
  String get subject => attributes[kSubject] ?? '';


  set kind(String s) => attributes[kKind] = s;
  set htmlBody(String s) => attributes[kHtmlBody] = s;
  set subject(String s) => attributes[kSubject] = s;


  PcoServicesEmailTemplate() : super(kPcoApplication, kTypeString);
  PcoServicesEmailTemplate.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesEmailTemplate Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/email_templates;
  static Future<PcoCollection<PcoServicesEmailTemplate>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesEmailTemplate.canInclude;
    var url = '/services/v2/email_templates';
    return PcoCollection.fromApiCall<PcoServicesEmailTemplate>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoServicesEmailTemplate Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/email_templates;
  static Future<PcoCollection<PcoServicesEmailTemplate>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesEmailTemplate.canInclude;
    var url = '/services/v2/email_templates' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesEmailTemplate>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesEmailTemplate.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }




/// ACTION: render
/// Render an email template and fill in the persons details
/// using a path like this: https://api.planningcenteronline.com/services/v2/email_templates/1/render
/// 
/// Details:
/// Render the template with information from the person.
/// ```json
/// {
///   "data": {
///     "attributes": {
///       "format": "html|text"
///     },
///     "relationships": {
///       "person": {
///         "data": {
///           "type": "Person",
///           "id": "1"
///         }
///       }
///     }
///   }
/// }
/// ```
/// 
Future<PlanningCenterApiResponse> render(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/render';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
}
