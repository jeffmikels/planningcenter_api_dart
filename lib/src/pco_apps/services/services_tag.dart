/// This file was generated on 2021-11-25T00:07:20.290022


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesTag extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Tag';
  static const String kTypeId = 'tag';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'tag-song-tags';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/tags';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  PcoServicesTag.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesTag Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/tags;
  static Future<PcoCollection<PcoServicesTag>> getManyFromSongAndArrangementAndTag(String songId,String arrangementId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/tags';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesTag Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/media/1/tags;
  static Future<PcoCollection<PcoServicesTag>> getManyFromMediaAndTag(String mediaId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '/services/v2/media/$mediaId/tags';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesTag Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/tags;
  static Future<PcoCollection<PcoServicesTag>> getManyFromPeopleAndTag(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '/services/v2/people/$peopleId/tags';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesTag Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/tags;
  static Future<PcoCollection<PcoServicesTag>> getManyFromSongAndTag(String songId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '/services/v2/songs/$songId/tags';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesTag Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups/1/tags;
  static Future<PcoCollection<PcoServicesTag>> getManyFromTagGroupAndTag(String tagGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '/services/v2/tag_groups/$tagGroupId/tags';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoServicesTag Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/tags;
  static Future<PcoCollection<PcoServicesTag>> getSingleFromSongAndArrangementAndTag(String songId,String arrangementId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/tags' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesTag.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesTag Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/media/1/tags;
  static Future<PcoCollection<PcoServicesTag>> getSingleFromMediaAndTag(String mediaId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '/services/v2/media/$mediaId/tags' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesTag.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesTag Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/tags;
  static Future<PcoCollection<PcoServicesTag>> getSingleFromPeopleAndTag(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '/services/v2/people/$peopleId/tags' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesTag.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesTag Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/tags;
  static Future<PcoCollection<PcoServicesTag>> getSingleFromSongAndTag(String songId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '/services/v2/songs/$songId/tags' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesTag.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesTag Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups/1/tags;
  static Future<PcoCollection<PcoServicesTag>> getSingleFromTagGroupAndTag(String tagGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '/services/v2/tag_groups/$tagGroupId/tags' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesTag.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }





}
