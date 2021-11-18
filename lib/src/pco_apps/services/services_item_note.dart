/// This file was generated on 2021-11-18T13:57:09.717699


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
class PcoServicesItemNote extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'ItemNote';
  static const String typeId = 'item_note';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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


  PcoServicesItemNote() : super(pcoApplication, typeString);
  PcoServicesItemNote.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesItemNote Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_notes;
  static Future<List<PcoServicesItemNote>> getManyFromServiceTypeAndPlanAndItemAndItemNoteIds(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesItemNote> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_notes';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesItemNote.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesItemNote Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_notes;
  static Future<PcoServicesItemNote?> getSingleFromServiceTypeAndPlanAndItemAndItemNoteIds(String serviceTypeId,String planId,String itemId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesItemNote?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_notes' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesItemNote.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesItemNoteCategory objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes/1/item_note_category
Future<List<PcoServicesItemNoteCategory>> getItemNoteCategories({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesItemNoteCategory> retval = [];
  var url = '$apiEndpoint/item_note_category';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesItemNoteCategory.fromJson(itemData));
    }
  }
  return retval;
}
    

}
