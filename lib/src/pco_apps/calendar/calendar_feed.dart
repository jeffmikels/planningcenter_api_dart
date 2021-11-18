/// This file was generated on 2021-11-17T23:59:29.994586


import '../../pco.dart';

/// This class represents a PCO Calendar Feed Object
/// 
/// Application: calendar
/// Id:          feed
/// Type:        Feed
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// A feed belonging to an organization.\n
/// 
/// Example:
/// 
/// {"type":"Feed","id":"1","attributes":{"default_church_center_visibility":"value","feed_type":"value","name":"string","imported_at":"2000-01-01T12:00:00Z","can_delete":true},"relationships":{"event_owner":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/feeds
/// 
class PcoCalendarFeed extends PcoResource {
  static const String pcoApplication = 'calendar';
  static const String typeString = 'Feed';
  static const String typeId = 'feed';
  static const String apiVersion = '2020-04-08';
  static const String shortestEdgeId = 'feed-organization-feeds';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/feeds';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kDefaultChurchCenterVisibility = 'default_church_center_visibility';
  static const kFeedType = 'feed_type';
  static const kName = 'name';
  static const kImportedAt = 'imported_at';
  static const kCanDelete = 'can_delete';


  // getters and setters
  @override
  List<String> get createAllowed => ['feed_type','event_owner_id','default_church_center_visibility'];
  @override
  List<String> get updateAllowed => ['event_owner_id','default_church_center_visibility'];


  /// Possible values: `hidden` or `published`
  String get defaultChurchCenterVisibility => attributes[kDefaultChurchCenterVisibility] ?? '';

  /// Possible values: `registrations`, `groups`, or `ical`
  String get feedType => attributes[kFeedType] ?? '';
  String get name => attributes[kName] ?? '';
  DateTime get importedAt => DateTime.parse(attributes[kImportedAt] ?? '');
  bool get isCanDelete => attributes[kCanDelete] == true;



  /// Possible values: `hidden` or `published`
  set defaultChurchCenterVisibility(String s) => attributes[kDefaultChurchCenterVisibility] = s;

  /// Possible values: `registrations`, `groups`, or `ical`
  set feedType(String s) => attributes[kFeedType] = s;


  PcoCalendarFeed() : super(pcoApplication, typeString);
  PcoCalendarFeed.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCalendarFeed Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/feed;
  static Future<List<PcoCalendarFeed>> getManyFromEventAndFeedIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarFeed> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/events/$eventId/feed';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarFeed.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarFeed Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/feeds;
  static Future<List<PcoCalendarFeed>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarFeed> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/feeds';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarFeed.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarFeed Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/feed;
  static Future<PcoCalendarFeed?> getSingleFromEventAndFeedIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarFeed?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/events/$eventId/feed' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarFeed.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarFeed Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/feeds;
  static Future<PcoCalendarFeed?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarFeed?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/feeds' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarFeed.fromJson(res.data);
    }
    return retval;
  }




}
