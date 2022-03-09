/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.013419
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People Report Object
/// 
/// - Application:        people
/// - Id:                 report
/// - Type:               Report
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/reports
/// 
/// Description:
/// A report is editable liquid syntax that provides  a powerful tool for presenting your Lists however you want.
/// 
/// Example:
/// ```json
/// {
///   "type": "Report",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "body": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - created_by: include associated created_by 
/// - updated_by: include associated updated_by 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `body`: (URLParameter), query on a specific body, example: ?where[body]=string
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `body`: (URLParameter), prefix with a hyphen (-body) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `person-report-created_by`: https://api.planningcenteronline.com/people/v2/reports/1/created_by
/// - `person-report-updated_by`: https://api.planningcenteronline.com/people/v2/reports/1/updated_by
/// 
/// All Inbound Edges:
/// - `report-organization-reports`: https://api.planningcenteronline.com/people/v2/reports
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleReport extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'Report';
  static kTypeId = 'report';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'report-organization-reports';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/reports';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/reports';

  /// possible includes with parameter ?include=a,b
  /// - `created_by`: include associated created_by 
  /// - `updated_by`: include associated updated_by 
  static get canInclude() { return ['created_by','updated_by'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `body`: (URLParameter), query on a specific body, example: ?where[body]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['body','created_at','name','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `body`: (URLParameter), prefix with a hyphen (-body) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['body','created_at','name','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleReport.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleReport.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleReport.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kBody() { return 'body' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }


  // getters and setters
  // @override
  get createAllowed() { return ['name','body']; }

  // @override
  get updateAllowed() { return ['name','body']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get body() { return attributes[this.constructor.kBody] ?? ''; }
  

  // setters for object attributes

  set name(s) {attributes[this.constructor.kName] = s;}
  set body(s) {attributes[this.constructor.kBody] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleReport._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleReport({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleReport] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/reports`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeopleReport.kPcoApplication, PcoPeopleReport.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/reports`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleReport] objects (expecting many)
  /// using a path like this: `/people/v2/reports`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleReport.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/reports`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/reports/1/created_by`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCreatedBy({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/created_by`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/reports/1/updated_by`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getUpdatedBy({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/updated_by`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
