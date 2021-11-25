/// This file was generated on 2021-11-25T00:07:20.278611


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesReportTemplate extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ReportTemplate';
  static const String kTypeId = 'report_template';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'reporttemplate-organization-report_templates';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/report_templates';

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




  PcoServicesReportTemplate() : super(kPcoApplication, kTypeString);
  PcoServicesReportTemplate.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesReportTemplate Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/report_templates;
  static Future<PcoCollection<PcoServicesReportTemplate>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesReportTemplate.canInclude;
    var url = '/services/v2/report_templates';
    return PcoCollection.fromApiCall<PcoServicesReportTemplate>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoServicesReportTemplate Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/report_templates;
  static Future<PcoCollection<PcoServicesReportTemplate>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesReportTemplate.canInclude;
    var url = '/services/v2/report_templates' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesReportTemplate>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesReportTemplate.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }





}
