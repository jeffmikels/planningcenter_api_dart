/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:20.958195
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `title` -> `?order=title`
/// - `updatedAt` -> `?order=updated_at`
enum PcoServicesMediaOrder { createdAt, title, updatedAt }

/// Possible Inbound Filters:
/// - `archived` -> `?filter=archived` : -- no description
/// - `audio` -> `?filter=audio` : -- no description
/// - `backgroundAudio` -> `?filter=background_audio` : -- no description
/// - `backgroundImage` -> `?filter=background_image` : -- no description
/// - `backgroundVideo` -> `?filter=background_video` : -- no description
/// - `countdown` -> `?filter=countdown` : -- no description
/// - `document` -> `?filter=document` : -- no description
/// - `drama` -> `?filter=drama` : -- no description
/// - `image` -> `?filter=image` : -- no description
/// - `notArchived` -> `?filter=not_archived` : -- no description
/// - `powerpoint` -> `?filter=powerpoint` : -- no description
/// - `songVideo` -> `?filter=song_video` : -- no description
/// - `video` -> `?filter=video` : -- no description
enum PcoServicesMediaFilter {
  archived,
  audio,
  backgroundAudio,
  backgroundImage,
  backgroundVideo,
  countdown,
  document,
  drama,
  image,
  notArchived,
  powerpoint,
  songVideo,
  video
}

