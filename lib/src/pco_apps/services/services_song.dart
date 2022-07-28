/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.608356
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// This class represents a PCO Services Song Object
/// 
/// - Application:        services
/// - Id:                 song
/// - Type:               Song
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/songs
/// 
/// ## Instantiation
/// - Create a new instance using the `PcoServicesSong()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesSong.fromJson()` constructor.
/// - Manually create an object using the `PcoServicesSong.manual()` constructor.
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
/// A song
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `title` (rw) -> PCO: `title`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `admin` (rw) -> PCO: `admin`
/// - `author` (rw) -> PCO: `author`
/// - `copyright` (rw) -> PCO: `copyright`
/// - `isHidden` (rw) -> PCO: `hidden`
/// - `notes` (ro) -> PCO: `notes`
/// - `themes` (rw) -> PCO: `themes`
/// - `lastScheduledShortDates` (ro) -> PCO: `last_scheduled_short_dates`
/// - `lastScheduledAt` (ro) -> PCO: `last_scheduled_at`
/// - `ccliNumber` (rw) -> PCO: `ccli_number`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// - `author`: (URLParameter), query on a specific author, example: ?where[author]=string
/// - `ccli_number`: (URLParameter), query on a specific ccli_number, example: ?where[ccli_number]=1
/// - `hidden`: (URLParameter), query on a specific hidden, example: ?where[hidden]=true
/// - `themes`: (URLParameter), query on a specific themes, example: ?where[themes]=string
/// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `last_scheduled_at`: (URLParameter), prefix with a hyphen (-last_scheduled_at) to reverse the order
/// - `title`: (URLParameter), prefix with a hyphen (-title) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `arrangement-song-arrangements`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements
/// - `attachment-song-attachments`: https://api.planningcenteronline.com/services/v2/songs/1/attachments
/// - `item-song-last_scheduled_item`: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item
/// - `songschedule-song-song_schedules`: https://api.planningcenteronline.com/services/v2/songs/1/song_schedules
/// - `tag-song-tags`: https://api.planningcenteronline.com/services/v2/songs/1/tags
/// 
/// Inbound Edges:
/// - `song-item-song`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/song
/// - `song-organization-songs`: https://api.planningcenteronline.com/services/v2/songs
/// 
/// Actions:
/// - `assign_tags`: https://api.planningcenteronline.com/services/v2/songs/1/assign_tags
///
/// ## Raw Data Object Example
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
class PcoServicesSong extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Song';
  static const String kTypeId = 'song';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/songs';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `author`: (URLParameter), query on a specific author, example: ?where[author]=string
  /// - `ccli_number`: (URLParameter), query on a specific ccli_number, example: ?where[ccli_number]=1
  /// - `hidden`: (URLParameter), query on a specific hidden, example: ?where[hidden]=true
  /// - `themes`: (URLParameter), query on a specific themes, example: ?where[themes]=string
  /// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
  static List<String> get canQuery => ['author','ccli_number','hidden','themes','title'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `last_scheduled_at`: (URLParameter), prefix with a hyphen (-last_scheduled_at) to reverse the order
  /// - `title`: (URLParameter), prefix with a hyphen (-title) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','last_scheduled_at','title','updated_at'];

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
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kAdmin = 'admin';
  static const kAuthor = 'author';
  static const kCopyright = 'copyright';
  static const kHidden = 'hidden';
  static const kNotes = 'notes';
  static const kThemes = 'themes';
  static const kLastScheduledShortDates = 'last_scheduled_short_dates';
  static const kLastScheduledAt = 'last_scheduled_at';
  static const kCcliNumber = 'ccli_number';


  // getters and setters
  @override
  List<String> get createAllowed => ['title', 'admin', 'author', 'copyright', 'ccli_number', 'hidden', 'themes'];

  @override
  List<String> get updateAllowed => ['title', 'admin', 'author', 'copyright', 'ccli_number', 'hidden', 'themes'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get title => _attributes[kTitle] ?? '';
  String get admin => _attributes[kAdmin] ?? '';
  String get author => _attributes[kAuthor] ?? '';
  String get copyright => _attributes[kCopyright] ?? '';
  bool get isHidden => _attributes[kHidden] == true;
  String get notes => _attributes[kNotes] ?? '';
  String get themes => _attributes[kThemes] ?? '';
  String get lastScheduledShortDates => _attributes[kLastScheduledShortDates] ?? '';
  DateTime get lastScheduledAt => DateTime.parse(_attributes[kLastScheduledAt] ?? '');
  int get ccliNumber => _attributes[kCcliNumber] ?? 0;
  
  // setters for object attributes
  
  /// The name of the song.
  /// 
  /// When setting this value on a create you can pass a CCLI number and Services will fetch the song metadata for you.
  
  /// pass `null` to remove key from attributes
  set title(String? x) => (x == null) ? _attributes.remove(kTitle) : _attributes[kTitle] = x;
  
  /// pass `null` to remove key from attributes
  set admin(String? x) => (x == null) ? _attributes.remove(kAdmin) : _attributes[kAdmin] = x;
  
  /// pass `null` to remove key from attributes
  set author(String? x) => (x == null) ? _attributes.remove(kAuthor) : _attributes[kAuthor] = x;
  
  /// pass `null` to remove key from attributes
  set copyright(String? x) => (x == null) ? _attributes.remove(kCopyright) : _attributes[kCopyright] = x;
  
  /// pass `null` to remove key from attributes
  set isHidden(bool? x) => (x == null) ? _attributes.remove(kHidden) : _attributes[kHidden] = x;
  
  /// pass `null` to remove key from attributes
  set themes(String? x) => (x == null) ? _attributes.remove(kThemes) : _attributes[kThemes] = x;
  
  /// pass `null` to remove key from attributes
  set ccliNumber(int? x) => (x == null) ? _attributes.remove(kCcliNumber) : _attributes[kCcliNumber] = x;

  // Class Constructors
  PcoServicesSong.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  PcoServicesSong.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesSong] object using this endpoint: `https://api.planningcenteronline.com/services/v2/songs`
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: `title`, `admin`, `author`, `copyright`, `ccliNumber`, `isHidden`, `themes`
  /// - FIELDS USED WHEN UPDATING: `title`, `admin`, `author`, `copyright`, `ccliNumber`, `isHidden`, `themes`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoServicesSong({String? id, String? title, DateTime? createdAt, DateTime? updatedAt, String? admin, String? author, String? copyright, bool? isHidden, String? notes, String? themes, String? lastScheduledShortDates, DateTime? lastScheduledAt, int? ccliNumber, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoServicesSong.empty();
    obj._id = id;
    obj._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/songs';
    if (title != null) obj._attributes['title'] = title;
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (admin != null) obj._attributes['admin'] = admin;
    if (author != null) obj._attributes['author'] = author;
    if (copyright != null) obj._attributes['copyright'] = copyright;
    if (isHidden != null) obj._attributes['hidden'] = isHidden;
    if (notes != null) obj._attributes['notes'] = notes;
    if (themes != null) obj._attributes['themes'] = themes;
    if (lastScheduledShortDates != null) obj._attributes['last_scheduled_short_dates'] = lastScheduledShortDates;
    if (lastScheduledAt != null) obj._attributes['last_scheduled_at'] = lastScheduledAt.toIso8601String();
    if (ccliNumber != null) obj._attributes['ccli_number'] = ccliNumber;
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



  /// Will get a collection of [PcoServicesSong] objects (expecting many)
  /// using a path like this: `/services/v2/songs`
  static Future<PcoCollection<PcoServicesSong>> get( {String? id, PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '/services/v2/songs';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSong>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesSong] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/song`
  static Future<PcoCollection<PcoServicesSong>> getFromServiceTypeAndPlanAndItem(String serviceTypeId,String planId,String itemId, {String? id, PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/song';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSong>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesArrangement] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/arrangements`
  Future<PcoCollection<PcoServicesArrangement>> getArrangements({PlanningCenterApiQuery? query, bool includeAll = false, bool includeKeys = false, bool includeSections = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoServicesSong.canInclude);
    if (includeKeys) query.include.add('keys');
    if (includeSections) query.include.add('sections');
    var url = '$apiEndpoint/arrangements';
    return PcoCollection.fromApiCall<PcoServicesArrangement>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/attachments`
  Future<PcoCollection<PcoServicesAttachment>> getAttachments({PlanningCenterApiQuery? query, bool includeZooms = false,}) async {
    query ??= PlanningCenterApiQuery();
    
    if (includeZooms) query.include.add('zooms');
    var url = '$apiEndpoint/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item`
  Future<PcoCollection<PcoServicesItem>> getLastScheduledItem({PlanningCenterApiQuery? query, bool includeAll = false, bool includeArrangement = false, bool includeItemNotes = false, bool includeItemTimes = false, bool includeKey = false, bool includeMedia = false, bool includeSelectedAttachment = false, bool includeSong = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoServicesSong.canInclude);
    if (includeArrangement) query.include.add('arrangement');
    if (includeItemNotes) query.include.add('item_notes');
    if (includeItemTimes) query.include.add('item_times');
    if (includeKey) query.include.add('key');
    if (includeMedia) query.include.add('media');
    if (includeSelectedAttachment) query.include.add('selected_attachment');
    if (includeSong) query.include.add('song');
    var url = '$apiEndpoint/last_scheduled_item';
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSongSchedule] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/song_schedules`
  /// 
  /// Available Query Filters:
  /// - `three_most_recent`
  Future<PcoCollection<PcoServicesSongSchedule>> getSongSchedules({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/song_schedules';
    return PcoCollection.fromApiCall<PcoServicesSongSchedule>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/tags`
  Future<PcoCollection<PcoServicesTag>> getTags({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion: apiVersion);
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
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
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
  Future<PlanningCenterApiResponse> assignTags(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/assign_tags';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
