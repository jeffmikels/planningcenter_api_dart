/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T16:19:09.498011
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services Item Object
/// 
/// - Application:        services
/// - Id:                 item
/// - Type:               Item
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items
/// 
/// ## Description
/// An item in a plan.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `title` (rw) -> PCO: `title`
/// - `sequence` (rw) -> PCO: `sequence`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `length` (rw) -> PCO: `length`
/// - `itemType` (rw) -> PCO: `item_type`
/// - `htmlDetails` (rw) -> PCO: `html_details`
/// - `servicePosition` (rw) -> PCO: `service_position`
/// - `description` (rw) -> PCO: `description`
/// - `keyName` (ro) -> PCO: `key_name`
/// - `customArrangementSequence` (rw) -> PCO: `custom_arrangement_sequence`
/// - `customArrangementSequenceShort` (ro) -> PCO: `custom_arrangement_sequence_short`
/// - `customArrangementSequenceFull` (ro) -> PCO: `custom_arrangement_sequence_full`
/// - `arrangementId` (wo) -> PCO: `arrangement_id`
/// - `keyId` (wo) -> PCO: `key_id`
/// - `selectedLayoutId` (wo) -> PCO: `selected_layout_id`
/// - `songId` (wo) -> PCO: `song_id`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `arrangement`: include associated arrangement 
/// - `item_notes`: include associated item_notes 
/// - `item_times`: include associated item_times 
/// - `key`: include associated key 
/// - `media`: include associated media 
/// - `selected_attachment`: include associated selected_attachment 
/// - `song`: include associated song 
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// NONE
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// NONE
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `arrangement-item-arrangement`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/arrangement
/// - `attachment-item-attachments`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/attachments
/// - `cclireporting-item-ccli_reporting`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/ccli_reporting
/// - `customslide-item-custom_slides`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/custom_slides
/// - `itemnote-item-item_notes`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_notes
/// - `itemtime-item-item_times`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_times
/// - `key-item-key`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/key
/// - `media-item-media`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/media
/// - `attachment-item-selected_attachment`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_attachment
/// - `attachment-item-selected_background`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_background
/// - `song-item-song`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/song
/// 
/// Inbound Edges:
/// - `item-live-items`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/items
/// - `item-plan-items`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items
/// - `item-plantemplate-items`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/items
/// - `item-song-last_scheduled_item`: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Item",
///   "id": "1",
///   "attributes": {
///     "title": "string",
///     "sequence": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "length": 1,
///     "item_type": "string",
///     "html_details": "string",
///     "service_position": "string",
///     "description": "string",
///     "key_name": "string",
///     "custom_arrangement_sequence": [],
///     "custom_arrangement_sequence_short": [],
///     "custom_arrangement_sequence_full": []
///   },
///   "relationships": {
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "song": {
///       "data": {
///         "type": "Song",
///         "id": "1"
///       }
///     },
///     "arrangement": {
///       "data": {
///         "type": "Arrangement",
///         "id": "1"
///       }
///     },
///     "key": {
///       "data": {
///         "type": "Key",
///         "id": "1"
///       }
///     },
///     "selected_layout": {
///       "data": {
///         "type": "Layout",
///         "id": "1"
///       }
///     },
///     "selected_background": {
///       "data": {
///         "type": "Attachment",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesItem extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Item';
  static const String kTypeId = 'item';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'item-song-last_scheduled_item';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items';

  /// possible includes with parameter ?include=a,b
  /// - `arrangement`: include associated arrangement 
  /// - `item_notes`: include associated item_notes 
  /// - `item_times`: include associated item_times 
  /// - `key`: include associated key 
  /// - `media`: include associated media 
  /// - `selected_attachment`: include associated selected_attachment 
  /// - `song`: include associated song 
  static List<String> get canInclude => ['arrangement','item_notes','item_times','key','media','selected_attachment','song'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kTitle = 'title';
  static const kSequence = 'sequence';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kLength = 'length';
  static const kItemType = 'item_type';
  static const kHtmlDetails = 'html_details';
  static const kServicePosition = 'service_position';
  static const kDescription = 'description';
  static const kKeyName = 'key_name';
  static const kCustomArrangementSequence = 'custom_arrangement_sequence';
  static const kCustomArrangementSequenceShort = 'custom_arrangement_sequence_short';
  static const kCustomArrangementSequenceFull = 'custom_arrangement_sequence_full';
  static const kArrangementId = 'arrangement_id';
  static const kKeyId = 'key_id';
  static const kSelectedLayoutId = 'selected_layout_id';
  static const kSongId = 'song_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['arrangement_id','custom_arrangement_sequence','description','html_details','key_id','length','selected_layout_id','service_position','song_id','title','item_type','sequence'];

  @override
  List<String> get updateAllowed => ['arrangement_id','custom_arrangement_sequence','description','html_details','key_id','length','selected_layout_id','service_position','song_id','title'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get title => attributes[kTitle] ?? '';
  int get sequence => attributes[kSequence] ?? 0;
  int get length => attributes[kLength] ?? 0;
  String get itemType => attributes[kItemType] ?? '';
  String get htmlDetails => attributes[kHtmlDetails] ?? '';
  String get servicePosition => attributes[kServicePosition] ?? '';
  String get description => attributes[kDescription] ?? '';
  String get keyName => attributes[kKeyName] ?? '';
  List get customArrangementSequence => attributes[kCustomArrangementSequence] ?? [];
  List get customArrangementSequenceShort => attributes[kCustomArrangementSequenceShort] ?? [];
  List get customArrangementSequenceFull => attributes[kCustomArrangementSequenceFull] ?? [];
  

  // setters for object attributes

  set title(String s) => attributes[kTitle] = s;
  set sequence(int n) => attributes[kSequence] = n;
  set length(int n) => attributes[kLength] = n;
  
  /// There are 4 possible values:
  /// 
  /// - `song`: The item is a song
  /// 
  /// - `header`: The item is a header
  /// 
  /// - `media`: The item is a piece of media
  /// 
  /// - `item`: The default item type
  /// 
  /// This value can only be set when an item is created. The only value that you can pass is `header`. If no value is passed then `item` will be used. To create a media item you'll attach a video media to the item, and to create a song item, you'll attach a song.
  set itemType(String s) => attributes[kItemType] = s;
  set htmlDetails(String s) => attributes[kHtmlDetails] = s;
  
  /// There are 3 possible values:
  /// 
  /// - `pre`: the item happens before the service starts
  /// 
  /// - `post`: the item happens after the service ends
  /// 
  /// - `during`: the item happens during the service
  set servicePosition(String s) => attributes[kServicePosition] = s;
  set description(String s) => attributes[kDescription] = s;
  
  /// An array of strings containing a label and a number describing the section:
  /// 
  /// ['Verse 1', 'Chorus 1', 'Verse 2']
  set customArrangementSequence(List a) => attributes[kCustomArrangementSequence] = a;
  

  // additional setters and getters for assignable values

  String get arrangementId => attributes[kArrangementId] ?? '';
  set arrangementId(String s) => attributes[kArrangementId] = s;
  String get keyId => attributes[kKeyId] ?? '';
  set keyId(String s) => attributes[kKeyId] = s;
  String get selectedLayoutId => attributes[kSelectedLayoutId] ?? '';
  set selectedLayoutId(String s) => attributes[kSelectedLayoutId] = s;
  String get songId => attributes[kSongId] ?? '';
  set songId(String s) => attributes[kSongId] = s;
  



  // Class Constructors
  PcoServicesItem._() : super(kPcoApplication, kTypeString);
  PcoServicesItem.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoServicesItem] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/items`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesItem(String serviceTypeId,String planId) {
    return PcoServicesItem._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/items';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/items`
  static Future<PcoCollection<PcoServicesItem>> getFromPeopleAndRecentPlanAndLive(String peopleId,String recentPlanId,String liveId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    var url = '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/items';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items`
  static Future<PcoCollection<PcoServicesItem>> getFromServiceTypeAndPlan(String serviceTypeId,String planId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/items`
  static Future<PcoCollection<PcoServicesItem>> getFromServiceTypeAndPlanTemplate(String serviceTypeId,String planTemplateId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/items';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesItem] objects (expecting one)
  /// using a path like this: `/services/v2/songs/$songId/last_scheduled_item`
  static Future<PcoCollection<PcoServicesItem>> getLastScheduledItemFromSong(String songId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    var url = '/services/v2/songs/$songId/last_scheduled_item';
    
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesArrangement] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/arrangement`
  Future<PcoCollection<PcoServicesArrangement>> getArrangement({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesArrangement.canInclude;
    var url = '$apiEndpoint/arrangement';
    return PcoCollection.fromApiCall<PcoServicesArrangement>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/attachments`
  Future<PcoCollection<PcoServicesAttachment>> getAttachments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '$apiEndpoint/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesCcliReporting] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/ccli_reporting`
  Future<PcoCollection<PcoServicesCcliReporting>> getCcliReporting({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesCcliReporting.canInclude;
    var url = '$apiEndpoint/ccli_reporting';
    return PcoCollection.fromApiCall<PcoServicesCcliReporting>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesCustomSlide] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/custom_slides`
  Future<PcoCollection<PcoServicesCustomSlide>> getCustomSlides({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesCustomSlide.canInclude;
    var url = '$apiEndpoint/custom_slides';
    return PcoCollection.fromApiCall<PcoServicesCustomSlide>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesItemNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_notes`
  Future<PcoCollection<PcoServicesItemNote>> getItemNotes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemNote.canInclude;
    var url = '$apiEndpoint/item_notes';
    return PcoCollection.fromApiCall<PcoServicesItemNote>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesItemTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_times`
  Future<PcoCollection<PcoServicesItemTime>> getItemTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    var url = '$apiEndpoint/item_times';
    return PcoCollection.fromApiCall<PcoServicesItemTime>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesKey] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/key`
  Future<PcoCollection<PcoServicesKey>> getKey({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesKey.canInclude;
    var url = '$apiEndpoint/key';
    return PcoCollection.fromApiCall<PcoServicesKey>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesMedia] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/media`
  Future<PcoCollection<PcoServicesMedia>> getMedia({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesMedia.canInclude;
    var url = '$apiEndpoint/media';
    return PcoCollection.fromApiCall<PcoServicesMedia>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_attachment`
  Future<PcoCollection<PcoServicesAttachment>> getSelectedAttachment({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '$apiEndpoint/selected_attachment';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_background`
  Future<PcoCollection<PcoServicesAttachment>> getSelectedBackground({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '$apiEndpoint/selected_background';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSong] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/song`
  Future<PcoCollection<PcoServicesSong>> getSong({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSong.canInclude;
    var url = '$apiEndpoint/song';
    return PcoCollection.fromApiCall<PcoServicesSong>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
