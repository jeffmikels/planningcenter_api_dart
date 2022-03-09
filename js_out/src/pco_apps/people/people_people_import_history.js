/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.877589
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People PeopleImportHistory Object
/// 
/// - Application:        people
/// - Id:                 people_import_history
/// - Type:               PeopleImportHistory
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people_imports/1/histories
/// 
/// Description:
/// A PeopleImportHistory is a record of change that occurred when the parent PeopleImport was completed.
/// 
/// Example:
/// ```json
/// {
///   "type": "PeopleImportHistory",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "conflicting_changes": {},
///     "kind": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - household: include associated household 
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `household-peopleimporthistory-household`: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/household
/// - `person-peopleimporthistory-person`: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/person
/// 
/// All Inbound Edges:
/// - `peopleimporthistory-peopleimport-histories`: https://api.planningcenteronline.com/people/v2/people_imports/1/histories
/// 
/// All Actions:
/// NONE
///
export class PcoPeoplePeopleImportHistory extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'PeopleImportHistory';
  static kTypeId = 'people_import_history';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'peopleimporthistory-peopleimport-histories';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports/1/histories';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports/1/histories';

  /// possible includes with parameter ?include=a,b
  /// - `household`: include associated household 
  /// - `person`: include associated person 
  static get canInclude() { return ['household','person'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static get canQuery() { return ['name'] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeoplePeopleImportHistory.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeoplePeopleImportHistory.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeoplePeopleImportHistory.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kConflictingChanges() { return 'conflicting_changes' }
  static get kKind() { return 'kind' }


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

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get conflictingChanges() { return attributes[this.constructor.kConflictingChanges] ?? ''; }
  get kind() { return attributes[this.constructor.kKind] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeoplePeopleImportHistory._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeoplePeopleImportHistory({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePeopleImportHistory] objects (expecting many)
  /// using a path like this: `/people/v2/people_imports/${peopleImportId}/histories`
  /// 
  /// Available Query Filters:
  /// - `creates`
  /// - `household_creates`
  /// - `household_updates`
  /// - `identical`
  /// - `updates`
  static getHistoriesFromPeopleImport(peopleImportId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePeopleImportHistory.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people_imports/${peopleImportId}/histories`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/household`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getHousehold({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    let url = `${apiEndpoint}/household`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/person`
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
