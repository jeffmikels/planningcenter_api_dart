/// This file was generated on 2021-11-22T16:57:41.603449


import '../../pco.dart';

/// This class represents a PCO People PeopleImport Object
/// 
/// Application: people
/// Id:          people_import
/// Type:        PeopleImport
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A PeopleImport is a record of an ongoing or previous import from a CSV file.
/// 
/// Example:
/// 
/// {"type":"PeopleImport","id":"1","attributes":{"attribs":"string","status":"value","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","processed_at":"2000-01-01T12:00:00Z","undone_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/people_imports
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @status (URLParameter), query on a specific status, example: ?where[status]=value
/// possible orderings with parameter ?order=

///
class PcoPeoplePeopleImport extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PeopleImport';
  static const String kTypeId = 'people_import';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'peopleimport-organization-people_imports';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @status (URLParameter), query on a specific status, example: ?where[status]=value
  static List<String> get canQuery => ['status'];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kAttribs = 'attribs';
  static const kStatus = 'status';
  static const kProcessedAt = 'processed_at';
  static const kUndoneAt = 'undone_at';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get attribs => attributes[kAttribs] ?? '';

  /// Possible values: `matching`, `processing_preview`, `previewing`, `processing_import`, `complete`, `undone`, or `undoing`
  String get status => attributes[kStatus] ?? '';
  DateTime get processedAt => DateTime.parse(attributes[kProcessedAt] ?? '');
  DateTime get undoneAt => DateTime.parse(attributes[kUndoneAt] ?? '');




  PcoPeoplePeopleImport() : super(kPcoApplication, kTypeString);
  PcoPeoplePeopleImport.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeoplePeopleImport Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports;
  static Future<List<PcoPeoplePeopleImport>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePeopleImport> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePeopleImport.canInclude;
    var url = '/people/v2/people_imports';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePeopleImport.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeoplePeopleImport Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports;
  static Future<PcoPeoplePeopleImport?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePeopleImport?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePeopleImport.canInclude;
    var url = '/people/v2/people_imports' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePeopleImport.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeoplePeopleImportConflict objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts
Future<List<PcoPeoplePeopleImportConflict>> getPeopleImportConflictsConflicts({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePeopleImportConflict.canInclude;
  List<PcoPeoplePeopleImportConflict> retval = [];
  var url = '$apiEndpoint/conflicts';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePeopleImportConflict.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePeopleImportHistory objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories
Future<List<PcoPeoplePeopleImportHistory>> getPeopleImportHistoriesHistories({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePeopleImportHistory.canInclude;
  List<PcoPeoplePeopleImportHistory> retval = [];
  var url = '$apiEndpoint/histories';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePeopleImportHistory.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
