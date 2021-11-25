/// This file was generated on 2021-11-25T00:07:20.247530


import '../../pco.dart';

/// This class represents a PCO Services Item Object
/// 
/// Application: services
/// Id:          item
/// Type:        Item
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// An item in a plan.
/// 
/// Example:
/// 
/// {"type":"Item","id":"1","attributes":{"title":"string","sequence":1,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","length":1,"item_type":"string","html_details":"string","service_position":"string","description":"string","key_name":"string","custom_arrangement_sequence":[],"custom_arrangement_sequence_short":[],"custom_arrangement_sequence_full":[]},"relationships":{"plan":{"data":{"type":"Plan","id":"1"}},"song":{"data":{"type":"Song","id":"1"}},"arrangement":{"data":{"type":"Arrangement","id":"1"}},"key":{"data":{"type":"Key","id":"1"}},"selected_layout":{"data":{"type":"Layout","id":"1"}},"selected_background":{"data":{"type":"Attachment","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items
/// 
/// possible includes with parameter ?include=a,b
/// @arrangement: include associated arrangement 
/// @item_notes: include associated item_notes 
/// @item_times: include associated item_times 
/// @key: include associated key 
/// @media: include associated media 
/// @selected_attachment: include associated selected_attachment 
/// @song: include associated song 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesItem extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Item';
  static const String kTypeId = 'item';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'item-song-last_scheduled_item';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item';

  /// possible includes with parameter ?include=a,b
  /// @arrangement: include associated arrangement 
  /// @item_notes: include associated item_notes 
  /// @item_times: include associated item_times 
  /// @key: include associated key 
  /// @media: include associated media 
  /// @selected_attachment: include associated selected_attachment 
  /// @song: include associated song 
  static List<String> get canInclude => ['arrangement','item_notes','item_times','key','media','selected_attachment','song'];

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
  static const kTitle = 'title';
  static const kSequence = 'sequence';
  static const kLength = 'length';
  static const kItemType = 'item_type';
  static const kHtmlDetails = 'html_details';
  static const kServicePosition = 'service_position';
  static const kDescription = 'description';
  static const kKeyName = 'key_name';
  static const kCustomArrangementSequence = 'custom_arrangement_sequence';
  static const kCustomArrangementSequenceShort = 'custom_arrangement_sequence_short';
  static const kCustomArrangementSequenceFull = 'custom_arrangement_sequence_full';


  // getters and setters
  @override
  List<String> get createAllowed => ['arrangement_id','custom_arrangement_sequence','description','html_details','key_id','length','selected_layout_id','service_position','song_id','title','item_type','sequence'];
  @override
  List<String> get updateAllowed => ['arrangement_id','custom_arrangement_sequence','description','html_details','key_id','length','selected_layout_id','service_position','song_id','title'];

  String get title => attributes[kTitle] ?? '';
  int get sequence => attributes[kSequence] ?? 0;
  int get length => attributes[kLength] ?? 0;

  /// There are 4 possible values:
  ///- `song`: The item is a song
  ///- `header`: The item is a header
  ///- `media`: The item is a piece of media
  ///- `item`: The default item type
  ///This value can only be set when an item is created. The only value that you can pass is `header`. If no value is passed then `item` will be used. To create a media item you'll attach a video media to the item, and to create a song item, you'll attach a song.
  String get itemType => attributes[kItemType] ?? '';
  String get htmlDetails => attributes[kHtmlDetails] ?? '';

  /// There are 3 possible values:
  ///- `pre`: the item happens before the service starts
  ///- `post`: the item happens after the service ends
  ///- `during`: the item happens during the service
  String get servicePosition => attributes[kServicePosition] ?? '';
  String get description => attributes[kDescription] ?? '';
  String get keyName => attributes[kKeyName] ?? '';

  /// An array of strings containing a label and a number describing the section:
  ///['Verse 1', 'Chorus 1', 'Verse 2']
  List get customArrangementSequence => attributes[kCustomArrangementSequence] ?? [];
  List get customArrangementSequenceShort => attributes[kCustomArrangementSequenceShort] ?? [];
  List get customArrangementSequenceFull => attributes[kCustomArrangementSequenceFull] ?? [];


  set title(String s) => attributes[kTitle] = s;
  set sequence(int n) => attributes[kSequence] = n;
  set length(int n) => attributes[kLength] = n;

  /// There are 4 possible values:
  ///- `song`: The item is a song
  ///- `header`: The item is a header
  ///- `media`: The item is a piece of media
  ///- `item`: The default item type
  ///This value can only be set when an item is created. The only value that you can pass is `header`. If no value is passed then `item` will be used. To create a media item you'll attach a video media to the item, and to create a song item, you'll attach a song.
  set itemType(String s) => attributes[kItemType] = s;
  set htmlDetails(String s) => attributes[kHtmlDetails] = s;

  /// There are 3 possible values:
  ///- `pre`: the item happens before the service starts
  ///- `post`: the item happens after the service ends
  ///- `during`: the item happens during the service
  set servicePosition(String s) => attributes[kServicePosition] = s;
  set description(String s) => attributes[kDescription] = s;

  /// An array of strings containing a label and a number describing the section:
  ///['Verse 1', 'Chorus 1', 'Verse 2']
  set customArrangementSequence(List a) => attributes[kCustomArrangementSequence] = a;


  PcoServicesItem() : super(kPcoApplication, kTypeString);
  PcoServicesItem.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesItem Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/items;
  static Future<PcoCollection<PcoServicesItem>> getManyFromPeopleAndRecentPlanAndLiveAndItem(String peopleId,String recentPlanId,String liveId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    var url = '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/items';
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesItem Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items;
  static Future<PcoCollection<PcoServicesItem>> getManyFromServiceTypeAndPlanAndItem(String serviceTypeId,String planId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items';
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesItem Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/items;
  static Future<PcoCollection<PcoServicesItem>> getManyFromServiceTypeAndPlanTemplateAndItem(String serviceTypeId,String planTemplateId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/items';
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesItem Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item;
  static Future<PcoCollection<PcoServicesItem>> getManyFromSongAndScheduledItem(String songId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    var url = '/services/v2/songs/$songId/last_scheduled_item';
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoServicesItem Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/items;
  static Future<PcoCollection<PcoServicesItem>> getSingleFromPeopleAndRecentPlanAndLiveAndItem(String peopleId,String recentPlanId,String liveId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    var url = '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/items' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesItem.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesItem Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items;
  static Future<PcoCollection<PcoServicesItem>> getSingleFromServiceTypeAndPlanAndItem(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesItem.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesItem Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/items;
  static Future<PcoCollection<PcoServicesItem>> getSingleFromServiceTypeAndPlanTemplateAndItem(String serviceTypeId,String planTemplateId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/items' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesItem.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesItem Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item;
  static Future<PcoCollection<PcoServicesItem>> getSingleFromSongAndScheduledItem(String songId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    var url = '/services/v2/songs/$songId/last_scheduled_item' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesItem.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoServicesArrangement objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/arrangement
Future<PcoCollection<PcoServicesArrangement>> getArrangements({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesArrangement.canInclude;
  var url = '$apiEndpoint/arrangement';
  return PcoCollection.fromApiCall<PcoServicesArrangement>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesAttachment objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/attachments
Future<PcoCollection<PcoServicesAttachment>> getAttachments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesAttachment.canInclude;
  var url = '$apiEndpoint/attachments';
  return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesCcliReporting objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/ccli_reporting
Future<PcoCollection<PcoServicesCcliReporting>> getCcliReportings({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesCcliReporting.canInclude;
  var url = '$apiEndpoint/ccli_reporting';
  return PcoCollection.fromApiCall<PcoServicesCcliReporting>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesCustomSlide objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/custom_slides
Future<PcoCollection<PcoServicesCustomSlide>> getCustomSlides({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesCustomSlide.canInclude;
  var url = '$apiEndpoint/custom_slides';
  return PcoCollection.fromApiCall<PcoServicesCustomSlide>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesItemNote objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_notes
Future<PcoCollection<PcoServicesItemNote>> getItemNotes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesItemNote.canInclude;
  var url = '$apiEndpoint/item_notes';
  return PcoCollection.fromApiCall<PcoServicesItemNote>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesItemTime objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_times
Future<PcoCollection<PcoServicesItemTime>> getItemTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesItemTime.canInclude;
  var url = '$apiEndpoint/item_times';
  return PcoCollection.fromApiCall<PcoServicesItemTime>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesKey objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/key
Future<PcoCollection<PcoServicesKey>> getKeys({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesKey.canInclude;
  var url = '$apiEndpoint/key';
  return PcoCollection.fromApiCall<PcoServicesKey>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesMedia objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/media
Future<PcoCollection<PcoServicesMedia>> getMedias({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesMedia.canInclude;
  var url = '$apiEndpoint/media';
  return PcoCollection.fromApiCall<PcoServicesMedia>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesAttachment objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_attachment
Future<PcoCollection<PcoServicesAttachment>> getAttachmentsSelectedAttachment({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesAttachment.canInclude;
  var url = '$apiEndpoint/selected_attachment';
  return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesAttachment objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_background
Future<PcoCollection<PcoServicesAttachment>> getAttachmentsSelectedBackground({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesAttachment.canInclude;
  var url = '$apiEndpoint/selected_background';
  return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesSong objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/song
Future<PcoCollection<PcoServicesSong>> getSongs({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesSong.canInclude;
  var url = '$apiEndpoint/song';
  return PcoCollection.fromApiCall<PcoServicesSong>(url, query: query, apiVersion:apiVersion);
}
    


}
