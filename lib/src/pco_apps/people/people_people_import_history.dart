/// This file was generated on 2021-11-17T23:59:29.906965


import '../../pco.dart';

/// This class represents a PCO People PeopleImportHistory Object
/// 
/// Application: people
/// Id:          people_import_history
/// Type:        PeopleImportHistory
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A PeopleImportHistory is a record of change that occurred when the parent PeopleImport was completed.
/// 
/// Example:
/// 
/// {"type":"PeopleImportHistory","id":"1","attributes":{"name":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","conflicting_changes":{},"kind":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/people_imports/1/histories
/// 
class PcoPeoplePeopleImportHistory extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'PeopleImportHistory';
  static const String typeId = 'people_import_history';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'peopleimporthistory-peopleimport-histories';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports/1/histories';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kConflictingChanges = 'conflicting_changes';
  static const kKind = 'kind';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';
  String get conflictingChanges => attributes[kConflictingChanges] ?? '';
  String get kind => attributes[kKind] ?? '';




  PcoPeoplePeopleImportHistory() : super(pcoApplication, typeString);
  PcoPeoplePeopleImportHistory.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeoplePeopleImportHistory Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories;
  static Future<List<PcoPeoplePeopleImportHistory>> getManyFromPeopleImportAndHistoryIds(String peopleImportId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePeopleImportHistory> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people_imports/$peopleImportId/histories';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePeopleImportHistory.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeoplePeopleImportHistory Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories;
  static Future<PcoPeoplePeopleImportHistory?> getSingleFromPeopleImportAndHistoryIds(String peopleImportId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePeopleImportHistory?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people_imports/$peopleImportId/histories' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePeopleImportHistory.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleHousehold objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/household
Future<List<PcoPeopleHousehold>> getHouseholds({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleHousehold> retval = [];
  var url = '$apiEndpoint/household';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleHousehold.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/person
Future<List<PcoPeoplePerson>> getPersons({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    

}
