/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.512422
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services Zoom Object
/// 
/// - Application:        services
/// - Id:                 zoom
/// - Type:               Zoom
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/attachments/1/zooms
/// 
/// Description:
/// Describes a zoom level for an attachment
/// 
/// Example:
/// ```json
/// {
///   "type": "Zoom",
///   "id": "1",
///   "attributes": {
///     "aspect_ratio": 1.42,
///     "zoom_level": 1.42,
///     "x_offset": 1.42,
///     "y_offset": 1.42
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "attachable": {
///       "data": {
///         "type": "Attachment",
///         "id": "1"
///       }
///     },
///     "attachment": {
///       "data": {
///         "type": "Attachment",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `zoom-attachment-zooms`: https://api.planningcenteronline.com/services/v2/attachments/1/zooms
/// 
/// All Actions:
/// NONE
///
export class PcoServicesZoom extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'Zoom';
  static kTypeId = 'zoom';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'zoom-attachment-zooms';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/attachments/1/zooms';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/attachments/1/zooms';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesZoom.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesZoom.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesZoom.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kAspectRatio() { return 'aspect_ratio' }
  static get kZoomLevel() { return 'zoom_level' }
  static get kXOffset() { return 'x_offset' }
  static get kYOffset() { return 'y_offset' }


  // getters and setters
  // @override
  get createAllowed() { return ['zoom_level','x_offset','y_offset','aspect_ratio']; }

  // @override
  get updateAllowed() { return ['zoom_level','x_offset','y_offset']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get aspectRatio() { return attributes[this.constructor.kAspectRatio] ?? 0; }
  get zoomLevel() { return attributes[this.constructor.kZoomLevel] ?? 0; }
  get xOffset() { return attributes[this.constructor.kXOffset] ?? 0; }
  get yOffset() { return attributes[this.constructor.kYOffset] ?? 0; }
  

  // setters for object attributes

  
  /// The aspect ratio of the device this zoom is for. It is rounded to the nearest 3 decimal places.
  set aspectRatio(n) { attributes[this.constructor.kAspectRatio] = n; }
  
  /// The percentage of the zoom. Must be a value between 1.0 and 5.0
  set zoomLevel(n) { attributes[this.constructor.kZoomLevel] = n; }
  
  /// The percentage of the document's width the zoomed document should be offset by horizontally.
  set xOffset(n) { attributes[this.constructor.kXOffset] = n; }
  
  /// The percentage of the document's height the zoomed document should be offset by vertically.
  set yOffset(n) { attributes[this.constructor.kYOffset] = n; }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesZoom._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesZoom({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesZoom] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/attachments/${attachmentId}/zooms`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(attachmentId) {
    super(PcoServicesZoom.kPcoApplication, PcoServicesZoom.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/attachments/${attachmentId}/zooms`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesZoom] objects (expecting many)
  /// using a path like this: `/services/v2/attachments/${attachmentId}/zooms`
  static getFromAttachment(attachmentId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesZoom.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/attachments/${attachmentId}/zooms`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
