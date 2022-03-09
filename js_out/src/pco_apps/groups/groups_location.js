/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.330055
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Groups Location Object
/// 
/// - Application:        groups
/// - Id:                 location
/// - Type:               Location
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/events/1/location
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Location",
///   "id": "1",
///   "attributes": {
///     "display_preference": "value",
///     "full_formatted_address": "string",
///     "latitude": 1.42,
///     "longitude": 1.42,
///     "name": "string",
///     "radius": "string",
///     "strategy": "string"
///   },
///   "relationships": {}
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
/// - `location-event-location`: https://api.planningcenteronline.com/groups/v2/events/1/location
/// - `location-group-location`: https://api.planningcenteronline.com/groups/v2/groups/1/location
/// 
/// All Actions:
/// NONE
///
export class PcoGroupsLocation extends PcoResource {
  static kPcoApplication = 'groups';
  static kTypeString = 'Location';
  static kTypeId = 'location';
  static kApiVersion = '2018-08-01';
  static kShortestEdgeId = 'location-group-location';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/groups/1/location';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/groups/v2/events/1/location';

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
  get shortestEdgePath() { return PcoGroupsLocation.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGroupsLocation.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGroupsLocation.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kDisplayPreference() { return 'display_preference' }
  static get kFullFormattedAddress() { return 'full_formatted_address' }
  static get kLatitude() { return 'latitude' }
  static get kLongitude() { return 'longitude' }
  static get kName() { return 'name' }
  static get kRadius() { return 'radius' }
  static get kStrategy() { return 'strategy' }


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

  get displayPreference() { return attributes[this.constructor.kDisplayPreference] ?? ''; }
  get fullFormattedAddress() { return attributes[this.constructor.kFullFormattedAddress] ?? ''; }
  get latitude() { return attributes[this.constructor.kLatitude] ?? 0; }
  get longitude() { return attributes[this.constructor.kLongitude] ?? 0; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get radius() { return attributes[this.constructor.kRadius] ?? ''; }
  get strategy() { return attributes[this.constructor.kStrategy] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoGroupsLocation._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGroupsLocation({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsLocation] objects (expecting many)
  /// using a path like this: `/groups/v2/events/${eventId}/location`
  static getFromEvent(eventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsLocation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/events/${eventId}/location`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsLocation] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/${groupId}/location`
  static getFromGroup(groupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsLocation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/groups/${groupId}/location`;
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
