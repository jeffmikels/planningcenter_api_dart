/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.873275
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People PeopleImport Object
/// 
/// - Application:        people
/// - Id:                 people_import
/// - Type:               PeopleImport
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people_imports
/// 
/// Description:
/// A PeopleImport is a record of an ongoing or previous import from a CSV file.
/// 
/// Example:
/// ```json
/// {
///   "type": "PeopleImport",
///   "id": "1",
///   "attributes": {
///     "attribs": "string",
///     "status": "value",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "processed_at": "2000-01-01T12:00:00Z",
///     "undone_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `status`: (URLParameter), query on a specific status, example: ?where[status]=value
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `peopleimportconflict-peopleimport-conflicts`: https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts
/// - `peopleimporthistory-peopleimport-histories`: https://api.planningcenteronline.com/people/v2/people_imports/1/histories
/// 
/// All Inbound Edges:
/// - `peopleimport-organization-people_imports`: https://api.planningcenteronline.com/people/v2/people_imports
/// 
/// All Actions:
/// NONE
///
export class PcoPeoplePeopleImport extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'PeopleImport';
  static kTypeId = 'people_import';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'peopleimport-organization-people_imports';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `status`: (URLParameter), query on a specific status, example: ?where[status]=value
  static get canQuery() { return ['status'] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeoplePeopleImport.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeoplePeopleImport.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeoplePeopleImport.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kAttribs() { return 'attribs' }
  static get kStatus() { return 'status' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kProcessedAt() { return 'processed_at' }
  static get kUndoneAt() { return 'undone_at' }


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

  get attribs() { return attributes[this.constructor.kAttribs] ?? ''; }
  get status() { return attributes[this.constructor.kStatus] ?? ''; }
  get processedAt() { return Date.parse(attributes[this.constructor.kProcessedAt] ?? 0); }
  get undoneAt() { return Date.parse(attributes[this.constructor.kUndoneAt] ?? 0); }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeoplePeopleImport._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeoplePeopleImport({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePeopleImport] objects (expecting many)
  /// using a path like this: `/people/v2/people_imports`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePeopleImport.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people_imports`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePeopleImportConflict] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts`
  /// 
  /// Available Query Filters:
  /// - `creates`
  /// - `creates_and_updates`
  /// - `errors`
  /// - `household_creates`
  /// - `household_updates`
  /// - `identical`
  /// - `ignored`
  /// - `not_ignored`
  /// - `updates`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getConflicts({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePeopleImportConflict.canInclude;
    let url = `${apiEndpoint}/conflicts`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePeopleImportHistory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people_imports/1/histories`
  /// 
  /// Available Query Filters:
  /// - `creates`
  /// - `household_creates`
  /// - `household_updates`
  /// - `identical`
  /// - `updates`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getHistories({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePeopleImportHistory.canInclude;
    let url = `${apiEndpoint}/histories`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
