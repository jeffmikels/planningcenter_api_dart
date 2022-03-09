/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.017574
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People Rule Object
/// 
/// - Application:        people
/// - Id:                 rule
/// - Type:               Rule
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/lists/1/rules
/// 
/// Description:
/// A rule belongs to a List and groups conditions together.
/// 
/// Example:
/// ```json
/// {
///   "type": "Rule",
///   "id": "1",
///   "attributes": {
///     "subset": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - conditions: include associated conditions 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `subset`: (URLParameter), query on a specific subset, example: ?where[subset]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `subset`: (URLParameter), prefix with a hyphen (-subset) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `condition-rule-conditions`: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions
/// 
/// All Inbound Edges:
/// - `rule-list-rules`: https://api.planningcenteronline.com/people/v2/lists/1/rules
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleRule extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'Rule';
  static kTypeId = 'rule';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'rule-list-rules';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/rules';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/rules';

  /// possible includes with parameter ?include=a,b
  /// - `conditions`: include associated conditions 
  static get canInclude() { return ['conditions'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `subset`: (URLParameter), query on a specific subset, example: ?where[subset]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','subset','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `subset`: (URLParameter), prefix with a hyphen (-subset) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','subset','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleRule.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleRule.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleRule.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kSubset() { return 'subset' }
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

  get subset() { return attributes[this.constructor.kSubset] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleRule._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleRule({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleRule] objects (expecting many)
  /// using a path like this: `/people/v2/lists/${listId}/rules`
  static getFromList(listId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleRule.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/lists/${listId}/rules`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleCondition] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getConditions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleCondition.canInclude;
    let url = `${apiEndpoint}/conditions`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
