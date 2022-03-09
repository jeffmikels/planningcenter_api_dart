/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.176428
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar ReportTemplate Object
/// 
/// - Application:        calendar
/// - Id:                 report_template
/// - Type:               ReportTemplate
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/report_templates
/// 
/// Description:
/// A template for generating a report.
/// 
/// Example:
/// ```json
/// {
///   "type": "ReportTemplate",
///   "id": "1",
///   "attributes": {
///     "body": "string",
///     "created_at": "string",
///     "description": "string",
///     "title": "string",
///     "updated_at": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `reporttemplate-organization-report_templates`: https://api.planningcenteronline.com/calendar/v2/report_templates
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarReportTemplate extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'ReportTemplate';
  static kTypeId = 'report_template';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'reporttemplate-organization-report_templates';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/report_templates';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/report_templates';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarReportTemplate.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarReportTemplate.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarReportTemplate.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kBody() { return 'body' }
  static get kCreatedAt() { return 'created_at' }
  static get kDescription() { return 'description' }
  static get kTitle() { return 'title' }
  static get kUpdatedAt() { return 'updated_at' }


  // getters and setters
  // @override
  get createAllowed() { return ['body','description','title']; }

  // @override
  get updateAllowed() { return ['body','description','title']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get body() { return attributes[this.constructor.kBody] ?? ''; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get title() { return attributes[this.constructor.kTitle] ?? ''; }
  

  // setters for object attributes

  
  /// The contents of the report template
  set body(s) {attributes[this.constructor.kBody] = s;}
  
  /// A summarization of the report
  set description(s) {attributes[this.constructor.kDescription] = s;}
  
  /// The title of the report
  set title(s) {attributes[this.constructor.kTitle] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarReportTemplate._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarReportTemplate({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoCalendarReportTemplate] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/calendar/v2/report_templates`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoCalendarReportTemplate.kPcoApplication, PcoCalendarReportTemplate.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/calendar/v2/report_templates`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarReportTemplate] objects (expecting many)
  /// using a path like this: `/calendar/v2/report_templates`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarReportTemplate.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/report_templates`;
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
