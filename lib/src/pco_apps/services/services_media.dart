/// This file was generated on 2021-11-18T15:28:01.703558


import '../../pco.dart';

/// This class represents a PCO Services Media Object
/// 
/// Application: services
/// Id:          media
/// Type:        Media
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A piece of media
/// 
/// Example:
/// 
/// {"type":"Media","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","themes":"string","title":"string","thumbnail_file_name":"string","thumbnail_content_type":"string","thumbnail_file_size":1,"thumbnail_updated_at":"2000-01-01T12:00:00Z","preview_file_name":"string","preview_content_type":"string","preview_file_size":1,"preview_updated_at":"2000-01-01T12:00:00Z","length":1,"media_type":"string","media_type_name":"string","thumbnail_url":"string","creator_name":"string","preview_url":"string","image_url":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/media
/// 
class PcoServicesMedia extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Media';
  static const String kTypeId = 'media';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'media-organization-media';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/media';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kThemes = 'themes';
  static const kTitle = 'title';
  static const kThumbnailFileName = 'thumbnail_file_name';
  static const kThumbnailContentType = 'thumbnail_content_type';
  static const kThumbnailFileSize = 'thumbnail_file_size';
  static const kThumbnailUpdatedAt = 'thumbnail_updated_at';
  static const kPreviewFileName = 'preview_file_name';
  static const kPreviewContentType = 'preview_content_type';
  static const kPreviewFileSize = 'preview_file_size';
  static const kPreviewUpdatedAt = 'preview_updated_at';
  static const kLength = 'length';
  static const kMediaType = 'media_type';
  static const kMediaTypeName = 'media_type_name';
  static const kThumbnailUrl = 'thumbnail_url';
  static const kCreatorName = 'creator_name';
  static const kPreviewUrl = 'preview_url';
  static const kImageUrl = 'image_url';


  // getters and setters
  @override
  List<String> get createAllowed => ['media_type','title','creator_name','themes'];
  @override
  List<String> get updateAllowed => ['media_type','title','creator_name','themes'];

  String get themes => attributes[kThemes] ?? '';
  String get title => attributes[kTitle] ?? '';
  String get thumbnailFileName => attributes[kThumbnailFileName] ?? '';
  String get thumbnailContentType => attributes[kThumbnailContentType] ?? '';
  int get thumbnailFileSize => attributes[kThumbnailFileSize] ?? 0;
  DateTime get thumbnailUpdatedAt => DateTime.parse(attributes[kThumbnailUpdatedAt] ?? '');
  String get previewFileName => attributes[kPreviewFileName] ?? '';
  String get previewContentType => attributes[kPreviewContentType] ?? '';
  int get previewFileSize => attributes[kPreviewFileSize] ?? 0;
  DateTime get previewUpdatedAt => DateTime.parse(attributes[kPreviewUpdatedAt] ?? '');
  int get length => attributes[kLength] ?? 0;

  /// Possible Values:
  ///- `audio`
  ///- `background_audio`
  ///- `background_image`
  ///- `background_video`
  ///- `countdown`
  ///- `document`
  ///- `drama`
  ///- `image`
  ///- `powerpoint`
  ///- `song_video`
  ///- `video`
  String get mediaType => attributes[kMediaType] ?? '';
  String get mediaTypeName => attributes[kMediaTypeName] ?? '';
  String get thumbnailUrl => attributes[kThumbnailUrl] ?? '';
  String get creatorName => attributes[kCreatorName] ?? '';
  String get previewUrl => attributes[kPreviewUrl] ?? '';
  String get imageUrl => attributes[kImageUrl] ?? '';


  set themes(String s) => attributes[kThemes] = s;
  set title(String s) => attributes[kTitle] = s;

  /// Possible Values:
  ///- `audio`
  ///- `background_audio`
  ///- `background_image`
  ///- `background_video`
  ///- `countdown`
  ///- `document`
  ///- `drama`
  ///- `image`
  ///- `powerpoint`
  ///- `song_video`
  ///- `video`
  set mediaType(String s) => attributes[kMediaType] = s;
  set creatorName(String s) => attributes[kCreatorName] = s;


  PcoServicesMedia() : super(kPcoApplication, kTypeString);
  PcoServicesMedia.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoServicesMedia Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/media;
  static Future<List<PcoServicesMedia>> getManyFromServiceTypeAndPlanAndItemAndMediaIds(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesMedia> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/media';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesMedia.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesMedia Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/media;
  static Future<List<PcoServicesMedia>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoServicesMedia> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/media';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesMedia.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesMedia Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/media;
  static Future<PcoServicesMedia?> getSingleFromServiceTypeAndPlanAndItemAndMediaIds(String serviceTypeId,String planId,String itemId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesMedia?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/media' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesMedia.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesMedia Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/media;
  static Future<PcoServicesMedia?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesMedia?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/media' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesMedia.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesAttachment objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/media/1/attachments
Future<List<PcoServicesAttachment>> getAttachments({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesAttachment> retval = [];
  var url = '$apiEndpoint/attachments';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesAttachment.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesMediaSchedule objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/media/1/media_schedules
Future<List<PcoServicesMediaSchedule>> getMediaSchedules({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesMediaSchedule> retval = [];
  var url = '$apiEndpoint/media_schedules';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesMediaSchedule.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTag objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/media/1/tags
Future<List<PcoServicesTag>> getTags({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesTag> retval = [];
  var url = '$apiEndpoint/tags';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTag.fromJson(itemData));
    }
  }
  return retval;
}
    

}
