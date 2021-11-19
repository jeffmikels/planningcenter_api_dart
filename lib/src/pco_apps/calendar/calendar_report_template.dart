/// This file was generated on 2021-11-19T12:10:42.729882


import '../../pco.dart';

/// This class represents a PCO Calendar ReportTemplate Object
/// 
/// Application: calendar
/// Id:          report_template
/// Type:        ReportTemplate
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// A template for generating a report.\n
/// 
/// Example:
/// 
/// {"type":"ReportTemplate","id":"1","attributes":{"body":"string","created_at":"string","description":"string","title":"string","updated_at":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/report_templates
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoCalendarReportTemplate extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ReportTemplate';
  static const String kTypeId = 'report_template';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'reporttemplate-organization-report_templates';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/report_templates';

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
  static const kDescription = 'description';
  static const kTitle = 'title';


  // getters and setters
  @override
  List<String> get createAllowed => ['body','description','title'];
  @override
  List<String> get updateAllowed => ['body','description','title'];


  /// The contents of the report template
  String get body => attributes[kBody] ?? '';

  /// A summarization of the report
  String get description => attributes[kDescription] ?? '';

  /// The title of the report
  String get title => attributes[kTitle] ?? '';



  /// The contents of the report template
  set body(String s) => attributes[kBody] = s;

  /// A summarization of the report
  set description(String s) => attributes[kDescription] = s;

  /// The title of the report
  set title(String s) => attributes[kTitle] = s;


  PcoCalendarReportTemplate() : super(kPcoApplication, kTypeString);
  PcoCalendarReportTemplate.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCalendarReportTemplate Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/report_templates;
  static Future<List<PcoCalendarReportTemplate>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarReportTemplate> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarReportTemplate.canInclude;
    var url = '/calendar/v2/report_templates';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarReportTemplate.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarReportTemplate Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/report_templates;
  static Future<PcoCalendarReportTemplate?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarReportTemplate?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarReportTemplate.canInclude;
    var url = '/calendar/v2/report_templates' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarReportTemplate.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }




}
