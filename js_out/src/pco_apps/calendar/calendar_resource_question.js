/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.204395
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar ResourceQuestion Object
/// 
/// - Application:        calendar
/// - Id:                 resource_question
/// - Type:               ResourceQuestion
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/resource_questions
/// 
/// Description:
/// A question to answer when requesting to book a room or resource.
/// 
/// Example:
/// ```json
/// {
///   "type": "ResourceQuestion",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "kind": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "choices": "string",
///     "description": "string",
///     "multiple_select": true,
///     "optional": true,
///     "position": 1,
///     "question": "string"
///   },
///   "relationships": {
///     "resource": {
///       "data": {
///         "type": "Resource",
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
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `kind`: (URLParameter), query on a specific kind, example: ?where[kind]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `resourcequestion-organization-resource_questions`: https://api.planningcenteronline.com/calendar/v2/resource_questions
/// - `resourcequestion-resource-resource_questions`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_questions
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarResourceQuestion extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'ResourceQuestion';
  static kTypeId = 'resource_question';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'resourcequestion-organization-resource_questions';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_questions';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_questions';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `kind`: (URLParameter), query on a specific kind, example: ?where[kind]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','kind','updated_at'] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarResourceQuestion.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarResourceQuestion.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarResourceQuestion.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kKind() { return 'kind' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kChoices() { return 'choices' }
  static get kDescription() { return 'description' }
  static get kMultipleSelect() { return 'multiple_select' }
  static get kOptional() { return 'optional' }
  static get kPosition() { return 'position' }
  static get kQuestion() { return 'question' }


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

  get kind() { return attributes[this.constructor.kKind] ?? ''; }
  get choices() { return attributes[this.constructor.kChoices] ?? ''; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get isMultipleSelect() { return attributes[this.constructor.kMultipleSelect] == true; }
  get isOptional() { return attributes[this.constructor.kOptional] == true; }
  get position() { return attributes[this.constructor.kPosition] ?? 0; }
  get question() { return attributes[this.constructor.kQuestion] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarResourceQuestion._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarResourceQuestion({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceQuestion] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_questions`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceQuestion.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resource_questions`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceQuestion] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/${resourceId}/resource_questions`
  static getFromResource(resourceId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceQuestion.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resources/${resourceId}/resource_questions`;
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
