/// This file was generated on 2021-11-18T13:57:09.712566


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
class PcoServicesEmailTemplate extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'EmailTemplate';
  static const String typeId = 'email_template';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'emailtemplate-organization-email_templates';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/email_templates';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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


  PcoServicesEmailTemplate() : super(pcoApplication, typeString);
  PcoServicesEmailTemplate.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesEmailTemplate Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/email_templates;
  static Future<List<PcoServicesEmailTemplate>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoServicesEmailTemplate> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/email_templates';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesEmailTemplate.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesEmailTemplate Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/email_templates;
  static Future<PcoServicesEmailTemplate?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesEmailTemplate?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/email_templates' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesEmailTemplate.fromJson(res.data);
    }
    return retval;
  }




}
