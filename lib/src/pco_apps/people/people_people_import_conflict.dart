/// This file was generated on 2021-11-18T13:57:10.012767


import '../../pco.dart';

/// This class represents a PCO People PeopleImportConflict Object
/// 
/// Application: people
/// Id:          people_import_conflict
/// Type:        PeopleImportConflict
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A PeopleImportConflict is a record of change that will occur if the parent PeopleImport is completed.
/// 
/// Example:
/// 
/// {"type":"PeopleImportConflict","id":"1","attributes":{"kind":"string","name":"string","message":"string","data":"string","conflicting_changes":"string","ignore":true,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts
/// 
class PcoPeoplePeopleImportConflict extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'PeopleImportConflict';
  static const String typeId = 'people_import_conflict';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'peopleimportconflict-peopleimport-conflicts';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kKind = 'kind';
  static const kName = 'name';
  static const kMessage = 'message';
  static const kData = 'data';
  static const kConflictingChanges = 'conflicting_changes';
  static const kIgnore = 'ignore';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get kind => attributes[kKind] ?? '';
  String get name => attributes[kName] ?? '';
  String get message => attributes[kMessage] ?? '';
  String get data => attributes[kData] ?? '';
  String get conflictingChanges => attributes[kConflictingChanges] ?? '';
  bool get isIgnore => attributes[kIgnore] == true;




  PcoPeoplePeopleImportConflict() : super(pcoApplication, typeString);
  PcoPeoplePeopleImportConflict.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeoplePeopleImportConflict Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts;
  static Future<List<PcoPeoplePeopleImportConflict>> getManyFromPeopleImportAndConflictIds(String peopleImportId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePeopleImportConflict> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people_imports/$peopleImportId/conflicts';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePeopleImportConflict.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeoplePeopleImportConflict Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts;
  static Future<PcoPeoplePeopleImportConflict?> getSingleFromPeopleImportAndConflictIds(String peopleImportId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePeopleImportConflict?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people_imports/$peopleImportId/conflicts' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePeopleImportConflict.fromJson(res.data);
    }
    return retval;
  }




}
