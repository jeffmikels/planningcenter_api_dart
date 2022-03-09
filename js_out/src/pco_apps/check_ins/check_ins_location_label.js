/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.568021
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns LocationLabel Object
/// 
/// - Application:        check-ins
/// - Id:                 location_label
/// - Type:               LocationLabel
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels
/// 
/// Description:
/// Says how many of a given label to print for this location and
/// whether to print it for regulars, guests, and/or volunteers.
/// 
/// Example:
/// ```json
/// {
///   "type": "LocationLabel",
///   "id": "1",
///   "attributes": {
///     "quantity": 1,
///     "for_regular": true,
///     "for_guest": true,
///     "for_volunteer": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - label: include associated label 
/// - location: include associated location 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `label-locationlabel-label`: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/label
/// - `location-locationlabel-location`: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/location
/// 
/// All Inbound Edges:
/// - `locationlabel-label-location_labels`: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels
/// - `locationlabel-location-location_labels`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_labels
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsLocationLabel extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'LocationLabel';
  static kTypeId = 'location_label';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = 'locationlabel-label-location_labels';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels';

  /// possible includes with parameter ?include=a,b
  /// - `label`: include associated label 
  /// - `location`: include associated location 
  static get canInclude() { return ['label','location'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCheckInsLocationLabel.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsLocationLabel.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsLocationLabel.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kQuantity() { return 'quantity' }
  static get kForRegular() { return 'for_regular' }
  static get kForGuest() { return 'for_guest' }
  static get kForVolunteer() { return 'for_volunteer' }
  static get kCreatedAt() { return 'created_at' }
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
  get isForRegular() { return attributes[this.constructor.kForRegular] == true; }
  get isForGuest() { return attributes[this.constructor.kForGuest] == true; }
  get isForVolunteer() { return attributes[this.constructor.kForVolunteer] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsLocationLabel._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsLocationLabel({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocationLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/labels/${labelId}/location_labels`
  static getFromLabel(labelId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocationLabel.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/labels/${labelId}/location_labels`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocationLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/locations/${locationId}/location_labels`
  static getFromCheckInAndLocation(checkInId, locationId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocationLabel.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/locations/${locationId}/location_labels`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/label`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLabel({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    let url = `${apiEndpoint}/label`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/location`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLocation({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    let url = `${apiEndpoint}/location`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
