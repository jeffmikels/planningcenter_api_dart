/// This file was generated on 2021-11-18T15:28:02.051894


import '../../pco.dart';

/// This class represents a PCO People Note Object
/// 
/// Application: people
/// Id:          note
/// Type:        Note
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A note is text with a category connected to a person’s profile.
/// 
/// Example:
/// 
/// {"type":"Note","id":"1","attributes":{"note":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","display_date":"2000-01-01T12:00:00Z","note_category_id":"primary_key","organization_id":"primary_key","person_id":"primary_key","created_by_id":"primary_key"},"relationships":{"note_category":{"data":{"type":"NoteCategory","id":"1"}},"organization":{"data":{"type":"Organization","id":"1"}},"person":{"data":{"type":"Person","id":"1"}},"created_by":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/notes
/// 
class PcoPeopleNote extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Note';
  static const String kTypeId = 'note';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'note-organization-notes';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/notes';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kNote = 'note';
  static const kDisplayDate = 'display_date';
  static const kNoteCategoryId = 'note_category_id';
  static const kOrganizationId = 'organization_id';
  static const kPersonId = 'person_id';
  static const kCreatedById = 'created_by_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['note','created_at','updated_at','display_date','note_category_id'];
  @override
  List<String> get updateAllowed => [];

  String get note => attributes[kNote] ?? '';
  DateTime get displayDate => DateTime.parse(attributes[kDisplayDate] ?? '');
  String get noteCategoryId => attributes[kNoteCategoryId] ?? '';
  String get organizationId => attributes[kOrganizationId] ?? '';
  String get personId => attributes[kPersonId] ?? '';
  String get createdById => attributes[kCreatedById] ?? '';


  set note(String s) => attributes[kNote] = s;
  set displayDate(DateTime d) => attributes[kDisplayDate] = d.toIso8601String();
  set noteCategoryId(String s) => attributes[kNoteCategoryId] = s;


  PcoPeopleNote() : super(kPcoApplication, kTypeString);
  PcoPeopleNote.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleNote Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes;
  static Future<List<PcoPeopleNote>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleNote> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/notes';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleNote.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleNote Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/notes;
  static Future<List<PcoPeopleNote>> getManyFromPeopleAndNoteIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleNote> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/notes';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleNote.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleNote Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes;
  static Future<PcoPeopleNote?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleNote?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/notes' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleNote.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleNote Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/notes;
  static Future<PcoPeopleNote?> getSingleFromPeopleAndNoteIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleNote?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/notes' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleNote.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleNoteCategory objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/category
Future<List<PcoPeopleNoteCategory>> getNoteCategoriesCategory({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleNoteCategory> retval = [];
  var url = '$apiEndpoint/category';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNoteCategory.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/created_by
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
/// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/person
Future<List<PcoPeoplePerson>> getPersons({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    

}
