/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.489993
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services SignupSheetMetadata Object
/// 
/// - Application:        services
/// - Id:                 signup_sheet_metadata
/// - Type:               SignupSheetMetadata
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata
/// 
/// Description:
/// A SignupSheetMetadata Resource
/// 
/// Example:
/// ```json
/// {
///   "type": "SignupSheetMetadata",
///   "id": "1",
///   "attributes": {
///     "conflicts": {},
///     "time_type": "string",
///     "time_name": "string",
///     "starts_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "plan_time": {
///       "data": {
///         "type": "PlanTime",
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
/// - `signupsheetmetadata-signupsheet-signup_sheet_metadata`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata
/// 
/// All Actions:
/// NONE
///
export class PcoServicesSignupSheetMetadata extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'SignupSheetMetadata';
  static kTypeId = 'signup_sheet_metadata';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'signupsheetmetadata-signupsheet-signup_sheet_metadata';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata';

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
  get shortestEdgePath() { return PcoServicesSignupSheetMetadata.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesSignupSheetMetadata.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesSignupSheetMetadata.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kConflicts() { return 'conflicts' }
  static get kTimeType() { return 'time_type' }
  static get kTimeName() { return 'time_name' }
  static get kStartsAt() { return 'starts_at' }


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

  get conflicts() { return attributes[this.constructor.kConflicts] ?? ''; }
  get timeType() { return attributes[this.constructor.kTimeType] ?? ''; }
  get timeName() { return attributes[this.constructor.kTimeName] ?? ''; }
  get startsAt() { return Date.parse(attributes[this.constructor.kStartsAt] ?? 0); }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesSignupSheetMetadata._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesSignupSheetMetadata({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSignupSheetMetadata] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/available_signups/${availableSignupId}/signup_sheets/${signupSheetId}/signup_sheet_metadata`
  static getFromPeopleAndAvailableSignupAndSignupSheet(peopleId, availableSignupId, signupSheetId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSignupSheetMetadata.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/available_signups/${availableSignupId}/signup_sheets/${signupSheetId}/signup_sheet_metadata`;
    
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
