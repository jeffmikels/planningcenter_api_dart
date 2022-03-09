/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.435926
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

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
export class PcoServicesMedia extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'Media';
  static kTypeId = 'media';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'media-organization-media';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/media';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/media';

  /// possible includes with parameter ?include=a,b
  /// - `attachments`: include associated attachments 
  static get canInclude() { return ['attachments'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `creator_name`: (URLParameter), query on a specific creator_name, example: ?where[creator_name]=string
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `themes`: (URLParameter), query on a specific themes, example: ?where[themes]=string
  /// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
  static get canQuery() { return ['creator_name','id','themes','title'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `title`: (URLParameter), prefix with a hyphen (-title) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','title','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesMedia.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesMedia.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesMedia.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kThemes() { return 'themes' }
  static get kTitle() { return 'title' }
  static get kThumbnailFileName() { return 'thumbnail_file_name' }
  static get kThumbnailContentType() { return 'thumbnail_content_type' }
  static get kThumbnailFileSize() { return 'thumbnail_file_size' }
  static get kThumbnailUpdatedAt() { return 'thumbnail_updated_at' }
  static get kPreviewFileName() { return 'preview_file_name' }
  static get kPreviewContentType() { return 'preview_content_type' }
  static get kPreviewFileSize() { return 'preview_file_size' }
  static get kPreviewUpdatedAt() { return 'preview_updated_at' }
  static get kLength() { return 'length' }
  static get kMediaType() { return 'media_type' }
  static get kMediaTypeName() { return 'media_type_name' }
  static get kThumbnailUrl() { return 'thumbnail_url' }
  static get kCreatorName() { return 'creator_name' }
  static get kPreviewUrl() { return 'preview_url' }
  static get kImageUrl() { return 'image_url' }


  // getters and setters
  // @override
  get createAllowed() { return ['media_type','title','creator_name','themes']; }

  // @override
  get updateAllowed() { return ['media_type','title','creator_name','themes']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get themes() { return attributes[this.constructor.kThemes] ?? ''; }
  get title() { return attributes[this.constructor.kTitle] ?? ''; }
  get thumbnailFileName() { return attributes[this.constructor.kThumbnailFileName] ?? ''; }
  get thumbnailContentType() { return attributes[this.constructor.kThumbnailContentType] ?? ''; }
  get thumbnailFileSize() { return attributes[this.constructor.kThumbnailFileSize] ?? 0; }
  get thumbnailUpdatedAt() { return Date.parse(attributes[this.constructor.kThumbnailUpdatedAt] ?? 0); }
  get previewFileName() { return attributes[this.constructor.kPreviewFileName] ?? ''; }
  get previewContentType() { return attributes[this.constructor.kPreviewContentType] ?? ''; }
  get previewFileSize() { return attributes[this.constructor.kPreviewFileSize] ?? 0; }
  get previewUpdatedAt() { return Date.parse(attributes[this.constructor.kPreviewUpdatedAt] ?? 0); }
  get length() { return attributes[this.constructor.kLength] ?? 0; }
  get mediaType() { return attributes[this.constructor.kMediaType] ?? ''; }
  get mediaTypeName() { return attributes[this.constructor.kMediaTypeName] ?? ''; }
  get thumbnailUrl() { return attributes[this.constructor.kThumbnailUrl] ?? ''; }
  get creatorName() { return attributes[this.constructor.kCreatorName] ?? ''; }
  get previewUrl() { return attributes[this.constructor.kPreviewUrl] ?? ''; }
  get imageUrl() { return attributes[this.constructor.kImageUrl] ?? ''; }
  

  // setters for object attributes

  set themes(s) {attributes[this.constructor.kThemes] = s;}
  set title(s) {attributes[this.constructor.kTitle] = s;}
  
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
  set mediaType(s) {attributes[this.constructor.kMediaType] = s;}
  set creatorName(s) {attributes[this.constructor.kCreatorName] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesMedia._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesMedia({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesMedia] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/media`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoServicesMedia.kPcoApplication, PcoServicesMedia.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/media`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
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
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesMedia.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/media`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesMedia] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/media`
  static getFromServiceTypeAndPlanAndItem(serviceTypeId, planId, itemId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesMedia.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/media`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media/1/attachments`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAttachments({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let url = `${apiEndpoint}/attachments`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesMediaSchedule] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media/1/media_schedules`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getMediaSchedules({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesMediaSchedule.canInclude;
    let url = `${apiEndpoint}/media_schedules`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media/1/tags`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTags({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    let url = `${apiEndpoint}/tags`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
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
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  archive(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/archive`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
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
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  assignTags(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/assign_tags`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `unarchive`
  /// 
  /// Restore an archived Media.
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media/1/unarchive`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  unarchive(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/unarchive`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
