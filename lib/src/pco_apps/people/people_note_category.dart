/// This file was generated on 2021-11-22T16:57:41.593137


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
/// possible includes with parameter ?include=a,b
/// @shares: include associated shares 
/// @subscribers: include associated subscribers 
/// @subscriptions: include associated subscriptions 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @locked (URLParameter), query on a specific locked, example: ?where[locked]=true
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @organization_id (URLParameter), query on a specific organization_id, example: ?where[organization_id]=primary_key
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @locked (URLParameter), prefix with a hyphen (-locked) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @organization_id (URLParameter), prefix with a hyphen (-organization_id) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeopleNoteCategory extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'NoteCategory';
  static const String kTypeId = 'note_category';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'notecategory-organization-note_categories';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/note_categories';

  /// possible includes with parameter ?include=a,b
  /// @shares: include associated shares 
  /// @subscribers: include associated subscribers 
  /// @subscriptions: include associated subscriptions 
  static List<String> get canInclude => ['shares','subscribers','subscriptions'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @locked (URLParameter), query on a specific locked, example: ?where[locked]=true
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @organization_id (URLParameter), query on a specific organization_id, example: ?where[organization_id]=primary_key
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','locked','name','organization_id','updated_at'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @locked (URLParameter), prefix with a hyphen (-locked) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @organization_id (URLParameter), prefix with a hyphen (-organization_id) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','locked','name','organization_id','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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


  PcoPeopleNoteCategory() : super(kPcoApplication, kTypeString);
  PcoPeopleNoteCategory.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleNoteCategory Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/category;
  static Future<List<PcoPeopleNoteCategory>> getManyFromNoteAndCategoryIds(String noteId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleNoteCategory> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategory.canInclude;
    var url = '/people/v2/notes/$noteId/category';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleNoteCategory.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleNoteCategory Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories;
  static Future<List<PcoPeopleNoteCategory>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleNoteCategory> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategory.canInclude;
    var url = '/people/v2/note_categories';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleNoteCategory.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleNoteCategory Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/category;
  static Future<PcoPeopleNoteCategory?> getSingleFromNoteAndCategoryIds(String noteId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleNoteCategory?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategory.canInclude;
    var url = '/people/v2/notes/$noteId/category' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleNoteCategory.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleNoteCategory Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories;
  static Future<PcoPeopleNoteCategory?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleNoteCategory?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategory.canInclude;
    var url = '/people/v2/note_categories' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleNoteCategory.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleNoteCategoryShare objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/shares
Future<List<PcoPeopleNoteCategoryShare>> getNoteCategorySharesShares({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNoteCategoryShare.canInclude;
  List<PcoPeopleNoteCategoryShare> retval = [];
  var url = '$apiEndpoint/shares';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNoteCategoryShare.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/subscribers
Future<List<PcoPeoplePerson>> getPersonsSubscribers({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/subscribers';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNoteCategorySubscription objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/subscriptions
Future<List<PcoPeopleNoteCategorySubscription>> getNoteCategorySubscriptionsSubscriptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNoteCategorySubscription.canInclude;
  List<PcoPeopleNoteCategorySubscription> retval = [];
  var url = '$apiEndpoint/subscriptions';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNoteCategorySubscription.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
