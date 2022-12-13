/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:25.957886
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesItemOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesItemFilter { none }

/// Creates a [PcoServicesItemQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeArrangement`: include associated arrangement
/// - `includeItemNotes`: include associated item_notes
/// - `includeItemTimes`: include associated item_times
/// - `includeKey`: include associated key
/// - `includeMedia`: include associated media
/// - `includeSelectedAttachment`: include associated selected_attachment
/// - `includeSong`: include associated song
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoServicesItemQuery(includes: ['a', 'b'])`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesItemQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesItemOrder, String> _orderMap = {};
  static String orderString(PcoServicesItemOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesItemFilter, String> _filterMap = {};
  static String filterString(PcoServicesItemFilter filter) =>
      _filterMap[filter]!;

  PcoServicesItemQuery({
    /// include associated arrangement
    /// when true, adds `?include=arrangement` to url
    bool includeArrangement = false,

    /// include associated item_notes
    /// when true, adds `?include=item_notes` to url
    bool includeItemNotes = false,

    /// include associated item_times
    /// when true, adds `?include=item_times` to url
    bool includeItemTimes = false,

    /// include associated key
    /// when true, adds `?include=key` to url
    bool includeKey = false,

    /// include associated media
    /// when true, adds `?include=media` to url
    bool includeMedia = false,

    /// include associated selected_attachment
    /// when true, adds `?include=selected_attachment` to url
    bool includeSelectedAttachment = false,

    /// include associated song
    /// when true, adds `?include=song` to url
    bool includeSong = false,

    /// when true, adds `?include=arrangement,item_notes,item_times,key,media,selected_attachment,song` to url parameters
    bool includeAll = false,

    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super() {
    if (includeAll || includeArrangement) include.add('arrangement');
    if (includeAll || includeItemNotes) include.add('item_notes');
    if (includeAll || includeItemTimes) include.add('item_times');
    if (includeAll || includeKey) include.add('key');
    if (includeAll || includeMedia) include.add('media');
    if (includeAll || includeSelectedAttachment)
      include.add('selected_attachment');
    if (includeAll || includeSong) include.add('song');
  }
}

/// This class represents a PCO Services Item Object
///
/// - Application:        services
/// - Id:                 item
/// - Type:               Item
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items
///
/// ## Instantiation
/// - Create a new instance using the `PcoServicesItem()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesItem.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
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
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `arrangement-item-arrangement`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/arrangement
/// - `attachment-item-attachments`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/attachments
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
/// - `item-live-items`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/items
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
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items';

  /// possible includes with parameter ?include=a,b
  /// - `arrangement`: include associated arrangement
  /// - `item_notes`: include associated item_notes
  /// - `item_times`: include associated item_times
  /// - `key`: include associated key
  /// - `media`: include associated media
  /// - `selected_attachment`: include associated selected_attachment
  /// - `song`: include associated song
  static List<String> get canInclude => [
        'arrangement',
        'item_notes',
        'item_times',
        'key',
        'media',
        'selected_attachment',
        'song'
      ];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  ///
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get createPathTemplate => kCreatePathTemplate;

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
  static const kCustomArrangementSequenceShort =
      'custom_arrangement_sequence_short';
  static const kCustomArrangementSequenceFull =
      'custom_arrangement_sequence_full';
  static const kArrangementId = 'arrangement_id';
  static const kKeyId = 'key_id';
  static const kSelectedLayoutId = 'selected_layout_id';
  static const kSongId = 'song_id';

  // getters and setters
  @override
  List<String> get createAllowed => [
        'arrangement_id',
        'custom_arrangement_sequence',
        'description',
        'html_details',
        'key_id',
        'length',
        'selected_layout_id',
        'service_position',
        'song_id',
        'title',
        'item_type',
        'sequence'
      ];

  @override
  List<String> get updateAllowed => [
        'arrangement_id',
        'custom_arrangement_sequence',
        'description',
        'html_details',
        'key_id',
        'length',
        'selected_layout_id',
        'service_position',
        'song_id',
        'title'
      ];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get title => _attributes[kTitle] ?? '';
  int get sequence => _attributes[kSequence] ?? 0;
  int get length => _attributes[kLength] ?? 0;
  String get itemType => _attributes[kItemType] ?? '';
  String get htmlDetails => _attributes[kHtmlDetails] ?? '';
  String get servicePosition => _attributes[kServicePosition] ?? '';
  String get description => _attributes[kDescription] ?? '';
  String get keyName => _attributes[kKeyName] ?? '';
  List get customArrangementSequence =>
      _attributes[kCustomArrangementSequence] ?? [];
  List get customArrangementSequenceShort =>
      _attributes[kCustomArrangementSequenceShort] ?? [];
  List get customArrangementSequenceFull =>
      _attributes[kCustomArrangementSequenceFull] ?? [];

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set title(String? x) =>
      (x == null) ? _attributes.remove(kTitle) : _attributes[kTitle] = x;

  ///
  /// pass `null` to remove key from attributes
  set sequence(int? x) =>
      (x == null) ? _attributes.remove(kSequence) : _attributes[kSequence] = x;

  ///
  /// pass `null` to remove key from attributes
  set length(int? x) =>
      (x == null) ? _attributes.remove(kLength) : _attributes[kLength] = x;

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
  ///
  /// pass `null` to remove key from attributes
  set itemType(String? x) =>
      (x == null) ? _attributes.remove(kItemType) : _attributes[kItemType] = x;

  ///
  /// pass `null` to remove key from attributes
  set htmlDetails(String? x) => (x == null)
      ? _attributes.remove(kHtmlDetails)
      : _attributes[kHtmlDetails] = x;

  /// There are 3 possible values:
  ///
  /// - `pre`: the item happens before the service starts
  ///
  /// - `post`: the item happens after the service ends
  ///
  /// - `during`: the item happens during the service
  ///
  /// pass `null` to remove key from attributes
  set servicePosition(String? x) => (x == null)
      ? _attributes.remove(kServicePosition)
      : _attributes[kServicePosition] = x;

  ///
  /// pass `null` to remove key from attributes
  set description(String? x) => (x == null)
      ? _attributes.remove(kDescription)
      : _attributes[kDescription] = x;

  /// An array of strings containing a label and a number describing the section:
  ///
  /// ['Verse 1', 'Chorus 1', 'Verse 2']
  ///
  /// pass `null` to remove key from attributes
  set customArrangementSequence(List? x) => (x == null)
      ? _attributes.remove(kCustomArrangementSequence)
      : _attributes[kCustomArrangementSequence] = x;

  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set arrangementId(String? x) => (x == null)
      ? _attributes.remove(kArrangementId)
      : _attributes[kArrangementId] = x;
  String get arrangementId => _attributes[kArrangementId] ?? '';

  ///
  /// pass `null` to remove key from attributes
  set keyId(String? x) =>
      (x == null) ? _attributes.remove(kKeyId) : _attributes[kKeyId] = x;
  String get keyId => _attributes[kKeyId] ?? '';

  ///
  /// pass `null` to remove key from attributes
  set selectedLayoutId(String? x) => (x == null)
      ? _attributes.remove(kSelectedLayoutId)
      : _attributes[kSelectedLayoutId] = x;
  String get selectedLayoutId => _attributes[kSelectedLayoutId] ?? '';

  ///
  /// pass `null` to remove key from attributes
  set songId(String? x) =>
      (x == null) ? _attributes.remove(kSongId) : _attributes[kSongId] = x;
  String get songId => _attributes[kSongId] ?? '';

  // typed getters for each relationship

  PcoServicesArrangement? get includedArrangement =>
      _firstOrNull<PcoServicesArrangement>(relationships['arrangement']);
  List<PcoServicesItemNote> get includedItemNotes =>
      (relationships['item_notes'] as List?)?.cast<PcoServicesItemNote>() ?? [];
  List<PcoServicesItemTime> get includedItemTimes =>
      (relationships['item_times'] as List?)?.cast<PcoServicesItemTime>() ?? [];
  PcoServicesKey? get includedKey =>
      _firstOrNull<PcoServicesKey>(relationships['key']);
  PcoServicesMedia? get includedMedia =>
      _firstOrNull<PcoServicesMedia>(relationships['media']);

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedSelectedAttachment<T extends PcoResource>() =>
      (relationships['selected_attachment'] as List?)?.cast<T>() ?? [];

  PcoServicesSong? get includedSong =>
      _firstOrNull<PcoServicesSong>(relationships['song']);

  // Class Constructors
  PcoServicesItem.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoServicesItem.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesItem] object using this endpoint: `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/items`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `arrangementId`, `customArrangementSequence`, `description`, `htmlDetails`, `keyId`, `length`, `selectedLayoutId`, `servicePosition`, `songId`, `title`, `itemType`, `sequence`
  /// - FIELDS USED WHEN UPDATING: `arrangementId`, `customArrangementSequence`, `description`, `htmlDetails`, `keyId`, `length`, `selectedLayoutId`, `servicePosition`, `songId`, `title`
  factory PcoServicesItem(
      {required String serviceTypeId,
      required String planId,
      String? id,
      String? title,
      int? sequence,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? length,
      String? itemType,
      String? htmlDetails,
      String? servicePosition,
      String? description,
      String? keyName,
      List? customArrangementSequence,
      List? customArrangementSequenceShort,
      List? customArrangementSequenceFull,
      String? arrangementId,
      String? keyId,
      String? selectedLayoutId,
      String? songId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesItem.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/items';
    if (title != null) obj._attributes['title'] = title;
    if (sequence != null) obj._attributes['sequence'] = sequence;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (length != null) obj._attributes['length'] = length;
    if (itemType != null) obj._attributes['item_type'] = itemType;
    if (htmlDetails != null) obj._attributes['html_details'] = htmlDetails;
    if (servicePosition != null)
      obj._attributes['service_position'] = servicePosition;
    if (description != null) obj._attributes['description'] = description;
    if (keyName != null) obj._attributes['key_name'] = keyName;
    if (customArrangementSequence != null)
      obj._attributes['custom_arrangement_sequence'] =
          customArrangementSequence;
    if (customArrangementSequenceShort != null)
      obj._attributes['custom_arrangement_sequence_short'] =
          customArrangementSequenceShort;
    if (customArrangementSequenceFull != null)
      obj._attributes['custom_arrangement_sequence_full'] =
          customArrangementSequenceFull;
    if (arrangementId != null)
      obj._attributes['arrangement_id'] = arrangementId;
    if (keyId != null) obj._attributes['key_id'] = keyId;
    if (selectedLayoutId != null)
      obj._attributes['selected_layout_id'] = selectedLayoutId;
    if (songId != null) obj._attributes['song_id'] = songId;

    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }

    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }

    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `/services/v2/series/$seriesId/plans/$planId/live/$liveId/items`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesItem>> getFromSeriesAndPlanAndLive(
    String seriesId,
    String planId,
    String liveId, {
    String? id,
    PcoServicesItemQuery? query,
    bool includeAll = false,
    bool includeArrangement = false,
    bool includeItemNotes = false,
    bool includeItemTimes = false,
    bool includeKey = false,
    bool includeMedia = false,
    bool includeSelectedAttachment = false,
    bool includeSong = false,
  }) async {
    query ??= PcoServicesItemQuery();
    if (includeAll) query.include.addAll(PcoServicesItem.canInclude);
    if (includeArrangement) query.include.add('arrangement');
    if (includeItemNotes) query.include.add('item_notes');
    if (includeItemTimes) query.include.add('item_times');
    if (includeKey) query.include.add('key');
    if (includeMedia) query.include.add('media');
    if (includeSelectedAttachment) query.include.add('selected_attachment');
    if (includeSong) query.include.add('song');
    var url = '/services/v2/series/$seriesId/plans/$planId/live/$liveId/items';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesItem>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesItem>> getFromServiceTypeAndPlan(
    String serviceTypeId,
    String planId, {
    String? id,
    PcoServicesItemQuery? query,
    bool includeAll = false,
    bool includeArrangement = false,
    bool includeItemNotes = false,
    bool includeItemTimes = false,
    bool includeKey = false,
    bool includeMedia = false,
    bool includeSelectedAttachment = false,
    bool includeSong = false,
  }) async {
    query ??= PcoServicesItemQuery();
    if (includeAll) query.include.addAll(PcoServicesItem.canInclude);
    if (includeArrangement) query.include.add('arrangement');
    if (includeItemNotes) query.include.add('item_notes');
    if (includeItemTimes) query.include.add('item_times');
    if (includeKey) query.include.add('key');
    if (includeMedia) query.include.add('media');
    if (includeSelectedAttachment) query.include.add('selected_attachment');
    if (includeSong) query.include.add('song');
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesItem>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/items`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesItem>>
      getFromServiceTypeAndPlanTemplate(
    String serviceTypeId,
    String planTemplateId, {
    String? id,
    PcoServicesItemQuery? query,
    bool includeAll = false,
    bool includeArrangement = false,
    bool includeItemNotes = false,
    bool includeItemTimes = false,
    bool includeKey = false,
    bool includeMedia = false,
    bool includeSelectedAttachment = false,
    bool includeSong = false,
  }) async {
    query ??= PcoServicesItemQuery();
    if (includeAll) query.include.addAll(PcoServicesItem.canInclude);
    if (includeArrangement) query.include.add('arrangement');
    if (includeItemNotes) query.include.add('item_notes');
    if (includeItemTimes) query.include.add('item_times');
    if (includeKey) query.include.add('key');
    if (includeMedia) query.include.add('media');
    if (includeSelectedAttachment) query.include.add('selected_attachment');
    if (includeSong) query.include.add('song');
    var url =
        '/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/items';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesItem>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesItem] objects (expecting one)
  /// using a path like this: `/services/v2/songs/$songId/last_scheduled_item`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesItem>> getLastScheduledItemFromSong(
    String songId, {
    PcoServicesItemQuery? query,
    bool includeAll = false,
    bool includeArrangement = false,
    bool includeItemNotes = false,
    bool includeItemTimes = false,
    bool includeKey = false,
    bool includeMedia = false,
    bool includeSelectedAttachment = false,
    bool includeSong = false,
  }) async {
    query ??= PcoServicesItemQuery();
    if (includeAll) query.include.addAll(PcoServicesItem.canInclude);
    if (includeArrangement) query.include.add('arrangement');
    if (includeItemNotes) query.include.add('item_notes');
    if (includeItemTimes) query.include.add('item_times');
    if (includeKey) query.include.add('key');
    if (includeMedia) query.include.add('media');
    if (includeSelectedAttachment) query.include.add('selected_attachment');
    if (includeSong) query.include.add('song');
    var url = '/services/v2/songs/$songId/last_scheduled_item';

    return PcoCollection.fromApiCall<PcoServicesItem>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesArrangement] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/arrangement`
  Future<PcoCollection<PcoServicesArrangement>> getArrangement(
      {PcoServicesArrangementQuery? query}) async {
    query ??= PcoServicesArrangementQuery();
    var url = '$apiEndpoint/arrangement';
    return PcoCollection.fromApiCall<PcoServicesArrangement>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/attachments`
  Future<PcoCollection<PcoServicesAttachment>> getAttachments(
      {PcoServicesAttachmentQuery? query}) async {
    query ??= PcoServicesAttachmentQuery();
    var url = '$apiEndpoint/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesCustomSlide] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/custom_slides`
  Future<PcoCollection<PcoServicesCustomSlide>> getCustomSlides(
      {PcoServicesCustomSlideQuery? query}) async {
    query ??= PcoServicesCustomSlideQuery();
    var url = '$apiEndpoint/custom_slides';
    return PcoCollection.fromApiCall<PcoServicesCustomSlide>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesItemNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_notes`
  Future<PcoCollection<PcoServicesItemNote>> getItemNotes(
      {PcoServicesItemNoteQuery? query}) async {
    query ??= PcoServicesItemNoteQuery();
    var url = '$apiEndpoint/item_notes';
    return PcoCollection.fromApiCall<PcoServicesItemNote>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesItemTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_times`
  Future<PcoCollection<PcoServicesItemTime>> getItemTimes(
      {PcoServicesItemTimeQuery? query}) async {
    query ??= PcoServicesItemTimeQuery();
    var url = '$apiEndpoint/item_times';
    return PcoCollection.fromApiCall<PcoServicesItemTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesKey] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/key`
  Future<PcoCollection<PcoServicesKey>> getKey(
      {PcoServicesKeyQuery? query}) async {
    query ??= PcoServicesKeyQuery();
    var url = '$apiEndpoint/key';
    return PcoCollection.fromApiCall<PcoServicesKey>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesMedia] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/media`
  Future<PcoCollection<PcoServicesMedia>> getMedia(
      {PcoServicesMediaQuery? query}) async {
    query ??= PcoServicesMediaQuery();
    var url = '$apiEndpoint/media';
    return PcoCollection.fromApiCall<PcoServicesMedia>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_attachment`
  Future<PcoCollection<PcoServicesAttachment>> getSelectedAttachment(
      {PcoServicesAttachmentQuery? query}) async {
    query ??= PcoServicesAttachmentQuery();
    var url = '$apiEndpoint/selected_attachment';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_background`
  Future<PcoCollection<PcoServicesAttachment>> getSelectedBackground(
      {PcoServicesAttachmentQuery? query}) async {
    query ??= PcoServicesAttachmentQuery();
    var url = '$apiEndpoint/selected_background';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSong] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/song`
  Future<PcoCollection<PcoServicesSong>> getSong(
      {PcoServicesSongQuery? query}) async {
    query ??= PcoServicesSongQuery();
    var url = '$apiEndpoint/song';
    return PcoCollection.fromApiCall<PcoServicesSong>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
