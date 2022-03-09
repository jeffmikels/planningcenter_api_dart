/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.489315
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services SignupSheet Object
/// 
/// - Application:        services
/// - Id:                 signup_sheet
/// - Type:               SignupSheet
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets
/// 
/// Description:
/// Available positions to sign up for
/// 
/// Example:
/// ```json
/// {
///   "type": "SignupSheet",
///   "id": "1",
///   "attributes": {
///     "sort_date": "2000-01-01T12:00:00Z",
///     "group_key": "string",
///     "team_name": "string",
///     "display_times": "string",
///     "position_name": "string",
///     "title": "string",
///     "sort_index": 1
///   },
///   "relationships": {
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "team_position": {
///       "data": {
///         "type": "TeamPosition",
///         "id": "1"
///       }
///     },
///     "team": {
///       "data": {
///         "type": "Team",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - scheduled_people: include associated scheduled_people 
/// - signup_sheet_metadata: include associated signup_sheet_metadata 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `scheduledperson-signupsheet-scheduled_people`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people
/// - `signupsheetmetadata-signupsheet-signup_sheet_metadata`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata
/// 
/// All Inbound Edges:
/// - `signupsheet-availablesignup-signup_sheets`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets
/// 
/// All Actions:
/// - `accept`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/accept
///
export class PcoServicesSignupSheet extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'SignupSheet';
  static kTypeId = 'signup_sheet';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'signupsheet-availablesignup-signup_sheets';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets';

  /// possible includes with parameter ?include=a,b
  /// - `scheduled_people`: include associated scheduled_people 
  /// - `signup_sheet_metadata`: include associated signup_sheet_metadata 
  static get canInclude() { return ['scheduled_people','signup_sheet_metadata'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesSignupSheet.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesSignupSheet.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesSignupSheet.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kSortDate() { return 'sort_date' }
  static get kGroupKey() { return 'group_key' }
  static get kTeamName() { return 'team_name' }
  static get kDisplayTimes() { return 'display_times' }
  static get kPositionName() { return 'position_name' }
  static get kTitle() { return 'title' }
  static get kSortIndex() { return 'sort_index' }


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

  get sortDate() { return Date.parse(attributes[this.constructor.kSortDate] ?? 0); }
  get groupKey() { return attributes[this.constructor.kGroupKey] ?? ''; }
  get teamName() { return attributes[this.constructor.kTeamName] ?? ''; }
  get displayTimes() { return attributes[this.constructor.kDisplayTimes] ?? ''; }
  get positionName() { return attributes[this.constructor.kPositionName] ?? ''; }
  get title() { return attributes[this.constructor.kTitle] ?? ''; }
  get sortIndex() { return attributes[this.constructor.kSortIndex] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesSignupSheet._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesSignupSheet({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSignupSheet] objects (expecting many)
  /// using a path like this: `/services/v2/people/${peopleId}/available_signups/${availableSignupId}/signup_sheets`
  static getFromPeopleAndAvailableSignup(peopleId, availableSignupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSignupSheet.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/available_signups/${availableSignupId}/signup_sheets`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesScheduledPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getScheduledPeople({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesScheduledPerson.canInclude;
    let url = `${apiEndpoint}/scheduled_people`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSignupSheetMetadata] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSignupSheetMetadata({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSignupSheetMetadata.canInclude;
    let url = `${apiEndpoint}/signup_sheet_metadata`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `accept`
  /// 
  /// Accept a signup sheet
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/accept`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  accept(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/accept`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
