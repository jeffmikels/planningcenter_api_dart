/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.472184
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services ReportTemplate Object
/// 
/// - Application:        services
/// - Id:                 report_template
/// - Type:               ReportTemplate
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/report_templates
/// 
/// Description:
/// A template for generating reports
/// 
/// Example:
/// ```json
/// {
///   "type": "ReportTemplate",
///   "id": "1",
///   "attributes": {
///     "body": "string",
///     "title": "string",
///     "type": "string",
///     "default": true
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
/// - `reporttemplate-organization-report_templates`: https://api.planningcenteronline.com/services/v2/report_templates
/// 
/// All Actions:
/// NONE
///
export class PcoServicesReportTemplate extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'ReportTemplate';
  static kTypeId = 'report_template';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'reporttemplate-organization-report_templates';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/report_templates';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/report_templates';

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
  get shortestEdgePath() { return PcoServicesReportTemplate.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesReportTemplate.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesReportTemplate.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kBody() { return 'body' }
  static get kTitle() { return 'title' }
  static get kType() { return 'type' }
  static get kDefault() { return 'default' }


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

  get body() { return attributes[this.constructor.kBody] ?? ''; }
  get title() { return attributes[this.constructor.kTitle] ?? ''; }
  get type() { return attributes[this.constructor.kType] ?? ''; }
  get isDefault() { return attributes[this.constructor.kDefault] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesReportTemplate._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesReportTemplate({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesReportTemplate] objects (expecting many)
  /// using a path like this: `/services/v2/report_templates`
  /// 
  /// Available Query Filters:
  /// - `matrix`
  /// - `people`
  /// - `plans`
  /// - `without_defaults`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesReportTemplate.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/report_templates`;
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
