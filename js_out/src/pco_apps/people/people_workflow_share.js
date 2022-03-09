/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.074328
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People WorkflowShare Object
/// 
/// - Application:        people
/// - Id:                 workflow_share
/// - Type:               WorkflowShare
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/workflow_shares
/// 
/// Description:
/// A workflow share defines who can access a workflow.
/// 
/// Example:
/// ```json
/// {
///   "type": "WorkflowShare",
///   "id": "1",
///   "attributes": {
///     "group": "value",
///     "permission": "value",
///     "person_id": "primary_key"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "workflow": {
///       "data": {
///         "type": "Workflow",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `permission`: (URLParameter), query on a specific permission, example: ?where[permission]=value
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `person-workflowshare-person`: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares/1/person
/// 
/// All Inbound Edges:
/// - `workflowshare-person-workflow_shares`: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares
/// - `workflowshare-workflow-shares`: https://api.planningcenteronline.com/people/v2/workflows/1/shares
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleWorkflowShare extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'WorkflowShare';
  static kTypeId = 'workflow_share';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'workflowshare-workflow-shares';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/shares';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/workflow_shares';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person 
  static get canInclude() { return ['person'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `permission`: (URLParameter), query on a specific permission, example: ?where[permission]=value
  static get canQuery() { return ['permission'] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleWorkflowShare.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleWorkflowShare.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleWorkflowShare.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kGroup() { return 'group' }
  static get kPermission() { return 'permission' }
  static get kPersonId() { return 'person_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['group','permission','person_id']; }

  // @override
  get updateAllowed() { return ['group','permission']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get group() { return attributes[this.constructor.kGroup] ?? ''; }
  get permission() { return attributes[this.constructor.kPermission] ?? ''; }
  get personId() { return attributes[this.constructor.kPersonId] ?? ''; }
  

  // setters for object attributes

  
  /// Possible values: `No Access`, `Viewer`, `Editor`, or `Manager`
  set group(s) {attributes[this.constructor.kGroup] = s;}
  
  /// Possible values: `view`, `manage_cards`, or `manage`
  set permission(s) {attributes[this.constructor.kPermission] = s;}
  set personId(s) {attributes[this.constructor.kPersonId] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleWorkflowShare._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleWorkflowShare({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleWorkflowShare] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people/${peopleId}/workflow_shares`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(peopleId) {
    super(PcoPeopleWorkflowShare.kPcoApplication, PcoPeopleWorkflowShare.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/people/${peopleId}/workflow_shares`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowShare] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/workflow_shares`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowShare.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/workflow_shares`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowShare] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/${workflowId}/shares`
  static getSharesFromWorkflow(workflowId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowShare.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/workflows/${workflowId}/shares`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_shares/1/person`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPerson({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/person`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
