/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.056893
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People Workflow Object
/// 
/// - Application:        people
/// - Id:                 workflow
/// - Type:               Workflow
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/workflows
/// 
/// Description:
/// A Workflow
/// 
/// Example:
/// ```json
/// {
///   "type": "Workflow",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "my_ready_card_count": 1,
///     "total_ready_card_count": 1,
///     "completed_card_count": 1,
///     "total_cards_count": 1,
///     "total_ready_and_snoozed_card_count": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "deleted_at": "2000-01-01T12:00:00Z",
///     "campus_id": "primary_key",
///     "workflow_category_id": "primary_key"
///   },
///   "relationships": {
///     "workflow_category": {
///       "data": {
///         "type": "WorkflowCategory",
///         "id": "1"
///       }
///     },
///     "campus": {
///       "data": {
///         "type": "Campus",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - category: include associated category 
/// - shares: include associated shares 
/// - steps: include associated steps 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `campus_id`: (URLParameter), query on a specific campus_id, example: ?where[campus_id]=primary_key
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `deleted_at`: (URLParameter), query on a specific deleted_at, example: ?where[deleted_at]=2000-01-01T12:00:00Z
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// - `workflow_category_id`: (URLParameter), query on a specific workflow_category_id, example: ?where[workflow_category_id]=primary_key
/// 
/// Possible orderings with parameter ?order=
/// - `campus_id`: (URLParameter), prefix with a hyphen (-campus_id) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `deleted_at`: (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
/// - `workflow_category_id`: (URLParameter), prefix with a hyphen (-workflow_category_id) to reverse the order
///
/// All Outbound Edges:
/// - `workflowcard-workflow-cards`: https://api.planningcenteronline.com/people/v2/workflows/1/cards
/// - `workflowcategory-workflow-category`: https://api.planningcenteronline.com/people/v2/workflows/1/category
/// - `person-workflow-shared_people`: https://api.planningcenteronline.com/people/v2/workflows/1/shared_people
/// - `workflowshare-workflow-shares`: https://api.planningcenteronline.com/people/v2/workflows/1/shares
/// - `workflowstep-workflow-steps`: https://api.planningcenteronline.com/people/v2/workflows/1/steps
/// 
/// All Inbound Edges:
/// - `workflow-organization-workflows`: https://api.planningcenteronline.com/people/v2/workflows
/// - `workflow-workflowcard-workflow`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/workflow
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleWorkflow extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'Workflow';
  static kTypeId = 'workflow';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'workflow-organization-workflows';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows';

  /// possible includes with parameter ?include=a,b
  /// - `category`: include associated category 
  /// - `shares`: include associated shares 
  /// - `steps`: include associated steps 
  static get canInclude() { return ['category','shares','steps'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `campus_id`: (URLParameter), query on a specific campus_id, example: ?where[campus_id]=primary_key
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `deleted_at`: (URLParameter), query on a specific deleted_at, example: ?where[deleted_at]=2000-01-01T12:00:00Z
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  /// - `workflow_category_id`: (URLParameter), query on a specific workflow_category_id, example: ?where[workflow_category_id]=primary_key
  static get canQuery() { return ['campus_id','created_at','deleted_at','id','name','updated_at','workflow_category_id'] }

  /// possible orderings with parameter ?order=
  /// - `campus_id`: (URLParameter), prefix with a hyphen (-campus_id) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `deleted_at`: (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  /// - `workflow_category_id`: (URLParameter), prefix with a hyphen (-workflow_category_id) to reverse the order
  static get canOrderBy() { return ['campus_id','created_at','deleted_at','name','updated_at','workflow_category_id'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleWorkflow.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleWorkflow.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleWorkflow.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kMyReadyCardCount() { return 'my_ready_card_count' }
  static get kTotalReadyCardCount() { return 'total_ready_card_count' }
  static get kCompletedCardCount() { return 'completed_card_count' }
  static get kTotalCardsCount() { return 'total_cards_count' }
  static get kTotalReadyAndSnoozedCardCount() { return 'total_ready_and_snoozed_card_count' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kDeletedAt() { return 'deleted_at' }
  static get kCampusId() { return 'campus_id' }
  static get kWorkflowCategoryId() { return 'workflow_category_id' }
  static get kMyOverdueCardCount() { return 'my_overdue_card_count' }
  static get kMyDueSoonCardCount() { return 'my_due_soon_card_count' }


  // getters and setters
  // @override
  get createAllowed() { return ['name','campus_id','workflow_category_id']; }

  // @override
  get updateAllowed() { return ['name','campus_id','workflow_category_id']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get myReadyCardCount() { return attributes[this.constructor.kMyReadyCardCount] ?? 0; }
  get totalReadyCardCount() { return attributes[this.constructor.kTotalReadyCardCount] ?? 0; }
  get completedCardCount() { return attributes[this.constructor.kCompletedCardCount] ?? 0; }
  get totalCardsCount() { return attributes[this.constructor.kTotalCardsCount] ?? 0; }
  get totalReadyAndSnoozedCardCount() { return attributes[this.constructor.kTotalReadyAndSnoozedCardCount] ?? 0; }
  get deletedAt() { return Date.parse(attributes[this.constructor.kDeletedAt] ?? 0); }
  get campusId() { return attributes[this.constructor.kCampusId] ?? ''; }
  get workflowCategoryId() { return attributes[this.constructor.kWorkflowCategoryId] ?? ''; }
  get myOverdueCardCount() { return attributes[this.constructor.kMyOverdueCardCount] ?? 0; }
  get myDueSoonCardCount() { return attributes[this.constructor.kMyDueSoonCardCount] ?? 0; }
  

  // setters for object attributes

  set name(s) {attributes[this.constructor.kName] = s;}
  set campusId(s) {attributes[this.constructor.kCampusId] = s;}
  set workflowCategoryId(s) {attributes[this.constructor.kWorkflowCategoryId] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleWorkflow._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleWorkflow({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleWorkflow] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/workflows`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeopleWorkflow.kPcoApplication, PcoPeopleWorkflow.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/workflows`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflow] objects (expecting many)
  /// using a path like this: `/people/v2/workflows`
  /// 
  /// Available Query Filters:
  /// - `only_deleted`
  /// - `with_deleted`
  /// - `with_recoverable`
  /// - `with_steps`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflow.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/workflows`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflow] objects (expecting one)
  /// using a path like this: `/people/v2/people/${peopleId}/home_workflow_cards/${workflowCardId}/workflow`
  static getFromPeopleAndWorkflowCard(peopleId, workflowCardId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflow.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/home_workflow_cards/${workflowCardId}/workflow`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowCard] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/cards`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCards({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowCard.canInclude;
    let url = `${apiEndpoint}/cards`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/category`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCategory({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowCategory.canInclude;
    let url = `${apiEndpoint}/category`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/shared_people`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSharedPeople({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/shared_people`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowShare] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/shares`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getShares({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowShare.canInclude;
    let url = `${apiEndpoint}/shares`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowStep] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/steps`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSteps({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowStep.canInclude;
    let url = `${apiEndpoint}/steps`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
