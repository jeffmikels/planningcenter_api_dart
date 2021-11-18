/// This file was generated on 2021-11-17T23:59:27.133275


import '../../pco.dart';

/// This class represents a PCO Services ReportTemplate Object
/// 
/// Application: services
/// Id:          report_template
/// Type:        ReportTemplate
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A template for generating reports
/// 
/// Example:
/// 
/// {"type":"ReportTemplate","id":"1","attributes":{"body":"string","title":"string","type":"string","default":true},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/report_templates
/// 
class PcoServicesReportTemplate extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'ReportTemplate';
  static const String typeId = 'report_template';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'reporttemplate-organization-report_templates';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/report_templates';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kBody = 'body';
  static const kTitle = 'title';
  static const kType = 'type';
  static const kDefault = 'default';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get body => attributes[kBody] ?? '';
  String get title => attributes[kTitle] ?? '';

  /// Possible values: `ReportMatrix`, `ReportPeople`, `ReportPlan`
  String get type => attributes[kType] ?? '';

  /// A template provided by Planning Center
  bool get isDefault => attributes[kDefault] == true;




  PcoServicesReportTemplate() : super(pcoApplication, typeString);
  PcoServicesReportTemplate.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesReportTemplate Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/report_templates;
  static Future<List<PcoServicesReportTemplate>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoServicesReportTemplate> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/report_templates';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesReportTemplate.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesReportTemplate Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/report_templates;
  static Future<PcoServicesReportTemplate?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesReportTemplate?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/report_templates' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesReportTemplate.fromJson(res.data);
    }
    return retval;
  }




}
