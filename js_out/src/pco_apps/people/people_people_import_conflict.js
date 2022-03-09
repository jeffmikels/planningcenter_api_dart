/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.876063
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People PeopleImportConflict Object
/// 
/// - Application:        people
/// - Id:                 people_import_conflict
/// - Type:               PeopleImportConflict
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts
/// 
/// Description:
/// A PeopleImportConflict is a record of change that will occur if the parent PeopleImport is completed.
/// 
/// Example:
/// ```json
/// {
///   "type": "PeopleImportConflict",
///   "id": "1",
///   "attributes": {
///     "kind": "string",
///     "name": "string",
///     "message": "string",
///     "data": "string",
///     "conflicting_changes": "string",
///     "ignore": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `kind`: (URLParameter), query on a specific kind, example: ?where[kind]=string
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `peopleimportconflict-peopleimport-conflicts`: https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts
/// 
/// All Actions:
/// NONE
///
export class PcoPeoplePeopleImportConflict extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'PeopleImportConflict';
  static kTypeId = 'people_import_conflict';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'peopleimportconflict-peopleimport-conflicts';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `kind`: (URLParameter), query on a specific kind, example: ?where[kind]=string
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static get canQuery() { return ['kind','name'] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeoplePeopleImportConflict.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeoplePeopleImportConflict.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeoplePeopleImportConflict.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kKind() { return 'kind' }
  static get kName() { return 'name' }
  static get kMessage() { return 'message' }
  static get kData() { return 'data' }
  static get kConflictingChanges() { return 'conflicting_changes' }
  static get kIgnore() { return 'ignore' }
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

  get kind() { return attributes[this.constructor.kKind] ?? ''; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get message() { return attributes[this.constructor.kMessage] ?? ''; }
  get data() { return attributes[this.constructor.kData] ?? ''; }
  get conflictingChanges() { return attributes[this.constructor.kConflictingChanges] ?? ''; }
  get isIgnore() { return attributes[this.constructor.kIgnore] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeoplePeopleImportConflict._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeoplePeopleImportConflict({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePeopleImportConflict] objects (expecting many)
  /// using a path like this: `/people/v2/people_imports/${peopleImportId}/conflicts`
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
  static getConflictsFromPeopleImport(peopleImportId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePeopleImportConflict.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people_imports/${peopleImportId}/conflicts`;
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
