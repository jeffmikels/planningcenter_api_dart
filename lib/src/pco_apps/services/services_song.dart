/// This file was generated on 2022-03-04T15:29:14.084213


import '../../pco.dart';

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
class PcoServicesSong extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Song';
  static const String kTypeId = 'song';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'song-organization-songs';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/songs';

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
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

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
  List<String> get createAllowed => ['title','admin','author','copyright','ccli_number','hidden','themes'];

  @override
  List<String> get updateAllowed => ['title','admin','author','copyright','ccli_number','hidden','themes'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get title => attributes[kTitle] ?? '';
  String get admin => attributes[kAdmin] ?? '';
  String get author => attributes[kAuthor] ?? '';
  String get copyright => attributes[kCopyright] ?? '';
  bool get isHidden => attributes[kHidden] == true;
  String get notes => attributes[kNotes] ?? '';
  String get themes => attributes[kThemes] ?? '';
  String get lastScheduledShortDates => attributes[kLastScheduledShortDates] ?? '';
  DateTime get lastScheduledAt => DateTime.parse(attributes[kLastScheduledAt] ?? '');
  int get ccliNumber => attributes[kCcliNumber] ?? 0;
  

  // setters for object attributes

  
  /// The name of the song.
  /// 
  /// When setting this value on a create you can pass a CCLI number and Services will fetch the song metadata for you.
  set title(String s) => attributes[kTitle] = s;
  set admin(String s) => attributes[kAdmin] = s;
  set author(String s) => attributes[kAuthor] = s;
  set copyright(String s) => attributes[kCopyright] = s;
  set isHidden(bool b) => attributes[kHidden] = b;
  set themes(String s) => attributes[kThemes] = s;
  set ccliNumber(int n) => attributes[kCcliNumber] = n;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesSong() : super(kPcoApplication, kTypeString);
  PcoServicesSong.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesSong] objects (expecting many)
  /// using a path like this: `/services/v2/songs`
  static Future<PcoCollection<PcoServicesSong>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSong.canInclude;
    var url = '/services/v2/songs';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSong>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesSong] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/song`
  static Future<PcoCollection<PcoServicesSong>> getFromServiceTypeAndPlanAndItem(String serviceTypeId,String planId,String itemId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSong.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/song';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSong>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesArrangement] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/arrangements`
  Future<PcoCollection<PcoServicesArrangement>> getArrangements({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesArrangement.canInclude;
    var url = '$apiEndpoint/arrangements';
    return PcoCollection.fromApiCall<PcoServicesArrangement>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/attachments`
  Future<PcoCollection<PcoServicesAttachment>> getAttachments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '$apiEndpoint/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item`
  Future<PcoCollection<PcoServicesItem>> getLastScheduledItem({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    var url = '$apiEndpoint/last_scheduled_item';
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSongSchedule] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/song_schedules`
  /// 
  /// Available Query Filters:
  /// - `three_most_recent`
  Future<PcoCollection<PcoServicesSongSchedule>> getSongSchedules({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSongSchedule.canInclude;
    var url = '$apiEndpoint/song_schedules';
    return PcoCollection.fromApiCall<PcoServicesSongSchedule>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/tags`
  Future<PcoCollection<PcoServicesTag>> getTags({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
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
  Future<PlanningCenterApiResponse> assignTags(Map<String, dynamic> data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/assign_tags';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }


}
