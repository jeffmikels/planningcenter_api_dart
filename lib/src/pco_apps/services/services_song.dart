/// This file was generated on 2021-11-17T23:59:27.141583


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
class PcoServicesSong extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'Song';
  static const String typeId = 'song';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'song-organization-songs';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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


  PcoServicesSong() : super(pcoApplication, typeString);
  PcoServicesSong.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesSong Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/song;
  static Future<List<PcoServicesSong>> getManyFromServiceTypeAndPlanAndItemAndSongIds(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesSong> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/song';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesSong.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesSong Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs;
  static Future<List<PcoServicesSong>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoServicesSong> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesSong.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesSong Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/song;
  static Future<PcoServicesSong?> getSingleFromServiceTypeAndPlanAndItemAndSongIds(String serviceTypeId,String planId,String itemId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesSong?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/song' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesSong.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesSong Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs;
  static Future<PcoServicesSong?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesSong?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesSong.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesArrangement objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements
Future<List<PcoServicesArrangement>> getArrangements({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesArrangement> retval = [];
  var url = '$apiEndpoint/arrangements';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesArrangement.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesAttachment objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/attachments
Future<List<PcoServicesAttachment>> getAttachments({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesAttachment> retval = [];
  var url = '$apiEndpoint/attachments';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesAttachment.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesItem objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item
Future<List<PcoServicesItem>> getItemsLastScheduledItem({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesItem> retval = [];
  var url = '$apiEndpoint/last_scheduled_item';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesItem.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesSongSchedule objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/song_schedules
Future<List<PcoServicesSongSchedule>> getSongSchedules({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesSongSchedule> retval = [];
  var url = '$apiEndpoint/song_schedules';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesSongSchedule.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTag objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/tags
Future<List<PcoServicesTag>> getTags({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesTag> retval = [];
  var url = '$apiEndpoint/tags';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTag.fromJson(itemData));
    }
  }
  return retval;
}
    

}
