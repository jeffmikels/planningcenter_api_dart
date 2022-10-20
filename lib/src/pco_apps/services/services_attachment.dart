/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.464500
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `attachableType` -> `?order=attachable_type`
/// - `createdAt` -> `?order=created_at`
/// - `filename` -> `?order=filename`
/// - `filetype` -> `?order=filetype`
/// - `size` -> `?order=size`
enum PcoServicesAttachmentOrder {
  attachableType,
  createdAt,
  filename,
  filetype,
  size
}

/// Filtering is not allowed when requesting this object.
enum PcoServicesAttachmentFilter { none }

/// Creates a [PcoServicesAttachmentQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeZooms`: include associated zooms
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoServicesAttachmentQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoServicesAttachment] objects can be requested with one or more of the following criteria:
/// - `whereLicensesPurchased`: query on a specific licenses_purchased, example: ?where[licenses_purchased]=1
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoServicesAttachmentOrder.attachableType` : will order by `attachable_type`
/// - `PcoServicesAttachmentOrder.createdAt` : will order by `created_at`
/// - `PcoServicesAttachmentOrder.filename` : will order by `filename`
/// - `PcoServicesAttachmentOrder.filetype` : will order by `filetype`
/// - `PcoServicesAttachmentOrder.size` : will order by `size`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesAttachmentQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesAttachmentOrder, String> _orderMap = {
    PcoServicesAttachmentOrder.attachableType: 'attachable_type',
    PcoServicesAttachmentOrder.createdAt: 'created_at',
    PcoServicesAttachmentOrder.filename: 'filename',
    PcoServicesAttachmentOrder.filetype: 'filetype',
    PcoServicesAttachmentOrder.size: 'size',
  };
  static String orderString(PcoServicesAttachmentOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesAttachmentFilter, String> _filterMap = {};
  static String filterString(PcoServicesAttachmentFilter filter) =>
      _filterMap[filter]!;

  PcoServicesAttachmentQuery({
    /// include associated zooms
    /// when true, adds `?include=zooms` to url
    bool includeZooms = false,

    /// Query by `licenses_purchased`
    /// query on a specific licenses_purchased, url example: ?where[licenses_purchased]=1
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereLicensesPurchased,
    PcoServicesAttachmentOrder? orderBy,

    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super() {
    if (includeZooms) include.add('zooms');

    if (whereLicensesPurchased != null)
      where.add(PlanningCenterApiWhere.parse(
          'licenses_purchased', whereLicensesPurchased));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

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
/// ## Instantiation
/// - Create a new instance using the `PcoServicesAttachment()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesAttachment.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
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
  String get pageOrder => _attributes[kPageOrder] ?? '';
  String get filename => _attributes[kFilename] ?? '';
  int get fileSize => _attributes[kFileSize] ?? 0;
  int get licensesPurchased => _attributes[kLicensesPurchased] ?? 0;
  int get licensesRemaining => _attributes[kLicensesRemaining] ?? 0;
  int get licensesUsed => _attributes[kLicensesUsed] ?? 0;
  String get contentType => _attributes[kContentType] ?? '';
  String get displayName => _attributes[kDisplayName] ?? '';
  String get filetype => _attributes[kFiletype] ?? '';
  String get linkedUrl => _attributes[kLinkedUrl] ?? '';
  String get pcoType => _attributes[kPcoType] ?? '';
  String get remoteLink => _attributes[kRemoteLink] ?? '';
  String get thumbnailUrl => _attributes[kThumbnailUrl] ?? '';
  String get url => _attributes[kUrl] ?? '';
  bool get isAllowMp3Download => _attributes[kAllowMp3Download] == true;
  bool get isWebStreamable => _attributes[kWebStreamable] == true;
  bool get isDownloadable => _attributes[kDownloadable] == true;
  bool get isTransposable => _attributes[kTransposable] == true;
  bool get isStreamable => _attributes[kStreamable] == true;
  bool get isHasPreview => _attributes[kHasPreview] == true;
  String get fileUploadIdentifier => _attributes[kFileUploadIdentifier] ?? '';

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set pageOrder(String? x) => (x == null)
      ? _attributes.remove(kPageOrder)
      : _attributes[kPageOrder] = x;

  ///
  /// pass `null` to remove key from attributes
  set filename(String? x) =>
      (x == null) ? _attributes.remove(kFilename) : _attributes[kFilename] = x;

  ///
  /// pass `null` to remove key from attributes
  set remoteLink(String? x) => (x == null)
      ? _attributes.remove(kRemoteLink)
      : _attributes[kRemoteLink] = x;

  ///
  /// pass `null` to remove key from attributes
  set fileUploadIdentifier(String? x) => (x == null)
      ? _attributes.remove(kFileUploadIdentifier)
      : _attributes[kFileUploadIdentifier] = x;

  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set attachmentTypeIds(String? x) => (x == null)
      ? _attributes.remove(kAttachmentTypeIds)
      : _attributes[kAttachmentTypeIds] = x;
  String get attachmentTypeIds => _attributes[kAttachmentTypeIds] ?? '';

  // typed getters for each relationship

  List<PcoServicesZoom> get includedZooms =>
      (relationships['zooms'] as List?)?.cast<PcoServicesZoom>() ?? [];

  // Class Constructors
  PcoServicesAttachment.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoServicesAttachment.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesAttachment] object using this endpoint: `https://api.planningcenteronline.com/services/v2/songs/$songId/arrangements/$arrangementId/attachments`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `attachmentTypeIds`, `fileUploadIdentifier`, `filename`, `remoteLink`, `pageOrder`
  /// - FIELDS USED WHEN UPDATING: `attachmentTypeIds`, `fileUploadIdentifier`, `filename`, `remoteLink`, `pageOrder`
  factory PcoServicesAttachment(
      {required String songId,
      required String arrangementId,
      String? id,
      DateTime? createdAt,
      String? pageOrder,
      DateTime? updatedAt,
      String? filename,
      int? fileSize,
      int? licensesPurchased,
      int? licensesRemaining,
      int? licensesUsed,
      String? contentType,
      String? displayName,
      String? filetype,
      String? linkedUrl,
      String? pcoType,
      String? remoteLink,
      String? thumbnailUrl,
      String? url,
      bool? isAllowMp3Download,
      bool? isWebStreamable,
      bool? isDownloadable,
      bool? isTransposable,
      bool? isStreamable,
      bool? isHasPreview,
      String? fileUploadIdentifier,
      String? attachmentTypeIds,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesAttachment.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/songs/$songId/arrangements/$arrangementId/attachments';
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (pageOrder != null) obj._attributes['page_order'] = pageOrder;
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (filename != null) obj._attributes['filename'] = filename;
    if (fileSize != null) obj._attributes['file_size'] = fileSize;
    if (licensesPurchased != null)
      obj._attributes['licenses_purchased'] = licensesPurchased;
    if (licensesRemaining != null)
      obj._attributes['licenses_remaining'] = licensesRemaining;
    if (licensesUsed != null) obj._attributes['licenses_used'] = licensesUsed;
    if (contentType != null) obj._attributes['content_type'] = contentType;
    if (displayName != null) obj._attributes['display_name'] = displayName;
    if (filetype != null) obj._attributes['filetype'] = filetype;
    if (linkedUrl != null) obj._attributes['linked_url'] = linkedUrl;
    if (pcoType != null) obj._attributes['pco_type'] = pcoType;
    if (remoteLink != null) obj._attributes['remote_link'] = remoteLink;
    if (thumbnailUrl != null) obj._attributes['thumbnail_url'] = thumbnailUrl;
    if (url != null) obj._attributes['url'] = url;
    if (isAllowMp3Download != null)
      obj._attributes['allow_mp3_download'] = isAllowMp3Download;
    if (isWebStreamable != null)
      obj._attributes['web_streamable'] = isWebStreamable;
    if (isDownloadable != null)
      obj._attributes['downloadable'] = isDownloadable;
    if (isTransposable != null)
      obj._attributes['transposable'] = isTransposable;
    if (isStreamable != null) obj._attributes['streamable'] = isStreamable;
    if (isHasPreview != null) obj._attributes['has_preview'] = isHasPreview;
    if (fileUploadIdentifier != null)
      obj._attributes['file_upload_identifier'] = fileUploadIdentifier;
    if (attachmentTypeIds != null)
      obj._attributes['attachment_type_ids'] = attachmentTypeIds;

    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }

    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }

    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/arrangements/$arrangementId/attachments`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesAttachment>> getFromSongAndArrangement(
    String songId,
    String arrangementId, {
    String? id,
    PcoServicesAttachmentQuery? query,
    bool includeZooms = false,
  }) async {
    query ??= PcoServicesAttachmentQuery();

    if (includeZooms) query.include.add('zooms');
    var url =
        '/services/v2/songs/$songId/arrangements/$arrangementId/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/attachments`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesAttachment>>
      getFromServiceTypeAndPlanAndItem(
    String serviceTypeId,
    String planId,
    String itemId, {
    String? id,
    PcoServicesAttachmentQuery? query,
    bool includeZooms = false,
  }) async {
    query ??= PcoServicesAttachmentQuery();

    if (includeZooms) query.include.add('zooms');
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/selected_attachment`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesAttachment>>
      getSelectedAttachmentFromServiceTypeAndPlanAndItem(
    String serviceTypeId,
    String planId,
    String itemId, {
    PcoServicesAttachmentQuery? query,
    bool includeZooms = false,
  }) async {
    query ??= PcoServicesAttachmentQuery();

    if (includeZooms) query.include.add('zooms');
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/selected_attachment';

    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/selected_background`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesAttachment>>
      getSelectedBackgroundFromServiceTypeAndPlanAndItem(
    String serviceTypeId,
    String planId,
    String itemId, {
    PcoServicesAttachmentQuery? query,
    bool includeZooms = false,
  }) async {
    query ??= PcoServicesAttachmentQuery();

    if (includeZooms) query.include.add('zooms');
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/selected_background';

    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/arrangements/$arrangementId/keys/$keyId/attachments`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesAttachment>>
      getFromSongAndArrangementAndKey(
    String songId,
    String arrangementId,
    String keyId, {
    String? id,
    PcoServicesAttachmentQuery? query,
    bool includeZooms = false,
  }) async {
    query ??= PcoServicesAttachmentQuery();

    if (includeZooms) query.include.add('zooms');
    var url =
        '/services/v2/songs/$songId/arrangements/$arrangementId/keys/$keyId/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/media/$mediaId/attachments`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesAttachment>> getFromMedia(
    String mediaId, {
    String? id,
    PcoServicesAttachmentQuery? query,
    bool includeZooms = false,
  }) async {
    query ??= PcoServicesAttachmentQuery();

    if (includeZooms) query.include.add('zooms');
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
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesAttachment>>
      getAllAttachmentsFromServiceTypeAndPlan(
    String serviceTypeId,
    String planId, {
    PcoServicesAttachmentQuery? query,
    bool includeZooms = false,
  }) async {
    query ??= PcoServicesAttachmentQuery();

    if (includeZooms) query.include.add('zooms');
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/all_attachments';

    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/attachments`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesAttachment>> getFromServiceTypeAndPlan(
    String serviceTypeId,
    String planId, {
    String? id,
    PcoServicesAttachmentQuery? query,
    bool includeZooms = false,
  }) async {
    query ??= PcoServicesAttachmentQuery();

    if (includeZooms) query.include.add('zooms');
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/attachments`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesAttachment>> getFromServiceType(
    String serviceTypeId, {
    String? id,
    PcoServicesAttachmentQuery? query,
    bool includeZooms = false,
  }) async {
    query ??= PcoServicesAttachmentQuery();

    if (includeZooms) query.include.add('zooms');
    var url = '/services/v2/service_types/$serviceTypeId/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/attachments`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesAttachment>> getFromSong(
    String songId, {
    String? id,
    PcoServicesAttachmentQuery? query,
    bool includeZooms = false,
  }) async {
    query ??= PcoServicesAttachmentQuery();

    if (includeZooms) query.include.add('zooms');
    var url = '/services/v2/songs/$songId/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesZoom] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/attachments/1/zooms`
  Future<PcoCollection<PcoServicesZoom>> getZooms(
      {PcoServicesZoomQuery? query}) async {
    query ??= PcoServicesZoomQuery();
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

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
