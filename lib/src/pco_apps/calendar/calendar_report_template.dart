/// This file was generated on 2021-11-18T13:57:10.117930


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
class PcoCalendarReportTemplate extends PcoResource {
  static const String pcoApplication = 'calendar';
  static const String typeString = 'ReportTemplate';
  static const String typeId = 'report_template';
  static const String apiVersion = '2020-04-08';
  static const String shortestEdgeId = 'reporttemplate-organization-report_templates';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/report_templates';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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


  PcoCalendarReportTemplate() : super(pcoApplication, typeString);
  PcoCalendarReportTemplate.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCalendarReportTemplate Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/report_templates;
  static Future<List<PcoCalendarReportTemplate>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarReportTemplate> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/report_templates';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarReportTemplate.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarReportTemplate Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/report_templates;
  static Future<PcoCalendarReportTemplate?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarReportTemplate?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/report_templates' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarReportTemplate.fromJson(res.data);
    }
    return retval;
  }




}
