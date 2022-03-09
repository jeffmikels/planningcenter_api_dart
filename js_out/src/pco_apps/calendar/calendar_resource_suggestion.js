/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.205663
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar ResourceSuggestion Object
/// 
/// - Application:        calendar
/// - Id:                 resource_suggestion
/// - Type:               ResourceSuggestion
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions
/// 
/// Description:
/// A resource and quantity suggested by a room setup.
/// 
/// Example:
/// ```json
/// {
///   "type": "ResourceSuggestion",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "quantity": 1,
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "resource": {
///       "data": {
///         "type": "Resource",
///         "id": "1"
///       }
///     },
///     "room_setup": {
///       "data": {
///         "type": "RoomSetup",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - resource: include associated resource 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `resource-resourcesuggestion-resource`: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions/1/resource
/// 
/// All Inbound Edges:
/// - `resourcesuggestion-roomsetup-resource_suggestions`: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarResourceSuggestion extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'ResourceSuggestion';
  static kTypeId = 'resource_suggestion';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'resourcesuggestion-roomsetup-resource_suggestions';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions';

  /// possible includes with parameter ?include=a,b
  /// - `resource`: include associated resource 
  static get canInclude() { return ['resource'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarResourceSuggestion.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarResourceSuggestion.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarResourceSuggestion.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kQuantity() { return 'quantity' }
  static get kUpdatedAt() { return 'updated_at' }


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

  get quantity() { return attributes[this.constructor.kQuantity] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarResourceSuggestion._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarResourceSuggestion({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceSuggestion] objects (expecting many)
  /// using a path like this: `/calendar/v2/room_setups/${roomSetupId}/resource_suggestions`
  static getFromRoomSetup(roomSetupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceSuggestion.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/room_setups/${roomSetupId}/resource_suggestions`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResource] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions/1/resource`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getResource({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    let url = `${apiEndpoint}/resource`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