/// Creates a [PcoServicesMediaQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeAttachments`: include associated attachments
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoServicesMediaQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoServicesMedia] objects can be requested with one or more of the following criteria:
/// - `whereCreatorName`: query on a specific creator_name, example: ?where[creator_name]=string
/// - `whereId`: query on a specific id, example: ?where[id]=primary_key
/// - `whereThemes`: query on a specific themes, example: ?where[themes]=string
/// - `whereTitle`: query on a specific title, example: ?where[title]=string
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
/// - `PcoServicesMediaOrder.createdAt` : will order by `created_at`
/// - `PcoServicesMediaOrder.title` : will order by `title`
/// - `PcoServicesMediaOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesMediaQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesMediaOrder, String> _orderMap = {
    PcoServicesMediaOrder.createdAt: 'created_at',
    PcoServicesMediaOrder.title: 'title',
    PcoServicesMediaOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoServicesMediaOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesMediaFilter, String> _filterMap = {
    PcoServicesMediaFilter.archived: 'archived',
    PcoServicesMediaFilter.audio: 'audio',
    PcoServicesMediaFilter.backgroundAudio: 'background_audio',
    PcoServicesMediaFilter.backgroundImage: 'background_image',
    PcoServicesMediaFilter.backgroundVideo: 'background_video',
    PcoServicesMediaFilter.countdown: 'countdown',
    PcoServicesMediaFilter.document: 'document',
    PcoServicesMediaFilter.drama: 'drama',
    PcoServicesMediaFilter.image: 'image',
    PcoServicesMediaFilter.notArchived: 'not_archived',
    PcoServicesMediaFilter.powerpoint: 'powerpoint',
    PcoServicesMediaFilter.songVideo: 'song_video',
    PcoServicesMediaFilter.video: 'video',
  };
  static String filterString(PcoServicesMediaFilter filter) =>
      _filterMap[filter]!;

  PcoServicesMediaQuery({
    /// include associated attachments
    /// when true, adds `?include=attachments` to url
    bool includeAttachments = false,

    /// Query by `creator_name`
    /// query on a specific creator_name, url example: ?where[creator_name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatorName,

    /// Query by `id`
    /// query on a specific id, url example: ?where[id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereId,

    /// Query by `themes`
    /// query on a specific themes, url example: ?where[themes]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereThemes,

    /// Query by `title`
    /// query on a specific title, url example: ?where[title]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereTitle,
    PcoServicesMediaFilter? filterBy,
    PcoServicesMediaOrder? orderBy,

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
    if (filterBy != null) filter.add(filterString(filterBy));
    if (includeAttachments) include.add('attachments');

    if (whereCreatorName != null)
      where.add(PlanningCenterApiWhere.parse('creator_name', whereCreatorName));
    if (whereId != null) where.add(PlanningCenterApiWhere.parse('id', whereId));
    if (whereThemes != null)
      where.add(PlanningCenterApiWhere.parse('themes', whereThemes));
    if (whereTitle != null)
      where.add(PlanningCenterApiWhere.parse('title', whereTitle));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Services Media Object
///
/// - Application:        services
/// - Id:                 media
/// - Type:               Media
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/media
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/media
///
/// ## Instantiation
/// - Create a new instance using the `PcoServicesMedia()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesMedia.fromJson()` constructor.
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
/// A piece of media
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `themes` (rw) -> PCO: `themes`
/// - `title` (rw) -> PCO: `title`
/// - `thumbnailFileName` (ro) -> PCO: `thumbnail_file_name`
/// - `thumbnailContentType` (ro) -> PCO: `thumbnail_content_type`
/// - `thumbnailFileSize` (ro) -> PCO: `thumbnail_file_size`
/// - `thumbnailUpdatedAt` (ro) -> PCO: `thumbnail_updated_at`
/// - `previewFileName` (ro) -> PCO: `preview_file_name`
/// - `previewContentType` (ro) -> PCO: `preview_content_type`
/// - `previewFileSize` (ro) -> PCO: `preview_file_size`
/// - `previewUpdatedAt` (ro) -> PCO: `preview_updated_at`
/// - `length` (ro) -> PCO: `length`
/// - `mediaType` (rw) -> PCO: `media_type`
/// - `mediaTypeName` (ro) -> PCO: `media_type_name`
/// - `thumbnailUrl` (ro) -> PCO: `thumbnail_url`
/// - `creatorName` (rw) -> PCO: `creator_name`
/// - `previewUrl` (ro) -> PCO: `preview_url`
/// - `imageUrl` (ro) -> PCO: `image_url`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `attachment-media-attachments`: https://api.planningcenteronline.com/services/v2/media/1/attachments
/// - `mediaschedule-media-media_schedules`: https://api.planningcenteronline.com/services/v2/media/1/media_schedules
/// - `tag-media-tags`: https://api.planningcenteronline.com/services/v2/media/1/tags
///
/// Inbound Edges:
/// - `media-item-media`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/media
/// - `media-organization-media`: https://api.planningcenteronline.com/services/v2/media
///
/// Actions:
/// - `archive`: https://api.planningcenteronline.com/services/v2/media/1/archive
/// - `assign_tags`: https://api.planningcenteronline.com/services/v2/media/1/assign_tags
/// - `unarchive`: https://api.planningcenteronline.com/services/v2/media/1/unarchive
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Media",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "themes": "string",
///     "title": "string",
///     "thumbnail_file_name": "string",
///     "thumbnail_content_type": "string",
///     "thumbnail_file_size": 1,
///     "thumbnail_updated_at": "2000-01-01T12:00:00Z",
///     "preview_file_name": "string",
///     "preview_content_type": "string",
///     "preview_file_size": 1,
///     "preview_updated_at": "2000-01-01T12:00:00Z",
///     "length": 1,
///     "media_type": "string",
///     "media_type_name": "string",
///     "thumbnail_url": "string",
///     "creator_name": "string",
///     "preview_url": "string",
///     "image_url": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoServicesMedia extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Media';
  static const String kTypeId = 'media';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/media';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/media';

  /// possible includes with parameter ?include=a,b
  /// - `attachments`: include associated attachments
  static List<String> get canInclude => ['attachments'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `creator_name`: (URLParameter), query on a specific creator_name, example: ?where[creator_name]=string
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `themes`: (URLParameter), query on a specific themes, example: ?where[themes]=string
  /// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
  static List<String> get canQuery => ['creator_name', 'id', 'themes', 'title'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `title`: (URLParameter), prefix with a hyphen (-title) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at', 'title', 'updated_at'];

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
  static const kUpdatedAt = 'updated_at';
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
  List<String> get createAllowed =>
      ['media_type', 'title', 'creator_name', 'themes'];

  @override
  List<String> get updateAllowed =>
      ['media_type', 'title', 'creator_name', 'themes'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get themes => _getAttribute<String>(kThemes, '');
  String get title => _getAttribute<String>(kTitle, '');
  String get thumbnailFileName => _getAttribute<String>(kThumbnailFileName, '');
  String get thumbnailContentType =>
      _getAttribute<String>(kThumbnailContentType, '');
  int get thumbnailFileSize => _getAttribute<int>(kThumbnailFileSize, 0);
  DateTime get thumbnailUpdatedAt =>
      _getAttribute<DateTime>(kThumbnailUpdatedAt, DateTime(0));
  String get previewFileName => _getAttribute<String>(kPreviewFileName, '');
  String get previewContentType =>
      _getAttribute<String>(kPreviewContentType, '');
  int get previewFileSize => _getAttribute<int>(kPreviewFileSize, 0);
  DateTime get previewUpdatedAt =>
      _getAttribute<DateTime>(kPreviewUpdatedAt, DateTime(0));
  int get length => _getAttribute<int>(kLength, 0);
  String get mediaType => _getAttribute<String>(kMediaType, '');
  String get mediaTypeName => _getAttribute<String>(kMediaTypeName, '');
  String get thumbnailUrl => _getAttribute<String>(kThumbnailUrl, '');
  String get creatorName => _getAttribute<String>(kCreatorName, '');
  String get previewUrl => _getAttribute<String>(kPreviewUrl, '');
  String get imageUrl => _getAttribute<String>(kImageUrl, '');

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set themes(String? x) =>
      (x == null) ? _attributes.remove(kThemes) : _attributes[kThemes] = x;

  ///
  /// pass `null` to remove key from attributes
  set title(String? x) =>
      (x == null) ? _attributes.remove(kTitle) : _attributes[kTitle] = x;

  /// Possible Values:
  ///
  /// - `audio`
  ///
  /// - `background_audio`
  ///
  /// - `background_image`
  ///
  /// - `background_video`
  ///
  /// - `countdown`
  ///
  /// - `document`
  ///
  /// - `drama`
  ///
  /// - `image`
  ///
  /// - `powerpoint`
  ///
  /// - `song_video`
  ///
  /// - `video`
  ///
  /// pass `null` to remove key from attributes
  set mediaType(String? x) => (x == null)
      ? _attributes.remove(kMediaType)
      : _attributes[kMediaType] = x;

  ///
  /// pass `null` to remove key from attributes
  set creatorName(String? x) => (x == null)
      ? _attributes.remove(kCreatorName)
      : _attributes[kCreatorName] = x;

  // typed getters for each relationship

  List<PcoServicesAttachment> get includedAttachments =>
      (relationships['attachments'] as List?)?.cast<PcoServicesAttachment>() ??
      [];

  // Class Constructors
  PcoServicesMedia.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoServicesMedia.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesMedia] object using this endpoint: `https://api.planningcenteronline.com/services/v2/media`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `mediaType`, `title`, `creatorName`, `themes`
  /// - FIELDS USED WHEN UPDATING: `mediaType`, `title`, `creatorName`, `themes`
  factory PcoServicesMedia(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? themes,
      String? title,
      String? thumbnailFileName,
      String? thumbnailContentType,
      int? thumbnailFileSize,
      DateTime? thumbnailUpdatedAt,
      String? previewFileName,
      String? previewContentType,
      int? previewFileSize,
      DateTime? previewUpdatedAt,
      int? length,
      String? mediaType,
      String? mediaTypeName,
      String? thumbnailUrl,
      String? creatorName,
      String? previewUrl,
      String? imageUrl,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesMedia.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/media';
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (themes != null) obj._attributes['themes'] = themes;
    if (title != null) obj._attributes['title'] = title;
    if (thumbnailFileName != null)
      obj._attributes['thumbnail_file_name'] = thumbnailFileName;
    if (thumbnailContentType != null)
      obj._attributes['thumbnail_content_type'] = thumbnailContentType;
    if (thumbnailFileSize != null)
      obj._attributes['thumbnail_file_size'] = thumbnailFileSize;
    if (thumbnailUpdatedAt != null)
      obj._attributes['thumbnail_updated_at'] =
          thumbnailUpdatedAt.toIso8601String();
    if (previewFileName != null)
      obj._attributes['preview_file_name'] = previewFileName;
    if (previewContentType != null)
      obj._attributes['preview_content_type'] = previewContentType;
    if (previewFileSize != null)
      obj._attributes['preview_file_size'] = previewFileSize;
    if (previewUpdatedAt != null)
      obj._attributes['preview_updated_at'] =
          previewUpdatedAt.toIso8601String();
    if (length != null) obj._attributes['length'] = length;
    if (mediaType != null) obj._attributes['media_type'] = mediaType;
    if (mediaTypeName != null)
      obj._attributes['media_type_name'] = mediaTypeName;
    if (thumbnailUrl != null) obj._attributes['thumbnail_url'] = thumbnailUrl;
    if (creatorName != null) obj._attributes['creator_name'] = creatorName;
    if (previewUrl != null) obj._attributes['preview_url'] = previewUrl;
    if (imageUrl != null) obj._attributes['image_url'] = imageUrl;

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

  /// Will get a [PcoCollection] of [PcoServicesMedia] objects (expecting many)
  /// using a path like this: `/services/v2/media`
  ///
  /// Available Query Filters:
  /// - `archived`
  /// - `audio`
  /// - `background_audio`
  /// - `background_image`
  /// - `background_video`
  /// - `countdown`
  /// - `document`
  /// - `drama`
  /// - `image`
  /// - `not_archived`
  /// - `powerpoint`
  /// - `song_video`
  /// - `video`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesMedia>> get({
    String? id,
    PcoServicesMediaQuery? query,
    bool getAll = false,
    bool includeAttachments = false,
  }) async {
    query ??= PcoServicesMediaQuery();
    if (getAll) query.getAll = true;

    if (includeAttachments) query.include.add('attachments');
    var url = '/services/v2/media';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesMedia>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoServicesMedia] object
  /// using a path like this: `/services/v2/media/[id]`
  ///
  /// Available Query Filters:
  /// - `archived`
  /// - `audio`
  /// - `background_audio`
  /// - `background_image`
  /// - `background_video`
  /// - `countdown`
  /// - `document`
  /// - `drama`
  /// - `image`
  /// - `not_archived`
  /// - `powerpoint`
  /// - `song_video`
  /// - `video`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoServicesMedia?> getSingle(
    String id, {
    PcoServicesMediaQuery? query,
    bool includeAttachments = false,
  }) async {
    query ??= PcoServicesMediaQuery();

    if (includeAttachments) query.include.add('attachments');
    var url = '/services/v2/media/$id';
    var retval = await PcoCollection.fromApiCall<PcoServicesMedia>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoServicesMedia] objects (expecting many)
  /// using a path like this: `/services/v2/media`
  ///
  /// Available Query Filters:
  /// - `archived`
  /// - `audio`
  /// - `background_audio`
  /// - `background_image`
  /// - `background_video`
  /// - `countdown`
  /// - `document`
  /// - `drama`
  /// - `image`
  /// - `not_archived`
  /// - `powerpoint`
  /// - `song_video`
  /// - `video`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoServicesMedia>> getAll({
    String? id,
    PcoServicesMediaQuery? query,
    bool includeAttachments = false,
  }) async {
    query ??= PcoServicesMediaQuery();
    query.getAll = true;

    if (includeAttachments) query.include.add('attachments');
    var url = '/services/v2/media';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesMedia>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoServicesMedia] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/media`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesMedia>>
      getFromServiceTypeAndPlanAndItem(
    String serviceTypeId,
    String planId,
    String itemId, {
    String? id,
    PcoServicesMediaQuery? query,
    bool getAll = false,
    bool includeAttachments = false,
  }) async {
    query ??= PcoServicesMediaQuery();
    if (getAll) query.getAll = true;

    if (includeAttachments) query.include.add('attachments');
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/media';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesMedia>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoServicesMedia] object
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/media/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoServicesMedia?> getSingleFromServiceTypeAndPlanAndItem(
    String serviceTypeId,
    String planId,
    String itemId,
    String id, {
    PcoServicesMediaQuery? query,
    bool includeAttachments = false,
  }) async {
    query ??= PcoServicesMediaQuery();

    if (includeAttachments) query.include.add('attachments');
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/media/$id';
    var retval = await PcoCollection.fromApiCall<PcoServicesMedia>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoServicesMedia] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/media`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoServicesMedia>>
      getAllFromServiceTypeAndPlanAndItem(
    String serviceTypeId,
    String planId,
    String itemId, {
    String? id,
    PcoServicesMediaQuery? query,
    bool includeAttachments = false,
  }) async {
    query ??= PcoServicesMediaQuery();
    query.getAll = true;

    if (includeAttachments) query.include.add('attachments');
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/media';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesMedia>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media/1/attachments`
  Future<PcoCollection<PcoServicesAttachment>> getAttachments(
      {PcoServicesAttachmentQuery? query}) async {
    query ??= PcoServicesAttachmentQuery();
    var url = '$apiEndpoint/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesMediaSchedule] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media/1/media_schedules`
  Future<PcoCollection<PcoServicesMediaSchedule>> getMediaSchedules(
      {PcoServicesMediaScheduleQuery? query}) async {
    query ??= PcoServicesMediaScheduleQuery();
    var url = '$apiEndpoint/media_schedules';
    return PcoCollection.fromApiCall<PcoServicesMediaSchedule>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media/1/tags`
  Future<PcoCollection<PcoServicesTag>> getTags(
      {PcoServicesTagQuery? query}) async {
    query ??= PcoServicesTagQuery();
    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoServicesTag>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `archive`
  ///
  /// Archive a Media.
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media/1/archive`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// Accepts an optional `time` attribute (ISO 8601) for scheduling archival for a future time.
  ///
  /// ```json
  /// {
  ///   "data": {
  ///     "type": "MediaArchive",
  ///     "attributes": {
  ///       "time": "2023-01-20T00:00:00Z"
  ///     }
  ///   }
  /// }
  /// ```
  Future<PlanningCenterApiResponse> archive(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/archive';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `assign_tags`
  ///
  /// Used to assign tags to a media.
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media/1/assign_tags`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// All tags will be replaced so the full data set must be sent.
  ///
  /// It expects a body that looks like:
  ///
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
  ///
  /// On success you will get back a `204 No Content`.
  Future<PlanningCenterApiResponse> assignTags(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/assign_tags';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `unarchive`
  ///
  /// Restore an archived Media.
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media/1/unarchive`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> unarchive(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/unarchive';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
