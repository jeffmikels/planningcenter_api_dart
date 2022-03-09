/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.318474
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services Attachment Object
/// 
/// - Application:        services
/// - Id:                 attachment
/// - Type:               Attachment
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/attachments
/// 
/// Description:
/// A file, whether it's stored on Planning Center or linked from another location.
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// - zooms: include associated zooms 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `licenses_purchased`: (URLParameter), query on a specific licenses_purchased, example: ?where[licenses_purchased]=1
/// 
/// Possible orderings with parameter ?order=
/// - `attachable_type`: (URLParameter), prefix with a hyphen (-attachable_type) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `filename`: (URLParameter), prefix with a hyphen (-filename) to reverse the order
/// - `filetype`: (URLParameter), prefix with a hyphen (-filetype) to reverse the order
/// - `size`: (URLParameter), prefix with a hyphen (-size) to reverse the order
///
/// All Outbound Edges:
/// - `zoom-attachment-zooms`: https://api.planningcenteronline.com/services/v2/attachments/1/zooms
/// 
/// All Inbound Edges:
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
/// All Actions:
/// - `open`: https://api.planningcenteronline.com/services/v2/attachments/1/open
/// - `preview`: https://api.planningcenteronline.com/services/v2/attachments/1/preview
///
export class PcoServicesAttachment extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'Attachment';
  static kTypeId = 'attachment';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/attachments';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/attachments';

  /// possible includes with parameter ?include=a,b
  /// - `zooms`: include associated zooms 
  static get canInclude() { return ['zooms'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `licenses_purchased`: (URLParameter), query on a specific licenses_purchased, example: ?where[licenses_purchased]=1
  static get canQuery() { return ['licenses_purchased'] }

  /// possible orderings with parameter ?order=
  /// - `attachable_type`: (URLParameter), prefix with a hyphen (-attachable_type) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `filename`: (URLParameter), prefix with a hyphen (-filename) to reverse the order
  /// - `filetype`: (URLParameter), prefix with a hyphen (-filetype) to reverse the order
  /// - `size`: (URLParameter), prefix with a hyphen (-size) to reverse the order
  static get canOrderBy() { return ['attachable_type','created_at','filename','filetype','size'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesAttachment.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesAttachment.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesAttachment.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kPageOrder() { return 'page_order' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kFilename() { return 'filename' }
  static get kFileSize() { return 'file_size' }
  static get kLicensesPurchased() { return 'licenses_purchased' }
  static get kLicensesRemaining() { return 'licenses_remaining' }
  static get kLicensesUsed() { return 'licenses_used' }
  static get kContentType() { return 'content_type' }
  static get kDisplayName() { return 'display_name' }
  static get kFiletype() { return 'filetype' }
  static get kLinkedUrl() { return 'linked_url' }
  static get kPcoType() { return 'pco_type' }
  static get kRemoteLink() { return 'remote_link' }
  static get kThumbnailUrl() { return 'thumbnail_url' }
  static get kUrl() { return 'url' }
  static get kAllowMp3Download() { return 'allow_mp3_download' }
  static get kWebStreamable() { return 'web_streamable' }
  static get kDownloadable() { return 'downloadable' }
  static get kTransposable() { return 'transposable' }
  static get kStreamable() { return 'streamable' }
  static get kHasPreview() { return 'has_preview' }
  static get kFileUploadIdentifier() { return 'file_upload_identifier' }
  static get kAttachmentTypeIds() { return 'attachment_type_ids' }


  // getters and setters
  // @override
  get createAllowed() { return ['attachment_type_ids','file_upload_identifier','filename','remote_link','page_order']; }

  // @override
  get updateAllowed() { return ['attachment_type_ids','file_upload_identifier','filename','remote_link','page_order']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get pageOrder() { return attributes[this.constructor.kPageOrder] ?? ''; }
  get filename() { return attributes[this.constructor.kFilename] ?? ''; }
  get fileSize() { return attributes[this.constructor.kFileSize] ?? 0; }
  get licensesPurchased() { return attributes[this.constructor.kLicensesPurchased] ?? 0; }
  get licensesRemaining() { return attributes[this.constructor.kLicensesRemaining] ?? 0; }
  get licensesUsed() { return attributes[this.constructor.kLicensesUsed] ?? 0; }
  get contentType() { return attributes[this.constructor.kContentType] ?? ''; }
  get displayName() { return attributes[this.constructor.kDisplayName] ?? ''; }
  get filetype() { return attributes[this.constructor.kFiletype] ?? ''; }
  get linkedUrl() { return attributes[this.constructor.kLinkedUrl] ?? ''; }
  get pcoType() { return attributes[this.constructor.kPcoType] ?? ''; }
  get remoteLink() { return attributes[this.constructor.kRemoteLink] ?? ''; }
  get thumbnailUrl() { return attributes[this.constructor.kThumbnailUrl] ?? ''; }
  get url() { return attributes[this.constructor.kUrl] ?? ''; }
  get isAllowMp3Download() { return attributes[this.constructor.kAllowMp3Download] == true; }
  get isWebStreamable() { return attributes[this.constructor.kWebStreamable] == true; }
  get isDownloadable() { return attributes[this.constructor.kDownloadable] == true; }
  get isTransposable() { return attributes[this.constructor.kTransposable] == true; }
  get isStreamable() { return attributes[this.constructor.kStreamable] == true; }
  get isHasPreview() { return attributes[this.constructor.kHasPreview] == true; }
  get fileUploadIdentifier() { return attributes[this.constructor.kFileUploadIdentifier] ?? ''; }
  

  // setters for object attributes

  set pageOrder(s) {attributes[this.constructor.kPageOrder] = s;}
  set filename(s) {attributes[this.constructor.kFilename] = s;}
  set remoteLink(s) {attributes[this.constructor.kRemoteLink] = s;}
  set fileUploadIdentifier(s) {attributes[this.constructor.kFileUploadIdentifier] = s;}
  

  // additional setters and getters for assignable values

  get attachmentTypeIds() { return attributes[this.constructor.kAttachmentTypeIds] ?? ''; }
  set attachmentTypeIds(s) {attributes[this.constructor.kAttachmentTypeIds] = s;}
  



  // Class Constructors
  // PcoServicesAttachment._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesAttachment({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesAttachment] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/attachments`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoServicesAttachment.kPcoApplication, PcoServicesAttachment.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/attachments`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/songs/${songId}/arrangements/${arrangementId}/attachments`
  static getFromSongAndArrangement(songId, arrangementId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/songs/${songId}/arrangements/${arrangementId}/attachments`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/attachments`
  static getFromServiceTypeAndPlanAndItem(serviceTypeId, planId, itemId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/attachments`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/selected_attachment`
  static getSelectedAttachmentFromServiceTypeAndPlanAndItem(serviceTypeId, planId, itemId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/selected_attachment`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/selected_background`
  static getSelectedBackgroundFromServiceTypeAndPlanAndItem(serviceTypeId, planId, itemId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/selected_background`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/songs/${songId}/arrangements/${arrangementId}/keys/${keyId}/attachments`
  static getFromSongAndArrangementAndKey(songId, arrangementId, keyId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/songs/${songId}/arrangements/${arrangementId}/keys/${keyId}/attachments`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/media/${mediaId}/attachments`
  static getFromMedia(mediaId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/media/${mediaId}/attachments`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/all_attachments`
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
  static getAllAttachmentsFromServiceTypeAndPlan(serviceTypeId, planId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/all_attachments`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/attachments`
  static getFromServiceTypeAndPlan(serviceTypeId, planId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/attachments`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/attachments`
  static getFromServiceType(serviceTypeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/attachments`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `/services/v2/songs/${songId}/attachments`
  static getFromSong(songId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/songs/${songId}/attachments`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesZoom] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/attachments/1/zooms`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getZooms({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesZoom.canInclude;
    let url = `${apiEndpoint}/zooms`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
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
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  open(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/open`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
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
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  preview(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/preview`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
