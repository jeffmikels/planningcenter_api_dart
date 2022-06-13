/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:58:55.497729
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Services Attachment Object
///
/// - Application:        services
/// - Id:                 attachment
/// - Type:               Attachment
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/attachments
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/attachments
///
/// ## Description
/// A file, whether it's stored on Planning Center or linked from another location.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `pageOrder` (rw) -> PCO: `page_order`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `filename` (rw) -> PCO: `filename`
/// - `fileSize` (ro) -> PCO: `file_size`
/// - `licensesPurchased` (ro) -> PCO: `licenses_purchased`
/// - `licensesRemaining` (ro) -> PCO: `licenses_remaining`
/// - `licensesUsed` (ro) -> PCO: `licenses_used`
/// - `contentType` (ro) -> PCO: `content_type`
/// - `displayName` (ro) -> PCO: `display_name`
/// - `filetype` (ro) -> PCO: `filetype`
/// - `linkedUrl` (ro) -> PCO: `linked_url`
/// - `pcoType` (ro) -> PCO: `pco_type`
/// - `remoteLink` (rw) -> PCO: `remote_link`
/// - `thumbnailUrl` (ro) -> PCO: `thumbnail_url`
/// - `url` (ro) -> PCO: `url`
/// - `isAllowMp3Download` (ro) -> PCO: `allow_mp3_download`
/// - `isWebStreamable` (ro) -> PCO: `web_streamable`
/// - `isDownloadable` (ro) -> PCO: `downloadable`
/// - `isTransposable` (ro) -> PCO: `transposable`
/// - `isStreamable` (ro) -> PCO: `streamable`
/// - `isHasPreview` (ro) -> PCO: `has_preview`
/// - `fileUploadIdentifier` (rw) -> PCO: `file_upload_identifier`
/// - `attachmentTypeIds` (wo) -> PCO: `attachment_type_ids`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `zooms`: include associated zooms
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `licenses_purchased`: (URLParameter), query on a specific licenses_purchased, example: ?where[licenses_purchased]=1
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `attachable_type`: (URLParameter), prefix with a hyphen (-attachable_type) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `filename`: (URLParameter), prefix with a hyphen (-filename) to reverse the order
/// - `filetype`: (URLParameter), prefix with a hyphen (-filetype) to reverse the order
/// - `size`: (URLParameter), prefix with a hyphen (-size) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `zoom-attachment-zooms`: https://api.planningcenteronline.com/services/v2/attachments/1/zooms
///
/// Inbound Edges:
/// - `attachment-arrangement-attachments`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/attachments
/// - `attachment-item-attachments`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/attachments
/// - `attachment-item-selected_attachment`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_attachment
/// - `attachment-item-selected_background`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/selected_background
/// - `attachment-key-attachments`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys/1/attachments
/// - `attachment-media-attachments`: https://api.planningcenteronline.com/services/v2/media/1/attachments
/// - `attachment-plan-all_attachments`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/all_attachments
/// - `attachment-plan-attachments`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/attachments
/// - `attachment-servicetype-attachments`: https://api.planningcenteronline.com/services/v2/service_types/1/attachments
/// - `attachment-song-attachments`: https://api.planningcenteronline.com/services/v2/songs/1/attachments
///
/// Actions:
/// - `open`: https://api.planningcenteronline.com/services/v2/attachments/1/open
/// - `preview`: https://api.planningcenteronline.com/services/v2/attachments/1/preview
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Attachment",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "page_order": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "filename": "string",
///     "file_size": 1,
///     "licenses_purchased": 1,
///     "licenses_remaining": 1,
///     "licenses_used": 1,
///     "content_type": "string",
///     "display_name": "string",
///     "filetype": "string",
///     "linked_url": "string",
///     "pco_type": "string",
///     "remote_link": "string",
///     "thumbnail_url": "string",
///     "url": "string",
///     "allow_mp3_download": true,
///     "web_streamable": true,
///     "downloadable": true,
///     "transposable": true,
///     "streamable": true,
///     "has_preview": true
///   },
///   "relationships": {
///     "attachable": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "attachment_types": {
///       "data": [
///         {
///           "type": "AttachmentType",
///           "id": "1"
///         }
///       ]
///     },
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "updated_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "administrator": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesAttachment extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Attachment';
  static const String kTypeId = 'attachment';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/attachments';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/attachments';

  /// possible includes with parameter ?include=a,b
  /// - `zooms`: include associated zooms
  static List<String> get canInclude => ['zooms'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `licenses_purchased`: (URLParameter), query on a specific licenses_purchased, example: ?where[licenses_purchased]=1
  static List<String> get canQuery => ['licenses_purchased'];

  /// possible orderings with parameter ?order=
  /// - `attachable_type`: (URLParameter), prefix with a hyphen (-attachable_type) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `filename`: (URLParameter), prefix with a hyphen (-filename) to reverse the order
  /// - `filetype`: (URLParameter), prefix with a hyphen (-filetype) to reverse the order
  /// - `size`: (URLParameter), prefix with a hyphen (-size) to reverse the order
  static List<String> get canOrderBy =>
      ['attachable_type', 'created_at', 'filename', 'filetype', 'size'];

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
  static const kCreatedAt = 'created_at';
  static const kPageOrder = 'page_order';
  static const kUpdatedAt = 'updated_at';
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
  static const kAttachmentTypeIds = 'attachment_type_ids';

  // getters and setters
  @override
  List<String> get createAllowed => [
        'attachment_type_ids',
        'file_upload_identifier',
        'filename',
        'remote_link',
        'page_order'
      ];

  @override
  List<String> get updateAllowed => [
        'attachment_type_ids',
        'file_upload_identifier',
        'filename',
        'remote_link',
        'page_order'
      ];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
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

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set pageOrder(String? x) =>
      (x == null) ? attributes.remove(kPageOrder) : attributes[kPageOrder] = x;

  /// pass `null` to remove key from attributes
  set filename(String? x) =>
      (x == null) ? attributes.remove(kFilename) : attributes[kFilename] = x;

  /// pass `null` to remove key from attributes
  set remoteLink(String? x) => (x == null)
      ? attributes.remove(kRemoteLink)
      : attributes[kRemoteLink] = x;

  /// pass `null` to remove key from attributes
  set fileUploadIdentifier(String? x) => (x == null)
      ? attributes.remove(kFileUploadIdentifier)
      : attributes[kFileUploadIdentifier] = x;

  // additional setters / getters for create/update attributes

  /// pass `null` to remove key from attributes
  set attachmentTypeIds(String? x) => (x == null)
      ? attributes.remove(kAttachmentTypeIds)
      : attributes[kAttachmentTypeIds] = x;
  String get attachmentTypeIds => attributes[kAttachmentTypeIds] ?? '';

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  List<T> includedZooms<T extends PcoResource>() =>
      relationships['zooms']?.cast<T>() ?? [];

  // Class Constructors
  PcoServicesAttachment.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesAttachment.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesAttachment] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/songs/$songId/arrangements/$arrangementId/attachments`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesAttachment(String songId, String arrangementId,
      {String? fileUploadIdentifier,
      String? filename,
      String? remoteLink,
      String? pageOrder}) {
    var obj = PcoServicesAttachment.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/songs/$songId/arrangements/$arrangementId/attachments';
    if (fileUploadIdentifier != null)
      obj.fileUploadIdentifier = fileUploadIdentifier;
    if (filename != null) obj.filename = filename;
    if (remoteLink != null) obj.remoteLink = remoteLink;
    if (pageOrder != null) obj.pageOrder = pageOrder;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/arrangements/$arrangementId/attachments`
  static Future<PcoCollection<PcoServicesAttachment>> getFromSongAndArrangement(
      String songId, String arrangementId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url =
        '/services/v2/songs/$songId/arrangements/$arrangementId/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/attachments`
  static Future<PcoCollection<PcoServicesAttachment>>
      getFromServiceTypeAndPlanAndItem(
          String serviceTypeId, String planId, String itemId,
          {String? id,
          PlanningCenterApiQuery? query,
          bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/selected_attachment`
  static Future<PcoCollection<PcoServicesAttachment>>
      getSelectedAttachmentFromServiceTypeAndPlanAndItem(
          String serviceTypeId, String planId, String itemId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/selected_attachment';

    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/selected_background`
  static Future<PcoCollection<PcoServicesAttachment>>
      getSelectedBackgroundFromServiceTypeAndPlanAndItem(
          String serviceTypeId, String planId, String itemId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/selected_background';

    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/arrangements/$arrangementId/keys/$keyId/attachments`
  static Future<PcoCollection<PcoServicesAttachment>>
      getFromSongAndArrangementAndKey(
          String songId, String arrangementId, String keyId,
          {String? id,
          PlanningCenterApiQuery? query,
          bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url =
        '/services/v2/songs/$songId/arrangements/$arrangementId/keys/$keyId/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/media/$mediaId/attachments`
  static Future<PcoCollection<PcoServicesAttachment>> getFromMedia(
      String mediaId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/media/$mediaId/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/all_attachments`
  ///
  /// Available Query Filters:
  /// - `attachable_type`
  /// filter attachments by their attachable_type as specified in the `attachable_type` parameter.
  /// Default: `["ServiceType", "Plan", "Item", "Media", "Song", "Arrangement", "Key"]`.
  /// e.g. `?filter=attachable_type&attachable_type=Plan,ServiceType`
  ///
  /// - `extensions`
  /// filter to attachments with a file extension specified in the `extensions` parameter.
  /// e.g. `?filter=extensions&extensions=pdf,txt`
  ///
  static Future<PcoCollection<PcoServicesAttachment>>
      getAllAttachmentsFromServiceTypeAndPlan(
          String serviceTypeId, String planId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/all_attachments';

    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/attachments`
  static Future<PcoCollection<PcoServicesAttachment>> getFromServiceTypeAndPlan(
      String serviceTypeId, String planId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/attachments`
  static Future<PcoCollection<PcoServicesAttachment>> getFromServiceType(
      String serviceTypeId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/attachments`
  static Future<PcoCollection<PcoServicesAttachment>> getFromSong(String songId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '/services/v2/songs/$songId/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesZoom] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/attachments/1/zooms`
  Future<PcoCollection<PcoServicesZoom>> getZooms(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesZoom.canInclude;
    var url = '$apiEndpoint/zooms';
    return PcoCollection.fromApiCall<PcoServicesZoom>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `open`
  ///
  /// This action is used to get the attachment file URL.  It is accessed by `POST`ing to `.../attachments/1/open`
  ///
  /// This will generate the URL and return it in the `attachment_url` attribute of the `AttachmentActivity`.
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/attachments/1/open`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> open(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/open';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `preview`
  ///
  /// This action is used to get a reduced resolution (preview) version of the attachment.  It is accessed by `POST`ing to `.../attachments/1/preview`
  ///
  /// This will generate the URL and return it in the `attachment_url` attribute of the `AttachmentActivity`.
  ///
  /// The `has_preview` attribute of an `Attachment` indicates if a preview is available. When a preview is not available this action will return a `Not Found` error with a status code of `404`.
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/attachments/1/preview`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> preview(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/preview';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }
}
