/// This file was generated on 2021-11-22T16:37:08.790022


import '../../pco.dart';

/// This class represents a PCO Services ItemNoteCategory Object
/// 
/// Application: services
/// Id:          item_note_category
/// Type:        ItemNoteCategory
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A category of plan item notes for an entire Service Type.
/// 
/// Example:
/// 
/// {"type":"ItemNoteCategory","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","deleted_at":"2000-01-01T12:00:00Z","name":"string","sequence":1,"updated_at":"2000-01-01T12:00:00Z","frequently_used":true},"relationships":{"service_type":{"data":{"type":"ServiceType","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesItemNoteCategory extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ItemNoteCategory';
  static const String kTypeId = 'item_note_category';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'itemnotecategory-servicetype-item_note_categories';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

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
  static const kDeletedAt = 'deleted_at';
  static const kName = 'name';
  static const kSequence = 'sequence';
  static const kFrequentlyUsed = 'frequently_used';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  DateTime get deletedAt => DateTime.parse(attributes[kDeletedAt] ?? '');
  String get name => attributes[kName] ?? '';
  int get sequence => attributes[kSequence] ?? 0;
  bool get isFrequentlyUsed => attributes[kFrequentlyUsed] == true;




  PcoServicesItemNoteCategory() : super(kPcoApplication, kTypeString);
  PcoServicesItemNoteCategory.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesItemNoteCategory Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes/1/item_note_category;
  static Future<List<PcoServicesItemNoteCategory>> getManyFromSongAndScheduledItemAndItemNoteAndItemNoteCategoryIds(String songId,String scheduledItemId,String itemNoteId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesItemNoteCategory> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemNoteCategory.canInclude;
    var url = '/services/v2/songs/$songId/last_scheduled_item/$scheduledItemId/item_notes/$itemNoteId/item_note_category';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesItemNoteCategory.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesItemNoteCategory Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories;
  static Future<List<PcoServicesItemNoteCategory>> getManyFromServiceTypeAndItemNoteCategoryIds(String serviceTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesItemNoteCategory> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemNoteCategory.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/item_note_categories';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesItemNoteCategory.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesItemNoteCategory Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes/1/item_note_category;
  static Future<PcoServicesItemNoteCategory?> getSingleFromSongAndScheduledItemAndItemNoteAndItemNoteCategoryIds(String songId,String scheduledItemId,String itemNoteId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesItemNoteCategory?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemNoteCategory.canInclude;
    var url = '/services/v2/songs/$songId/last_scheduled_item/$scheduledItemId/item_notes/$itemNoteId/item_note_category' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesItemNoteCategory.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesItemNoteCategory Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories;
  static Future<PcoServicesItemNoteCategory?> getSingleFromServiceTypeAndItemNoteCategoryIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesItemNoteCategory?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemNoteCategory.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/item_note_categories' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesItemNoteCategory.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
