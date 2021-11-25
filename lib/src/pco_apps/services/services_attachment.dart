/// This file was generated on 2021-11-25T00:07:20.227678


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
/// possible includes with parameter ?include=a,b
/// @zooms: include associated zooms 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @licenses_purchased (URLParameter), query on a specific licenses_purchased, example: ?where[licenses_purchased]=1
/// possible orderings with parameter ?order=
/// @attachable_type (URLParameter), prefix with a hyphen (-attachable_type) to reverse the order
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @filename (URLParameter), prefix with a hyphen (-filename) to reverse the order
/// @filetype (URLParameter), prefix with a hyphen (-filetype) to reverse the order
/// @size (URLParameter), prefix with a hyphen (-size) to reverse the order
///
class PcoServicesAttachment extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Attachment';
  static const String kTypeId = 'attachment';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/attachments';

  /// possible includes with parameter ?include=a,b
  /// @zooms: include associated zooms 
  static List<String> get canInclude => ['zooms'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @licenses_purchased (URLParameter), query on a specific licenses_purchased, example: ?where[licenses_purchased]=1
  static List<String> get canQuery => ['licenses_purchased'];

  /// possible orderings with parameter ?order=
  /// @attachable_type (URLParameter), prefix with a hyphen (-attachable_type) to reverse the order
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @filename (URLParameter), prefix with a hyphen (-filename) to reverse the order
  /// @filetype (URLParameter), prefix with a hyphen (-filetype) to reverse the order
  /// @size (URLParameter), prefix with a hyphen (-size) to reverse the order
  static List<String> get canOrderBy => ['attachable_type','created_at','filename','filetype','size'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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


  PcoServicesAttachment() : super(kPcoApplication, kTypeString);
  PcoServicesAttachment.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/attachments;
  static Future<PcoCollection<PcoServicesAttachment>> getManyFromSongAndArrangementAndAttachment(String songId,String arrangementId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/attachments;
  static Future<PcoCollection<PcoServicesAttachment>> getManyFromServiceTypeAndPlanAndItemAndAttachment(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_attachment;
  static Future<PcoCollection<PcoServicesAttachment>> getManyFromServiceTypeAndPlanAndItemAndSelectedAttachment(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/selected_attachment';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_background;
  static Future<PcoCollection<PcoServicesAttachment>> getManyFromServiceTypeAndPlanAndItemAndSelectedBackground(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/selected_background';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys/1/attachments;
  static Future<PcoCollection<PcoServicesAttachment>> getManyFromSongAndArrangementAndKeyAndAttachment(String songId,String arrangementId,String keyId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/keys/$keyId/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/media/1/attachments;
  static Future<PcoCollection<PcoServicesAttachment>> getManyFromMediaAndAttachment(String mediaId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/media/$mediaId/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/all_attachments;
  static Future<PcoCollection<PcoServicesAttachment>> getManyFromServiceTypeAndPlanAndAllAttachment(String serviceTypeId,String planId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/all_attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/attachments;
  static Future<PcoCollection<PcoServicesAttachment>> getManyFromServiceTypeAndPlanAndAttachment(String serviceTypeId,String planId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/attachments;
  static Future<PcoCollection<PcoServicesAttachment>> getManyFromServiceTypeAndAttachment(String serviceTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/attachments;
  static Future<PcoCollection<PcoServicesAttachment>> getManyFromSongAndAttachment(String songId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/songs/$songId/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/attachments;
  static Future<PcoCollection<PcoServicesAttachment>> getSingleFromSongAndArrangementAndAttachment(String songId,String arrangementId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/attachments' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesAttachment.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/attachments;
  static Future<PcoCollection<PcoServicesAttachment>> getSingleFromServiceTypeAndPlanAndItemAndAttachment(String serviceTypeId,String planId,String itemId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/attachments' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesAttachment.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_attachment;
  static Future<PcoCollection<PcoServicesAttachment>> getSingleFromServiceTypeAndPlanAndItemAndSelectedAttachment(String serviceTypeId,String planId,String itemId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/selected_attachment' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesAttachment.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_background;
  static Future<PcoCollection<PcoServicesAttachment>> getSingleFromServiceTypeAndPlanAndItemAndSelectedBackground(String serviceTypeId,String planId,String itemId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/selected_background' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesAttachment.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys/1/attachments;
  static Future<PcoCollection<PcoServicesAttachment>> getSingleFromSongAndArrangementAndKeyAndAttachment(String songId,String arrangementId,String keyId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/keys/$keyId/attachments' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesAttachment.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/media/1/attachments;
  static Future<PcoCollection<PcoServicesAttachment>> getSingleFromMediaAndAttachment(String mediaId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/media/$mediaId/attachments' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesAttachment.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/all_attachments;
  static Future<PcoCollection<PcoServicesAttachment>> getSingleFromServiceTypeAndPlanAndAllAttachment(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/all_attachments' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesAttachment.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/attachments;
  static Future<PcoCollection<PcoServicesAttachment>> getSingleFromServiceTypeAndPlanAndAttachment(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/attachments' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesAttachment.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/attachments;
  static Future<PcoCollection<PcoServicesAttachment>> getSingleFromServiceTypeAndAttachment(String serviceTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/attachments' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesAttachment.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/attachments;
  static Future<PcoCollection<PcoServicesAttachment>> getSingleFromSongAndAttachment(String songId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/songs/$songId/attachments' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesAttachment.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoServicesZoom objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/attachments/1/zooms
Future<PcoCollection<PcoServicesZoom>> getZooms({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesZoom.canInclude;
  var url = '$apiEndpoint/zooms';
  return PcoCollection.fromApiCall<PcoServicesZoom>(url, query: query, apiVersion:apiVersion);
}
    

/// ACTION: open
/// This action is used to get the attachment file URL.  It is accessed by `POST`ing to `.../attachments/1/open`
/// This will generate the URL and return it in the `attachment_url` attribute of the `AttachmentActivity`.
/// 
/// using a path like this: https://api.planningcenteronline.com/services/v2/attachments/1/open
/// 
/// Details:
/// *PlanningCenter API Docs don't cover this action very well*
Future<PlanningCenterApiResponse> open(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/open';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
/// ACTION: preview
/// This action is used to get a reduced resolution (preview) version of the attachment.  It is accessed by `POST`ing to `.../attachments/1/preview`
/// This will generate the URL and return it in the `attachment_url` attribute of the `AttachmentActivity`.
/// The `has_preview` attribute of an `Attachment` indicates if a preview is available. When a preview is not available this action will return a `Not Found` error with a status code of `404`.
/// 
/// using a path like this: https://api.planningcenteronline.com/services/v2/attachments/1/preview
/// 
/// Details:
/// *PlanningCenter API Docs don't cover this action very well*
Future<PlanningCenterApiResponse> preview(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/preview';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
}
