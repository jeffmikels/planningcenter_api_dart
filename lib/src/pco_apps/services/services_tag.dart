/// This file was generated on 2021-11-18T15:28:01.761105


import '../../pco.dart';

/// This class represents a PCO Services Tag Object
/// 
/// Application: services
/// Id:          tag
/// Type:        Tag
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A tag belonging to a tag group.
/// 
/// Example:
/// 
/// {"type":"Tag","id":"1","attributes":{"name":"string"},"relationships":{"tag_group":{"data":{"type":"TagGroup","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/media/1/tags
/// 
class PcoServicesTag extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Tag';
  static const String kTypeId = 'tag';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'tag-song-tags';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/tags';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kName = 'name';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';




  PcoServicesTag() : super(kPcoApplication, kTypeString);
  PcoServicesTag.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoServicesTag Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/tags;
  static Future<List<PcoServicesTag>> getManyFromSongAndArrangementAndTagIds(String songId,String arrangementId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTag> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/tags';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTag.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesTag Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/media/1/tags;
  static Future<List<PcoServicesTag>> getManyFromMediaAndTagIds(String mediaId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTag> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/media/$mediaId/tags';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTag.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesTag Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/tags;
  static Future<List<PcoServicesTag>> getManyFromPeopleAndTagIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTag> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/tags';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTag.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesTag Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/tags;
  static Future<List<PcoServicesTag>> getManyFromSongAndTagIds(String songId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTag> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/tags';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTag.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesTag Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups/1/tags;
  static Future<List<PcoServicesTag>> getManyFromTagGroupAndTagIds(String tagGroupId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTag> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/tag_groups/$tagGroupId/tags';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTag.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesTag Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/tags;
  static Future<PcoServicesTag?> getSingleFromSongAndArrangementAndTagIds(String songId,String arrangementId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTag?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/tags' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTag.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesTag Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/media/1/tags;
  static Future<PcoServicesTag?> getSingleFromMediaAndTagIds(String mediaId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTag?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/media/$mediaId/tags' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTag.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesTag Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/tags;
  static Future<PcoServicesTag?> getSingleFromPeopleAndTagIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTag?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/tags' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTag.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesTag Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/tags;
  static Future<PcoServicesTag?> getSingleFromSongAndTagIds(String songId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTag?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/tags' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTag.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesTag Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups/1/tags;
  static Future<PcoServicesTag?> getSingleFromTagGroupAndTagIds(String tagGroupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTag?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/tag_groups/$tagGroupId/tags' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTag.fromJson(res.data);
    }
    return retval;
  }




}
