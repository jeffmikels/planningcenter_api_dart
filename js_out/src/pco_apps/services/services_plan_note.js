/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.461883
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services PlanNote Object
/// 
/// - Application:        services
/// - Id:                 plan_note
/// - Type:               PlanNote
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes
/// 
/// Description:
/// A specific plan note within a single plan.
/// 
/// Example:
/// ```json
/// {
///   "type": "PlanNote",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "category_name": "string",
///     "content": "string"
///   },
///   "relationships": {
///     "plan_note_category": {
///       "data": {
///         "type": "PlanNoteCategory",
///         "id": "1"
///       }
///     },
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - plan_note_category: include associated plan_note_category 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `plannotecategory-plannote-plan_note_category`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes/1/plan_note_category
/// 
/// All Inbound Edges:
/// - `plannote-plan-notes`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes
/// - `plannote-plantemplate-notes`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes
/// 
/// All Actions:
/// NONE
///
export class PcoServicesPlanNote extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'PlanNote';
  static kTypeId = 'plan_note';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'plannote-plan-notes';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes';

  /// possible includes with parameter ?include=a,b
  /// - `plan_note_category`: include associated plan_note_category 
  static get canInclude() { return ['plan_note_category'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesPlanNote.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesPlanNote.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesPlanNote.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kCategoryName() { return 'category_name' }
  static get kContent() { return 'content' }


  // getters and setters
  // @override
  get createAllowed() { return ['content']; }

  // @override
  get updateAllowed() { return ['content']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get categoryName() { return attributes[this.constructor.kCategoryName] ?? ''; }
  get content() { return attributes[this.constructor.kContent] ?? ''; }
  

  // setters for object attributes

  set content(s) {attributes[this.constructor.kContent] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesPlanNote._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesPlanNote({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesPlanNote] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/service_types/${serviceTypeId}/plan_templates/${planTemplateId}/notes`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(serviceTypeId,planTemplateId) {
    super(PcoServicesPlanNote.kPcoApplication, PcoServicesPlanNote.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/service_types/${serviceTypeId}/plan_templates/${planTemplateId}/notes`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanNote] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/notes`
  static getNotesFromServiceTypeAndPlan(serviceTypeId, planId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanNote.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/notes`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanNote] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plan_templates/${planTemplateId}/notes`
  static getNotesFromServiceTypeAndPlanTemplate(serviceTypeId, planTemplateId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanNote.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plan_templates/${planTemplateId}/notes`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanNoteCategory] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes/1/plan_note_category`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPlanNoteCategory({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanNoteCategory.canInclude;
    let url = `${apiEndpoint}/plan_note_category`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
