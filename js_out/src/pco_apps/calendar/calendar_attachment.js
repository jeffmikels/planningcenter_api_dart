/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.159487
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar Attachment Object
/// 
/// - Application:        calendar
/// - Id:                 attachment
/// - Type:               Attachment
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/attachments
/// 
/// Description:
/// An uploaded file attached to an event.
/// 
/// Example:
/// ```json
/// {
///   "type": "Attachment",
///   "id": "1",
///   "attributes": {
///     "content_type": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "description": "string",
///     "file_size": 1,
///     "name": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "url": "string"
///   },
///   "relationships": {
///     "event": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - event: include associated event 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `content_type`: (URLParameter), query on a specific content_type, example: ?where[content_type]=string
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `description`: (URLParameter), query on a specific description, example: ?where[description]=string
/// - `file_size`: (URLParameter), query on a specific file_size, example: ?where[file_size]=1
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `content_type`: (URLParameter), prefix with a hyphen (-content_type) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `description`: (URLParameter), prefix with a hyphen (-description) to reverse the order
/// - `file_size`: (URLParameter), prefix with a hyphen (-file_size) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `event-attachment-event`: https://api.planningcenteronline.com/calendar/v2/attachments/1/event
/// 
/// All Inbound Edges:
/// - `attachment-event-attachments`: https://api.planningcenteronline.com/calendar/v2/events/1/attachments
/// - `attachment-organization-attachments`: https://api.planningcenteronline.com/calendar/v2/attachments
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarAttachment extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'Attachment';
  static kTypeId = 'attachment';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'attachment-organization-attachments';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/attachments';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/attachments';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event 
  static get canInclude() { return ['event'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `content_type`: (URLParameter), query on a specific content_type, example: ?where[content_type]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `description`: (URLParameter), query on a specific description, example: ?where[description]=string
  /// - `file_size`: (URLParameter), query on a specific file_size, example: ?where[file_size]=1
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['content_type','created_at','description','file_size','name','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `content_type`: (URLParameter), prefix with a hyphen (-content_type) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `description`: (URLParameter), prefix with a hyphen (-description) to reverse the order
  /// - `file_size`: (URLParameter), prefix with a hyphen (-file_size) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['content_type','created_at','description','file_size','name','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarAttachment.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarAttachment.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarAttachment.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kContentType() { return 'content_type' }
  static get kCreatedAt() { return 'created_at' }
  static get kDescription() { return 'description' }
  static get kFileSize() { return 'file_size' }
  static get kName() { return 'name' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kUrl() { return 'url' }


  // getters and setters
  // @override
  get createAllowed() { return []; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return false; }

  // @override
  get canUpdate() { return false; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get contentType() { return attributes[this.constructor.kContentType] ?? ''; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get fileSize() { return attributes[this.constructor.kFileSize] ?? 0; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get url() { return attributes[this.constructor.kUrl] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarAttachment._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarAttachment({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarAttachment] objects (expecting many)
  /// using a path like this: `/calendar/v2/attachments`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarAttachment.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/attachments`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarAttachment] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/${eventId}/attachments`
  static getFromEvent(eventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarAttachment.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/events/${eventId}/attachments`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/attachments/1/event`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEvent({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    let url = `${apiEndpoint}/event`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
