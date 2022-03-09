/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.815206
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People Condition Object
/// 
/// - Application:        people
/// - Id:                 condition
/// - Type:               Condition
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions
/// 
/// Description:
/// A condition is an individual criterion used by a List Rule.
/// 
/// Example:
/// ```json
/// {
///   "type": "Condition",
///   "id": "1",
///   "attributes": {
///     "application": "string",
///     "definition_class": "string",
///     "comparison": "string",
///     "settings": "string",
///     "definition_identifier": "string",
///     "description": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
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
/// - created_by: include associated created_by 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `application`: (URLParameter), query on a specific application, example: ?where[application]=string
/// - `comparison`: (URLParameter), query on a specific comparison, example: ?where[comparison]=string
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `definition_class`: (URLParameter), query on a specific definition_class, example: ?where[definition_class]=string
/// - `definition_identifier`: (URLParameter), query on a specific definition_identifier, example: ?where[definition_identifier]=string
/// - `description`: (URLParameter), query on a specific description, example: ?where[description]=string
/// - `settings`: (URLParameter), query on a specific settings, example: ?where[settings]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `application`: (URLParameter), prefix with a hyphen (-application) to reverse the order
/// - `comparison`: (URLParameter), prefix with a hyphen (-comparison) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `definition_class`: (URLParameter), prefix with a hyphen (-definition_class) to reverse the order
/// - `definition_identifier`: (URLParameter), prefix with a hyphen (-definition_identifier) to reverse the order
/// - `description`: (URLParameter), prefix with a hyphen (-description) to reverse the order
/// - `settings`: (URLParameter), prefix with a hyphen (-settings) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `person-condition-created_by`: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions/1/created_by
/// 
/// All Inbound Edges:
/// - `condition-rule-conditions`: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleCondition extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'Condition';
  static kTypeId = 'condition';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'condition-rule-conditions';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions';

  /// possible includes with parameter ?include=a,b
  /// - `created_by`: include associated created_by 
  static get canInclude() { return ['created_by'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `application`: (URLParameter), query on a specific application, example: ?where[application]=string
  /// - `comparison`: (URLParameter), query on a specific comparison, example: ?where[comparison]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `definition_class`: (URLParameter), query on a specific definition_class, example: ?where[definition_class]=string
  /// - `definition_identifier`: (URLParameter), query on a specific definition_identifier, example: ?where[definition_identifier]=string
  /// - `description`: (URLParameter), query on a specific description, example: ?where[description]=string
  /// - `settings`: (URLParameter), query on a specific settings, example: ?where[settings]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['application','comparison','created_at','definition_class','definition_identifier','description','settings','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `application`: (URLParameter), prefix with a hyphen (-application) to reverse the order
  /// - `comparison`: (URLParameter), prefix with a hyphen (-comparison) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `definition_class`: (URLParameter), prefix with a hyphen (-definition_class) to reverse the order
  /// - `definition_identifier`: (URLParameter), prefix with a hyphen (-definition_identifier) to reverse the order
  /// - `description`: (URLParameter), prefix with a hyphen (-description) to reverse the order
  /// - `settings`: (URLParameter), prefix with a hyphen (-settings) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['application','comparison','created_at','definition_class','definition_identifier','description','settings','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleCondition.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleCondition.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleCondition.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kApplication() { return 'application' }
  static get kDefinitionClass() { return 'definition_class' }
  static get kComparison() { return 'comparison' }
  static get kSettings() { return 'settings' }
  static get kDefinitionIdentifier() { return 'definition_identifier' }
  static get kDescription() { return 'description' }
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

  get application() { return attributes[this.constructor.kApplication] ?? ''; }
  get definitionClass() { return attributes[this.constructor.kDefinitionClass] ?? ''; }
  get comparison() { return attributes[this.constructor.kComparison] ?? ''; }
  get settings() { return attributes[this.constructor.kSettings] ?? ''; }
  get definitionIdentifier() { return attributes[this.constructor.kDefinitionIdentifier] ?? ''; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleCondition._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleCondition({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleCondition] objects (expecting many)
  /// using a path like this: `/people/v2/lists/${listId}/rules/${ruleId}/conditions`
  static getFromListAndRule(listId, ruleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleCondition.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/lists/${listId}/rules/${ruleId}/conditions`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions/1/created_by`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCreatedBy({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/created_by`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
