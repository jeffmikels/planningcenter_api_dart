/// This file was generated on 2021-11-17T23:59:29.899995


import '../../pco.dart';

/// This class represents a PCO People NoteCategory Object
/// 
/// Application: people
/// Id:          note_category
/// Type:        NoteCategory
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A Note Category
/// 
/// Example:
/// 
/// {"type":"NoteCategory","id":"1","attributes":{"name":"string","locked":true,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","organization_id":"primary_key"},"relationships":{"organization":{"data":{"type":"Organization","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/note_categories
/// 
class PcoPeopleNoteCategory extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'NoteCategory';
  static const String typeId = 'note_category';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'notecategory-organization-note_categories';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/note_categories';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kLocked = 'locked';
  static const kOrganizationId = 'organization_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['name'];
  @override
  List<String> get updateAllowed => ['name'];

  String get name => attributes[kName] ?? '';
  bool get isLocked => attributes[kLocked] == true;
  String get organizationId => attributes[kOrganizationId] ?? '';


  set name(String s) => attributes[kName] = s;


  PcoPeopleNoteCategory() : super(pcoApplication, typeString);
  PcoPeopleNoteCategory.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleNoteCategory Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/category;
  static Future<List<PcoPeopleNoteCategory>> getManyFromNoteAndCategoryIds(String noteId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleNoteCategory> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/notes/$noteId/category';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleNoteCategory.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleNoteCategory Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories;
  static Future<List<PcoPeopleNoteCategory>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleNoteCategory> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/note_categories';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleNoteCategory.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleNoteCategory Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/category;
  static Future<PcoPeopleNoteCategory?> getSingleFromNoteAndCategoryIds(String noteId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleNoteCategory?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/notes/$noteId/category' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleNoteCategory.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleNoteCategory Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories;
  static Future<PcoPeopleNoteCategory?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleNoteCategory?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/note_categories' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleNoteCategory.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleNoteCategoryShare objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/shares
Future<List<PcoPeopleNoteCategoryShare>> getNoteCategorySharesShares({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleNoteCategoryShare> retval = [];
  var url = '$apiEndpoint/shares';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNoteCategoryShare.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/subscribers
Future<List<PcoPeoplePerson>> getPersonsSubscribers({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/subscribers';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNoteCategorySubscription objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/subscriptions
Future<List<PcoPeopleNoteCategorySubscription>> getNoteCategorySubscriptionsSubscriptions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleNoteCategorySubscription> retval = [];
  var url = '$apiEndpoint/subscriptions';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNoteCategorySubscription.fromJson(itemData));
    }
  }
  return retval;
}
    

}
