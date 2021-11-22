/// This file was generated on 2021-11-22T16:57:41.634321


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
/// possible includes with parameter ?include=a,b
/// @created_by: include associated created_by 
/// @updated_by: include associated updated_by 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @body (URLParameter), query on a specific body, example: ?where[body]=string
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @body (URLParameter), prefix with a hyphen (-body) to reverse the order
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeopleReport extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Report';
  static const String kTypeId = 'report';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'report-organization-reports';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/reports';

  /// possible includes with parameter ?include=a,b
  /// @created_by: include associated created_by 
  /// @updated_by: include associated updated_by 
  static List<String> get canInclude => ['created_by','updated_by'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @body (URLParameter), query on a specific body, example: ?where[body]=string
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['body','created_at','name','updated_at'];

  /// possible orderings with parameter ?order=
  /// @body (URLParameter), prefix with a hyphen (-body) to reverse the order
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['body','created_at','name','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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


  PcoPeopleReport() : super(kPcoApplication, kTypeString);
  PcoPeopleReport.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleReport Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/reports;
  static Future<List<PcoPeopleReport>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleReport> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleReport.canInclude;
    var url = '/people/v2/reports';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleReport.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleReport Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/reports;
  static Future<PcoPeopleReport?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleReport?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleReport.canInclude;
    var url = '/people/v2/reports' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleReport.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/reports/1/created_by
Future<List<PcoPeoplePerson>> getPersonsCreatedBy({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/created_by';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/reports/1/updated_by
Future<List<PcoPeoplePerson>> getPersonsUpdatedBy({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/updated_by';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
