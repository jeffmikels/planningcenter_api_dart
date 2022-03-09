/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:47.916764
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services Media Object
/// 
/// - Application:        services
/// - Id:                 media
/// - Type:               Media
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/media
/// 
/// Description:
/// A piece of media
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// - attachments: include associated attachments 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `creator_name`: (URLParameter), query on a specific creator_name, example: ?where[creator_name]=string
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// - `themes`: (URLParameter), query on a specific themes, example: ?where[themes]=string
/// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `title`: (URLParameter), prefix with a hyphen (-title) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `attachment-media-attachments`: https://api.planningcenteronline.com/services/v2/media/1/attachments
/// - `mediaschedule-media-media_schedules`: https://api.planningcenteronline.com/services/v2/media/1/media_schedules
/// - `tag-media-tags`: https://api.planningcenteronline.com/services/v2/media/1/tags
/// 
/// All Inbound Edges:
/// - `media-item-media`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/media
/// - `media-organization-media`: https://api.planningcenteronline.com/services/v2/media
/// 
/// All Actions:
/// - `archive`: https://api.planningcenteronline.com/services/v2/media/1/archive
/// - `assign_tags`: https://api.planningcenteronline.com/services/v2/media/1/assign_tags
/// - `unarchive`: https://api.planningcenteronline.com/services/v2/media/1/unarchive
///
class PcoServicesMedia extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Media';
  static const String kTypeId = 'media';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'media-organization-media';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/media';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/media';

  /// possible includes with parameter ?include=a,b
  /// - `attachments`: include associated attachments 
  static List<String> get canInclude => ['attachments'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `creator_name`: (URLParameter), query on a specific creator_name, example: ?where[creator_name]=string
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `themes`: (URLParameter), query on a specific themes, example: ?where[themes]=string
  /// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
  static List<String> get canQuery => ['creator_name','id','themes','title'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `title`: (URLParameter), prefix with a hyphen (-title) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','title','updated_at'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  List<String> get createAllowed => ['media_type','title','creator_name','themes'];

  @override
  List<String> get updateAllowed => ['media_type','title','creator_name','themes'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

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
  String get mediaType => attributes[kMediaType] ?? '';
  String get mediaTypeName => attributes[kMediaTypeName] ?? '';
  String get thumbnailUrl => attributes[kThumbnailUrl] ?? '';
  String get creatorName => attributes[kCreatorName] ?? '';
  String get previewUrl => attributes[kPreviewUrl] ?? '';
  String get imageUrl => attributes[kImageUrl] ?? '';
  

  // setters for object attributes

  set themes(String s) => attributes[kThemes] = s;
  set title(String s) => attributes[kTitle] = s;
  
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
  set mediaType(String s) => attributes[kMediaType] = s;
  set creatorName(String s) => attributes[kCreatorName] = s;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesMedia._() : super(kPcoApplication, kTypeString);
  PcoServicesMedia.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoServicesMedia] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/media`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesMedia() {
    return PcoServicesMedia._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/media';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesMedia] objects (expecting many)
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
  static Future<PcoCollection<PcoServicesMedia>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesMedia.canInclude;
    var url = '/services/v2/media';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesMedia>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesMedia] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/media`
  static Future<PcoCollection<PcoServicesMedia>> getFromServiceTypeAndPlanAndItem(String serviceTypeId,String planId,String itemId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesMedia.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/media';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesMedia>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media/1/attachments`
  Future<PcoCollection<PcoServicesAttachment>> getAttachments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '$apiEndpoint/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesMediaSchedule] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media/1/media_schedules`
  Future<PcoCollection<PcoServicesMediaSchedule>> getMediaSchedules({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesMediaSchedule.canInclude;
    var url = '$apiEndpoint/media_schedules';
    return PcoCollection.fromApiCall<PcoServicesMediaSchedule>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media/1/tags`
  Future<PcoCollection<PcoServicesTag>> getTags({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion: apiVersion);
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
  /// Details:
  /// Accepts an optional `time` attribute (ISO 8601) for scheduling archival for a future time.
  /// 
  /// ```json
  /// {
  ///   "data": {
  ///     "type": "MediaArchive",
  ///     "attributes": {
  ///       "time": "2022-02-17T00:00:00Z"
  ///     }
  ///   }
  /// }
  /// ```
  Future<PlanningCenterApiResponse> archive(Map<String, dynamic> data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/archive';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }

  /// ACTION: `assign_tags`
  /// 
  /// Used to assign tags to a media.
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media/1/assign_tags`
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
  Future<PlanningCenterApiResponse> assignTags(Map<String, dynamic> data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/assign_tags';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }

  /// ACTION: `unarchive`
  /// 
  /// Restore an archived Media.
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media/1/unarchive`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> unarchive(Map<String, dynamic> data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/unarchive';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }


}
