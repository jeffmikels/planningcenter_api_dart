/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.345781
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

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
/// Description:
/// An item in a plan.
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// - arrangement: include associated arrangement 
/// - item_notes: include associated item_notes 
/// - item_times: include associated item_times 
/// - key: include associated key 
/// - media: include associated media 
/// - selected_attachment: include associated selected_attachment 
/// - song: include associated song 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
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
/// All Inbound Edges:
/// - `item-live-items`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/items
/// - `item-plan-items`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items
/// - `item-plantemplate-items`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/items
/// - `item-song-last_scheduled_item`: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item
/// 
/// All Actions:
/// NONE
///
export class PcoServicesItem extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'Item';
  static kTypeId = 'item';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'item-song-last_scheduled_item';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items';

  /// possible includes with parameter ?include=a,b
  /// - `arrangement`: include associated arrangement 
  /// - `item_notes`: include associated item_notes 
  /// - `item_times`: include associated item_times 
  /// - `key`: include associated key 
  /// - `media`: include associated media 
  /// - `selected_attachment`: include associated selected_attachment 
  /// - `song`: include associated song 
  static get canInclude() { return ['arrangement','item_notes','item_times','key','media','selected_attachment','song'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesItem.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesItem.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesItem.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kTitle() { return 'title' }
  static get kSequence() { return 'sequence' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kLength() { return 'length' }
  static get kItemType() { return 'item_type' }
  static get kHtmlDetails() { return 'html_details' }
  static get kServicePosition() { return 'service_position' }
  static get kDescription() { return 'description' }
  static get kKeyName() { return 'key_name' }
  static get kCustomArrangementSequence() { return 'custom_arrangement_sequence' }
  static get kCustomArrangementSequenceShort() { return 'custom_arrangement_sequence_short' }
  static get kCustomArrangementSequenceFull() { return 'custom_arrangement_sequence_full' }
  static get kArrangementId() { return 'arrangement_id' }
  static get kKeyId() { return 'key_id' }
  static get kSelectedLayoutId() { return 'selected_layout_id' }
  static get kSongId() { return 'song_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['arrangement_id','custom_arrangement_sequence','description','html_details','key_id','length','selected_layout_id','service_position','song_id','title','item_type','sequence']; }

  // @override
  get updateAllowed() { return ['arrangement_id','custom_arrangement_sequence','description','html_details','key_id','length','selected_layout_id','service_position','song_id','title']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get title() { return attributes[this.constructor.kTitle] ?? ''; }
  get sequence() { return attributes[this.constructor.kSequence] ?? 0; }
  get length() { return attributes[this.constructor.kLength] ?? 0; }
  get itemType() { return attributes[this.constructor.kItemType] ?? ''; }
  get htmlDetails() { return attributes[this.constructor.kHtmlDetails] ?? ''; }
  get servicePosition() { return attributes[this.constructor.kServicePosition] ?? ''; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get keyName() { return attributes[this.constructor.kKeyName] ?? ''; }
  get customArrangementSequence() { return attributes[this.constructor.kCustomArrangementSequence] ?? []; }
  get customArrangementSequenceShort() { return attributes[this.constructor.kCustomArrangementSequenceShort] ?? []; }
  get customArrangementSequenceFull() { return attributes[this.constructor.kCustomArrangementSequenceFull] ?? []; }
  

  // setters for object attributes

  set title(s) {attributes[this.constructor.kTitle] = s;}
  set sequence(n) { attributes[this.constructor.kSequence] = n; }
  set length(n) { attributes[this.constructor.kLength] = n; }
  
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
  set itemType(s) {attributes[this.constructor.kItemType] = s;}
  set htmlDetails(s) {attributes[this.constructor.kHtmlDetails] = s;}
  
  /// There are 3 possible values:
  /// 
  /// - `pre`: the item happens before the service starts
  /// 
  /// - `post`: the item happens after the service ends
  /// 
  /// - `during`: the item happens during the service
  set servicePosition(s) {attributes[this.constructor.kServicePosition] = s;}
  set description(s) {attributes[this.constructor.kDescription] = s;}
  
  /// An array of strings containing a label and a number describing the section:
  /// 
  /// ['Verse 1', 'Chorus 1', 'Verse 2']
  set customArrangementSequence(a) { attributes[this.constructor.kCustomArrangementSequence] = a; }
  

  // additional setters and getters for assignable values

  get arrangementId() { return attributes[this.constructor.kArrangementId] ?? ''; }
  set arrangementId(s) {attributes[this.constructor.kArrangementId] = s;}
  get keyId() { return attributes[this.constructor.kKeyId] ?? ''; }
  set keyId(s) {attributes[this.constructor.kKeyId] = s;}
  get selectedLayoutId() { return attributes[this.constructor.kSelectedLayoutId] ?? ''; }
  set selectedLayoutId(s) {attributes[this.constructor.kSelectedLayoutId] = s;}
  get songId() { return attributes[this.constructor.kSongId] ?? ''; }
  set songId(s) {attributes[this.constructor.kSongId] = s;}
  



  // Class Constructors
  // PcoServicesItem._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesItem({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesItem] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/service_types/${serviceTypeId}/plans/${planId}/items`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(serviceTypeId,planId) {
    super(PcoServicesItem.kPcoApplication, PcoServicesItem.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/service_types/${serviceTypeId}/plans/${planId}/items`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `/services/v2/people/${peopleId}/recent_plans/${recentPlanId}/live/${liveId}/items`
  static getFromPeopleAndRecentPlanAndLive(peopleId, recentPlanId, liveId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/recent_plans/${recentPlanId}/live/${liveId}/items`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items`
  static getFromServiceTypeAndPlan(serviceTypeId, planId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plan_templates/${planTemplateId}/items`
  static getFromServiceTypeAndPlanTemplate(serviceTypeId, planTemplateId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plan_templates/${planTemplateId}/items`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItem] objects (expecting one)
  /// using a path like this: `/services/v2/songs/${songId}/last_scheduled_item`
  static getLastScheduledItemFromSong(songId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/songs/${songId}/last_scheduled_item`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesArrangement] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/arrangement`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getArrangement({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesArrangement.canInclude;
    let url = `${apiEndpoint}/arrangement`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/attachments`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAttachments({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let url = `${apiEndpoint}/attachments`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesCcliReporting] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/ccli_reporting`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCcliReporting({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesCcliReporting.canInclude;
    let url = `${apiEndpoint}/ccli_reporting`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesCustomSlide] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/custom_slides`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCustomSlides({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesCustomSlide.canInclude;
    let url = `${apiEndpoint}/custom_slides`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItemNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_notes`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getItemNotes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItemNote.canInclude;
    let url = `${apiEndpoint}/item_notes`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItemTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_times`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getItemTimes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    let url = `${apiEndpoint}/item_times`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesKey] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/key`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getKey({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesKey.canInclude;
    let url = `${apiEndpoint}/key`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesMedia] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/media`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getMedia({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesMedia.canInclude;
    let url = `${apiEndpoint}/media`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_attachment`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSelectedAttachment({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let url = `${apiEndpoint}/selected_attachment`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_background`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSelectedBackground({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let url = `${apiEndpoint}/selected_background`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSong] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/song`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSong({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSong.canInclude;
    let url = `${apiEndpoint}/song`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
