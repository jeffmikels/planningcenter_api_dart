/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.493929
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services Song Object
/// 
/// - Application:        services
/// - Id:                 song
/// - Type:               Song
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs
/// 
/// Description:
/// A song
/// 
/// Example:
/// ```json
/// {
///   "type": "Song",
///   "id": "1",
///   "attributes": {
///     "title": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "admin": "string",
///     "author": "string",
///     "copyright": "string",
///     "hidden": true,
///     "notes": "string",
///     "themes": "string",
///     "last_scheduled_short_dates": "string",
///     "last_scheduled_at": "2000-01-01T12:00:00Z",
///     "ccli_number": 1
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `author`: (URLParameter), query on a specific author, example: ?where[author]=string
/// - `ccli_number`: (URLParameter), query on a specific ccli_number, example: ?where[ccli_number]=1
/// - `hidden`: (URLParameter), query on a specific hidden, example: ?where[hidden]=true
/// - `themes`: (URLParameter), query on a specific themes, example: ?where[themes]=string
/// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `last_scheduled_at`: (URLParameter), prefix with a hyphen (-last_scheduled_at) to reverse the order
/// - `title`: (URLParameter), prefix with a hyphen (-title) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `arrangement-song-arrangements`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements
/// - `attachment-song-attachments`: https://api.planningcenteronline.com/services/v2/songs/1/attachments
/// - `item-song-last_scheduled_item`: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item
/// - `songschedule-song-song_schedules`: https://api.planningcenteronline.com/services/v2/songs/1/song_schedules
/// - `tag-song-tags`: https://api.planningcenteronline.com/services/v2/songs/1/tags
/// 
/// All Inbound Edges:
/// - `song-item-song`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/song
/// - `song-organization-songs`: https://api.planningcenteronline.com/services/v2/songs
/// 
/// All Actions:
/// - `assign_tags`: https://api.planningcenteronline.com/services/v2/songs/1/assign_tags
///
export class PcoServicesSong extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'Song';
  static kTypeId = 'song';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'song-organization-songs';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/songs';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `author`: (URLParameter), query on a specific author, example: ?where[author]=string
  /// - `ccli_number`: (URLParameter), query on a specific ccli_number, example: ?where[ccli_number]=1
  /// - `hidden`: (URLParameter), query on a specific hidden, example: ?where[hidden]=true
  /// - `themes`: (URLParameter), query on a specific themes, example: ?where[themes]=string
  /// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
  static get canQuery() { return ['author','ccli_number','hidden','themes','title'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `last_scheduled_at`: (URLParameter), prefix with a hyphen (-last_scheduled_at) to reverse the order
  /// - `title`: (URLParameter), prefix with a hyphen (-title) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','last_scheduled_at','title','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesSong.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesSong.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesSong.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kTitle() { return 'title' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kAdmin() { return 'admin' }
  static get kAuthor() { return 'author' }
  static get kCopyright() { return 'copyright' }
  static get kHidden() { return 'hidden' }
  static get kNotes() { return 'notes' }
  static get kThemes() { return 'themes' }
  static get kLastScheduledShortDates() { return 'last_scheduled_short_dates' }
  static get kLastScheduledAt() { return 'last_scheduled_at' }
  static get kCcliNumber() { return 'ccli_number' }


  // getters and setters
  // @override
  get createAllowed() { return ['title','admin','author','copyright','ccli_number','hidden','themes']; }

  // @override
  get updateAllowed() { return ['title','admin','author','copyright','ccli_number','hidden','themes']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get title() { return attributes[this.constructor.kTitle] ?? ''; }
  get admin() { return attributes[this.constructor.kAdmin] ?? ''; }
  get author() { return attributes[this.constructor.kAuthor] ?? ''; }
  get copyright() { return attributes[this.constructor.kCopyright] ?? ''; }
  get isHidden() { return attributes[this.constructor.kHidden] == true; }
  get notes() { return attributes[this.constructor.kNotes] ?? ''; }
  get themes() { return attributes[this.constructor.kThemes] ?? ''; }
  get lastScheduledShortDates() { return attributes[this.constructor.kLastScheduledShortDates] ?? ''; }
  get lastScheduledAt() { return Date.parse(attributes[this.constructor.kLastScheduledAt] ?? 0); }
  get ccliNumber() { return attributes[this.constructor.kCcliNumber] ?? 0; }
  

  // setters for object attributes

  
  /// The name of the song.
  /// 
  /// When setting this value on a create you can pass a CCLI number and Services will fetch the song metadata for you.
  set title(s) {attributes[this.constructor.kTitle] = s;}
  set admin(s) {attributes[this.constructor.kAdmin] = s;}
  set author(s) {attributes[this.constructor.kAuthor] = s;}
  set copyright(s) {attributes[this.constructor.kCopyright] = s;}
  set isHidden(b) { attributes[this.constructor.kHidden] = b; }
  set themes(s) {attributes[this.constructor.kThemes] = s;}
  set ccliNumber(n) { attributes[this.constructor.kCcliNumber] = n; }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesSong._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesSong({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesSong] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/songs`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoServicesSong.kPcoApplication, PcoServicesSong.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/songs`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSong] objects (expecting many)
  /// using a path like this: `/services/v2/songs`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSong.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/songs`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSong] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/song`
  static getFromServiceTypeAndPlanAndItem(serviceTypeId, planId, itemId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSong.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/song`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesArrangement] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/arrangements`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getArrangements({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesArrangement.canInclude;
    let url = `${apiEndpoint}/arrangements`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/attachments`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAttachments({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let url = `${apiEndpoint}/attachments`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLastScheduledItem({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    let url = `${apiEndpoint}/last_scheduled_item`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSongSchedule] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/song_schedules`
  /// 
  /// Available Query Filters:
  /// - `three_most_recent`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSongSchedules({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSongSchedule.canInclude;
    let url = `${apiEndpoint}/song_schedules`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/tags`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTags({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    let url = `${apiEndpoint}/tags`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `assign_tags`
  /// 
  /// Used to assign tags to a song.
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/assign_tags`
  /// 
  /// Details:
  /// All tags will be replaced so the full data set must be sent.
  /// 
  /// It expects a body that looks like:
  /// 
  /// ```json
  /// {
  /// 	"data": {
  /// 		"type": "TagAssignment",
  /// 		"attributes": {},
  /// 		"relationships": {
  /// 			"tags": {
  /// 				"data": [
  /// 					{
  /// 						"type": "Tag",
  /// 						"id": "5"
  /// 					}
  /// 				]
  /// 			}
  /// 		}
  /// 	}
  /// }
  /// ```
  /// 
  /// On success you will get back a `204 No Content`.
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  assignTags(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/assign_tags`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
