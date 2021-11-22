/// This file was generated on 2021-11-22T16:37:09.147451


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
/// possible includes with parameter ?include=a,b
/// @household: include associated household 
/// @person: include associated person 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// possible orderings with parameter ?order=

///
class PcoPeoplePeopleImportHistory extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PeopleImportHistory';
  static const String kTypeId = 'people_import_history';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'peopleimporthistory-peopleimport-histories';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports/1/histories';

  /// possible includes with parameter ?include=a,b
  /// @household: include associated household 
  /// @person: include associated person 
  static List<String> get canInclude => ['household','person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['name'];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoPeoplePeopleImportHistory() : super(kPcoApplication, kTypeString);
  PcoPeoplePeopleImportHistory.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeoplePeopleImportHistory Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories;
  static Future<List<PcoPeoplePeopleImportHistory>> getManyFromPeopleImportAndHistoryIds(String peopleImportId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePeopleImportHistory> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePeopleImportHistory.canInclude;
    var url = '/people/v2/people_imports/$peopleImportId/histories';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePeopleImportHistory.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeoplePeopleImportHistory Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories;
  static Future<PcoPeoplePeopleImportHistory?> getSingleFromPeopleImportAndHistoryIds(String peopleImportId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePeopleImportHistory?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePeopleImportHistory.canInclude;
    var url = '/people/v2/people_imports/$peopleImportId/histories' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePeopleImportHistory.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleHousehold objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/household
Future<List<PcoPeopleHousehold>> getHouseholds({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
  List<PcoPeopleHousehold> retval = [];
  var url = '$apiEndpoint/household';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleHousehold.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/person
Future<List<PcoPeoplePerson>> getPersons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
