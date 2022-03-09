/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.324130
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services AvailableSignup Object
/// 
/// - Application:        services
/// - Id:                 available_signup
/// - Type:               AvailableSignup
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/available_signups
/// 
/// Description:
/// Signups that are available.
/// 
/// Example:
/// ```json
/// {
///   "type": "AvailableSignup",
///   "id": "1",
///   "attributes": {
///     "organization_name": "string",
///     "planning_center_url": "string",
///     "service_type_name": "string",
///     "signups_available": true
///   },
///   "relationships": {
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     },
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - signup_sheets: include associated signup_sheets 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `signupsheet-availablesignup-signup_sheets`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets
/// 
/// All Inbound Edges:
/// - `availablesignup-person-available_signups`: https://api.planningcenteronline.com/services/v2/people/1/available_signups
/// 
/// All Actions:
/// NONE
///
export class PcoServicesAvailableSignup extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'AvailableSignup';
  static kTypeId = 'available_signup';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'availablesignup-person-available_signups';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups';

  /// possible includes with parameter ?include=a,b
  /// - `signup_sheets`: include associated signup_sheets 
  static get canInclude() { return ['signup_sheets'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesAvailableSignup.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesAvailableSignup.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesAvailableSignup.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kOrganizationName() { return 'organization_name' }
  static get kPlanningCenterUrl() { return 'planning_center_url' }
  static get kServiceTypeName() { return 'service_type_name' }
  static get kSignupsAvailable() { return 'signups_available' }


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

  get organizationName() { return attributes[this.constructor.kOrganizationName] ?? ''; }
  get planningCenterUrl() { return attributes[this.constructor.kPlanningCenterUrl] ?? ''; }
  get serviceTypeName() { return attributes[this.constructor.kServiceTypeName] ?? ''; }
  get isSignupsAvailable() { return attributes[this.constructor.kSignupsAvailable] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesAvailableSignup._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesAvailableSignup({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAvailableSignup] objects (expecting many)
  /// using a path like this: `/services/v2/people/${peopleId}/available_signups`
  /// 
  /// Available Query Filters:
  /// - `current_organization`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAvailableSignup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/available_signups`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSignupSheet] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSignupSheets({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSignupSheet.canInclude;
    let url = `${apiEndpoint}/signup_sheets`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
