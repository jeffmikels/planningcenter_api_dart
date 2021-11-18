/// This file was generated on 2021-11-17T23:59:27.094691


import '../../pco.dart';

/// This class represents a PCO Services Attachment Object
/// 
/// Application: services
/// Id:          attachment
/// Type:        Attachment
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A file, whether it's stored on Planning Center or linked from another location.
/// 
/// Example:
/// 
/// {"type":"Attachment","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","page_order":"string","updated_at":"2000-01-01T12:00:00Z","filename":"string","file_size":1,"licenses_purchased":1,"licenses_remaining":1,"licenses_used":1,"content_type":"string","display_name":"string","filetype":"string","linked_url":"string","pco_type":"string","remote_link":"string","thumbnail_url":"string","url":"string","allow_mp3_download":true,"web_streamable":true,"downloadable":true,"transposable":true,"streamable":true,"has_preview":true},"relationships":{"attachable":{"data":{"type":"Plan","id":"1"}},"attachment_types":{"data":[{"type":"AttachmentType","id":"1"}]},"created_by":{"data":{"type":"Person","id":"1"}},"updated_by":{"data":{"type":"Person","id":"1"}},"administrator":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/attachments
/// 
class PcoServicesAttachment extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'Attachment';
  static const String typeId = 'attachment';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/attachments';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kPageOrder = 'page_order';
  static const kFilename = 'filename';
  static const kFileSize = 'file_size';
  static const kLicensesPurchased = 'licenses_purchased';
  static const kLicensesRemaining = 'licenses_remaining';
  static const kLicensesUsed = 'licenses_used';
  static const kContentType = 'content_type';
  static const kDisplayName = 'display_name';
  static const kFiletype = 'filetype';
  static const kLinkedUrl = 'linked_url';
  static const kPcoType = 'pco_type';
  static const kRemoteLink = 'remote_link';
  static const kThumbnailUrl = 'thumbnail_url';
  static const kUrl = 'url';
  static const kAllowMp3Download = 'allow_mp3_download';
  static const kWebStreamable = 'web_streamable';
  static const kDownloadable = 'downloadable';
  static const kTransposable = 'transposable';
  static const kStreamable = 'streamable';
  static const kHasPreview = 'has_preview';
  static const kFileUploadIdentifier = 'file_upload_identifier';


  // getters and setters
  @override
  List<String> get createAllowed => ['attachment_type_ids','file_upload_identifier','filename','remote_link','page_order'];
  @override
  List<String> get updateAllowed => ['attachment_type_ids','file_upload_identifier','filename','remote_link','page_order'];

  String get pageOrder => attributes[kPageOrder] ?? '';
  String get filename => attributes[kFilename] ?? '';
  int get fileSize => attributes[kFileSize] ?? 0;
  int get licensesPurchased => attributes[kLicensesPurchased] ?? 0;
  int get licensesRemaining => attributes[kLicensesRemaining] ?? 0;
  int get licensesUsed => attributes[kLicensesUsed] ?? 0;
  String get contentType => attributes[kContentType] ?? '';
  String get displayName => attributes[kDisplayName] ?? '';
  String get filetype => attributes[kFiletype] ?? '';
  String get linkedUrl => attributes[kLinkedUrl] ?? '';
  String get pcoType => attributes[kPcoType] ?? '';
  String get remoteLink => attributes[kRemoteLink] ?? '';
  String get thumbnailUrl => attributes[kThumbnailUrl] ?? '';
  String get url => attributes[kUrl] ?? '';
  bool get isAllowMp3Download => attributes[kAllowMp3Download] == true;
  bool get isWebStreamable => attributes[kWebStreamable] == true;
  bool get isDownloadable => attributes[kDownloadable] == true;
  bool get isTransposable => attributes[kTransposable] == true;
  bool get isStreamable => attributes[kStreamable] == true;
  bool get isHasPreview => attributes[kHasPreview] == true;
  String get fileUploadIdentifier => attributes[kFileUploadIdentifier] ?? '';


  set pageOrder(String s) => attributes[kPageOrder] = s;
  set filename(String s) => attributes[kFilename] = s;
  set remoteLink(String s) => attributes[kRemoteLink] = s;
  set fileUploadIdentifier(String s) => attributes[kFileUploadIdentifier] = s;


  PcoServicesAttachment() : super(pcoApplication, typeString);
  PcoServicesAttachment.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/attachments;
  static Future<List<PcoServicesAttachment>> getManyFromSongAndArrangementAndAttachmentIds(String songId,String arrangementId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesAttachment> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/attachments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesAttachment.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/attachments;
  static Future<List<PcoServicesAttachment>> getManyFromServiceTypeAndPlanAndItemAndAttachmentIds(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesAttachment> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/attachments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesAttachment.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_attachment;
  static Future<List<PcoServicesAttachment>> getManyFromServiceTypeAndPlanAndItemAndSelectedAttachmentIds(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesAttachment> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/selected_attachment';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesAttachment.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_background;
  static Future<List<PcoServicesAttachment>> getManyFromServiceTypeAndPlanAndItemAndSelectedBackgroundIds(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesAttachment> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/selected_background';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesAttachment.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys/1/attachments;
  static Future<List<PcoServicesAttachment>> getManyFromSongAndArrangementAndKeyAndAttachmentIds(String songId,String arrangementId,String keyId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesAttachment> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/keys/$keyId/attachments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesAttachment.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/media/1/attachments;
  static Future<List<PcoServicesAttachment>> getManyFromMediaAndAttachmentIds(String mediaId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesAttachment> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/media/$mediaId/attachments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesAttachment.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/all_attachments;
  static Future<List<PcoServicesAttachment>> getManyFromServiceTypeAndPlanAndAllAttachmentIds(String serviceTypeId,String planId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesAttachment> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/all_attachments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesAttachment.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/attachments;
  static Future<List<PcoServicesAttachment>> getManyFromServiceTypeAndPlanAndAttachmentIds(String serviceTypeId,String planId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesAttachment> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/attachments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesAttachment.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/attachments;
  static Future<List<PcoServicesAttachment>> getManyFromServiceTypeAndAttachmentIds(String serviceTypeId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesAttachment> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/attachments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesAttachment.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/attachments;
  static Future<List<PcoServicesAttachment>> getManyFromSongAndAttachmentIds(String songId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesAttachment> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/attachments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesAttachment.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/attachments;
  static Future<PcoServicesAttachment?> getSingleFromSongAndArrangementAndAttachmentIds(String songId,String arrangementId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesAttachment?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/attachments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesAttachment.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/attachments;
  static Future<PcoServicesAttachment?> getSingleFromServiceTypeAndPlanAndItemAndAttachmentIds(String serviceTypeId,String planId,String itemId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesAttachment?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/attachments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesAttachment.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_attachment;
  static Future<PcoServicesAttachment?> getSingleFromServiceTypeAndPlanAndItemAndSelectedAttachmentIds(String serviceTypeId,String planId,String itemId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesAttachment?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/selected_attachment' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesAttachment.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_background;
  static Future<PcoServicesAttachment?> getSingleFromServiceTypeAndPlanAndItemAndSelectedBackgroundIds(String serviceTypeId,String planId,String itemId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesAttachment?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/selected_background' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesAttachment.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys/1/attachments;
  static Future<PcoServicesAttachment?> getSingleFromSongAndArrangementAndKeyAndAttachmentIds(String songId,String arrangementId,String keyId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesAttachment?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/keys/$keyId/attachments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesAttachment.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/media/1/attachments;
  static Future<PcoServicesAttachment?> getSingleFromMediaAndAttachmentIds(String mediaId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesAttachment?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/media/$mediaId/attachments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesAttachment.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/all_attachments;
  static Future<PcoServicesAttachment?> getSingleFromServiceTypeAndPlanAndAllAttachmentIds(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesAttachment?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/all_attachments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesAttachment.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/attachments;
  static Future<PcoServicesAttachment?> getSingleFromServiceTypeAndPlanAndAttachmentIds(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesAttachment?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/attachments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesAttachment.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/attachments;
  static Future<PcoServicesAttachment?> getSingleFromServiceTypeAndAttachmentIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesAttachment?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/attachments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesAttachment.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/attachments;
  static Future<PcoServicesAttachment?> getSingleFromSongAndAttachmentIds(String songId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesAttachment?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/attachments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesAttachment.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesZoom objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/attachments/1/zooms
Future<List<PcoServicesZoom>> getZooms({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesZoom> retval = [];
  var url = '$apiEndpoint/zooms';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesZoom.fromJson(itemData));
    }
  }
  return retval;
}
    

}
