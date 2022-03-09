/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.568722
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns Option Object
/// 
/// - Application:        check-ins
/// - Id:                 option
/// - Type:               Option
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/options
/// 
/// Description:
/// An option which an attendee may select when checking in.
/// 
/// Options may have extra labels associated with them, denoted by `label` and `quantity`.
/// 
/// Example:
/// ```json
/// {
///   "type": "Option",
///   "id": "1",
///   "attributes": {
///     "body": "string",
///     "quantity": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - label: include associated label 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `label-option-label`: https://api.planningcenteronline.com/check-ins/v2/options/1/label
/// 
/// All Inbound Edges:
/// - `option-checkin-options`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/options
/// - `option-location-options`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/options
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsOption extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'Option';
  static kTypeId = 'option';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/options';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/options';

  /// possible includes with parameter ?include=a,b
  /// - `label`: include associated label 
  static get canInclude() { return ['label'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCheckInsOption.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsOption.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsOption.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kBody() { return 'body' }
  static get kQuantity() { return 'quantity' }
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

  get body() { return attributes[this.constructor.kBody] ?? ''; }
  get quantity() { return attributes[this.constructor.kQuantity] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsOption._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsOption({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsOption] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/options`
  static getFromCheckIn(checkInId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsOption.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/options`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsOption] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/locations/${locationId}/options`
  static getFromCheckInAndLocation(checkInId, locationId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsOption.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/locations/${locationId}/options`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/options/1/label`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLabel({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    let url = `${apiEndpoint}/label`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
