/// This file was generated on 2021-11-18T13:57:10.026178


import '../../pco.dart';

/// This class represents a PCO People Report Object
/// 
/// Application: people
/// Id:          report
/// Type:        Report
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A report is editable liquid syntax that provides  a powerful tool for presenting your Lists however you want.
/// 
/// Example:
/// 
/// {"type":"Report","id":"1","attributes":{"name":"string","body":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/reports
/// 
class PcoPeopleReport extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'Report';
  static const String typeId = 'report';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'report-organization-reports';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/reports';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kBody = 'body';


  // getters and setters
  @override
  List<String> get createAllowed => ['name','body'];
  @override
  List<String> get updateAllowed => ['name','body'];

  String get name => attributes[kName] ?? '';
  String get body => attributes[kBody] ?? '';


  set name(String s) => attributes[kName] = s;
  set body(String s) => attributes[kBody] = s;


  PcoPeopleReport() : super(pcoApplication, typeString);
  PcoPeopleReport.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleReport Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/reports;
  static Future<List<PcoPeopleReport>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleReport> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/reports';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleReport.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleReport Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/reports;
  static Future<PcoPeopleReport?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleReport?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/reports' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleReport.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/reports/1/created_by
Future<List<PcoPeoplePerson>> getPersonsCreatedBy({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/created_by';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/reports/1/updated_by
Future<List<PcoPeoplePerson>> getPersonsUpdatedBy({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/updated_by';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    

}
