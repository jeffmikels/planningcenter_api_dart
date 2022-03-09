/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.208797
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar RoomSetup Object
/// 
/// - Application:        calendar
/// - Id:                 room_setup
/// - Type:               RoomSetup
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/room_setups
/// 
/// Description:
/// A diagram and list of suggested resources useful for predefined room setups.
/// 
/// Example:
/// ```json
/// {
///   "type": "RoomSetup",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "description": "string",
///     "diagram": "string",
///     "diagram_url": "string",
///     "diagram_thumbnail_url": "string"
///   },
///   "relationships": {
///     "room_setup": {
///       "data": {
///         "type": "RoomSetup",
///         "id": "1"
///       }
///     },
///     "resource_suggestions": {
///       "data": [
///         {
///           "type": "ResourceSuggestion",
///           "id": "1"
///         }
///       ]
///     },
///     "containing_resource": {
///       "data": {
///         "type": "Resource",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - containing_resource: include associated containing_resource 
/// - resource_suggestions: include associated resource_suggestions 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `resource-roomsetup-containing_resource`: https://api.planningcenteronline.com/calendar/v2/room_setups/1/containing_resource
/// - `resourcesuggestion-roomsetup-resource_suggestions`: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions
/// 
/// All Inbound Edges:
/// - `roomsetup-eventresourcerequest-room_setup`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/room_setup
/// - `roomsetup-organization-room_setups`: https://api.planningcenteronline.com/calendar/v2/room_setups
/// - `roomsetup-resource-room_setups`: https://api.planningcenteronline.com/calendar/v2/resources/1/room_setups
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarRoomSetup extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'RoomSetup';
  static kTypeId = 'room_setup';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'roomsetup-organization-room_setups';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/room_setups';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/room_setups';

  /// possible includes with parameter ?include=a,b
  /// - `containing_resource`: include associated containing_resource 
  /// - `resource_suggestions`: include associated resource_suggestions 
  static get canInclude() { return ['containing_resource','resource_suggestions'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','name','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','name','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarRoomSetup.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarRoomSetup.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarRoomSetup.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kName() { return 'name' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kDescription() { return 'description' }
  static get kDiagram() { return 'diagram' }
  static get kDiagramUrl() { return 'diagram_url' }
  static get kDiagramThumbnailUrl() { return 'diagram_thumbnail_url' }


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

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get diagram() { return attributes[this.constructor.kDiagram] ?? ''; }
  get diagramUrl() { return attributes[this.constructor.kDiagramUrl] ?? ''; }
  get diagramThumbnailUrl() { return attributes[this.constructor.kDiagramThumbnailUrl] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarRoomSetup._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarRoomSetup({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarRoomSetup] objects (expecting many)
  /// using a path like this: `/calendar/v2/room_setups`
  /// 
  /// Available Query Filters:
  /// - `shared_room_setups`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarRoomSetup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/room_setups`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarRoomSetup] objects (expecting one)
  /// using a path like this: `/calendar/v2/event_resource_requests/${eventResourceRequestId}/room_setup`
  static getFromEventResourceRequest(eventResourceRequestId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarRoomSetup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/event_resource_requests/${eventResourceRequestId}/room_setup`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarRoomSetup] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/${resourceId}/room_setups`
  static getFromResource(resourceId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarRoomSetup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resources/${resourceId}/room_setups`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResource] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/room_setups/1/containing_resource`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getContainingResource({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    let url = `${apiEndpoint}/containing_resource`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceSuggestion] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getResourceSuggestions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceSuggestion.canInclude;
    let url = `${apiEndpoint}/resource_suggestions`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
