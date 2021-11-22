/// This file was generated on 2021-11-22T16:37:08.787843


import '../../pco.dart';

/// This class represents a PCO Services ItemNote Object
/// 
/// Application: services
/// Id:          item_note
/// Type:        ItemNote
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A plan item note that belongs to a category.\n\nNote: You can only assign the category on create. If you want to change category; delete the current note, and create a new one passing in the `item_note_category_id` then.\n
/// 
/// Example:
/// 
/// {"type":"ItemNote","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","content":"string","category_name":"string"},"relationships":{"item_note_category":{"data":{"type":"ItemNoteCategory","id":"1"}},"item":{"data":{"type":"Item","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes
/// 
/// possible includes with parameter ?include=a,b
/// @item_note_category: include associated item_note_category 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesItemNote extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ItemNote';
  static const String kTypeId = 'item_note';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes';

  /// possible includes with parameter ?include=a,b
  /// @item_note_category: include associated item_note_category 
  static List<String> get canInclude => ['item_note_category'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kContent = 'content';
  static const kCategoryName = 'category_name';


  // getters and setters
  @override
  List<String> get createAllowed => ['content'];
  @override
  List<String> get updateAllowed => ['content'];

  String get content => attributes[kContent] ?? '';
  String get categoryName => attributes[kCategoryName] ?? '';


  set content(String s) => attributes[kContent] = s;


  PcoServicesItemNote() : super(kPcoApplication, kTypeString);
  PcoServicesItemNote.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesItemNote Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_notes;
  static Future<List<PcoServicesItemNote>> getManyFromServiceTypeAndPlanAndItemAndItemNoteIds(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesItemNote> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemNote.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_notes';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesItemNote.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesItemNote Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_notes;
  static Future<PcoServicesItemNote?> getSingleFromServiceTypeAndPlanAndItemAndItemNoteIds(String serviceTypeId,String planId,String itemId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesItemNote?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemNote.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_notes' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesItemNote.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesItemNoteCategory objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes/1/item_note_category
Future<List<PcoServicesItemNoteCategory>> getItemNoteCategories({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesItemNoteCategory.canInclude;
  List<PcoServicesItemNoteCategory> retval = [];
  var url = '$apiEndpoint/item_note_category';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesItemNoteCategory.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
