/// This file was generated on 2021-11-22T16:57:41.223307


import '../../pco.dart';

/// This class represents a PCO Services Song Object
/// 
/// Application: services
/// Id:          song
/// Type:        Song
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A song
/// 
/// Example:
/// 
/// {"type":"Song","id":"1","attributes":{"title":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","admin":"string","author":"string","copyright":"string","hidden":true,"notes":"string","themes":"string","last_scheduled_short_dates":"string","last_scheduled_at":"2000-01-01T12:00:00Z","ccli_number":1},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/songs
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @author (URLParameter), query on a specific author, example: ?where[author]=string
/// @ccli_number (URLParameter), query on a specific ccli_number, example: ?where[ccli_number]=1
/// @hidden (URLParameter), query on a specific hidden, example: ?where[hidden]=true
/// @themes (URLParameter), query on a specific themes, example: ?where[themes]=string
/// @title (URLParameter), query on a specific title, example: ?where[title]=string
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @last_scheduled_at (URLParameter), prefix with a hyphen (-last_scheduled_at) to reverse the order
/// @title (URLParameter), prefix with a hyphen (-title) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoServicesSong extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Song';
  static const String kTypeId = 'song';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'song-organization-songs';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @author (URLParameter), query on a specific author, example: ?where[author]=string
  /// @ccli_number (URLParameter), query on a specific ccli_number, example: ?where[ccli_number]=1
  /// @hidden (URLParameter), query on a specific hidden, example: ?where[hidden]=true
  /// @themes (URLParameter), query on a specific themes, example: ?where[themes]=string
  /// @title (URLParameter), query on a specific title, example: ?where[title]=string
  static List<String> get canQuery => ['author','ccli_number','hidden','themes','title'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @last_scheduled_at (URLParameter), prefix with a hyphen (-last_scheduled_at) to reverse the order
  /// @title (URLParameter), prefix with a hyphen (-title) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','last_scheduled_at','title','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kTitle = 'title';
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


  /// The name of the song.
  ///When setting this value on a create you can pass a CCLI number and Services will fetch the song metadata for you.
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



  /// The name of the song.
  ///When setting this value on a create you can pass a CCLI number and Services will fetch the song metadata for you.
  set title(String s) => attributes[kTitle] = s;
  set admin(String s) => attributes[kAdmin] = s;
  set author(String s) => attributes[kAuthor] = s;
  set copyright(String s) => attributes[kCopyright] = s;
  set isHidden(bool b) => attributes[kHidden] = b;
  set themes(String s) => attributes[kThemes] = s;
  set ccliNumber(int n) => attributes[kCcliNumber] = n;


  PcoServicesSong() : super(kPcoApplication, kTypeString);
  PcoServicesSong.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesSong Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/song;
  static Future<List<PcoServicesSong>> getManyFromServiceTypeAndPlanAndItemAndSongIds(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesSong> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSong.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/song';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesSong.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesSong Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs;
  static Future<List<PcoServicesSong>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesSong> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSong.canInclude;
    var url = '/services/v2/songs';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesSong.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesSong Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/song;
  static Future<PcoServicesSong?> getSingleFromServiceTypeAndPlanAndItemAndSongIds(String serviceTypeId,String planId,String itemId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesSong?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSong.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/song' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesSong.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesSong Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs;
  static Future<PcoServicesSong?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesSong?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSong.canInclude;
    var url = '/services/v2/songs' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesSong.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesArrangement objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements
Future<List<PcoServicesArrangement>> getArrangements({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesArrangement.canInclude;
  List<PcoServicesArrangement> retval = [];
  var url = '$apiEndpoint/arrangements';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesArrangement.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesAttachment objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/attachments
Future<List<PcoServicesAttachment>> getAttachments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesAttachment.canInclude;
  List<PcoServicesAttachment> retval = [];
  var url = '$apiEndpoint/attachments';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesAttachment.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesItem objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item
Future<List<PcoServicesItem>> getItemsLastScheduledItem({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesItem.canInclude;
  List<PcoServicesItem> retval = [];
  var url = '$apiEndpoint/last_scheduled_item';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesItem.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesSongSchedule objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/song_schedules
Future<List<PcoServicesSongSchedule>> getSongSchedules({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesSongSchedule.canInclude;
  List<PcoServicesSongSchedule> retval = [];
  var url = '$apiEndpoint/song_schedules';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesSongSchedule.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTag objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/tags
Future<List<PcoServicesTag>> getTags({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTag.canInclude;
  List<PcoServicesTag> retval = [];
  var url = '$apiEndpoint/tags';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTag.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

/// ACTION: assign_tags
/// Used to assign tags to a song.
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/assign_tags
/// 
/// Details:
/// All tags will be replaced so the full data set must be sent.
/// It expects a body that looks like:
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
/// On success you will get back a `204 No Content`.
/// 
Future<PlanningCenterApiResponse> assignTags(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/assign_tags';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
}
