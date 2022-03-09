/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.479010
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services ScheduledPerson Object
/// 
/// - Application:        services
/// - Id:                 scheduled_person
/// - Type:               ScheduledPerson
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people
/// 
/// Description:
/// A person already scheduled to a SignupSheet
/// 
/// Example:
/// ```json
/// {
///   "type": "ScheduledPerson",
///   "id": "1",
///   "attributes": {
///     "full_name": "string",
///     "status": "string",
///     "thumbnail": "string"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "signup_sheet": {
///       "data": {
///         "type": "SignupSheet",
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
/// - `scheduledperson-signupsheet-scheduled_people`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people
/// 
/// All Actions:
/// NONE
///
export class PcoServicesScheduledPerson extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'ScheduledPerson';
  static kTypeId = 'scheduled_person';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'scheduledperson-signupsheet-scheduled_people';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people';

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
  get shortestEdgePath() { return PcoServicesScheduledPerson.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesScheduledPerson.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesScheduledPerson.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kFullName() { return 'full_name' }
  static get kStatus() { return 'status' }
  static get kThumbnail() { return 'thumbnail' }


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

  get fullName() { return attributes[this.constructor.kFullName] ?? ''; }
  get status() { return attributes[this.constructor.kStatus] ?? ''; }
  get thumbnail() { return attributes[this.constructor.kThumbnail] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesScheduledPerson._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesScheduledPerson({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesScheduledPerson] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/available_signups/${availableSignupId}/signup_sheets/${signupSheetId}/scheduled_people`
  static getScheduledPeopleFromPeopleAndAvailableSignupAndSignupSheet(peopleId, availableSignupId, signupSheetId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesScheduledPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/available_signups/${availableSignupId}/signup_sheets/${signupSheetId}/scheduled_people`;
    
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
