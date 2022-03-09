/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.480716
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services Series Object
/// 
/// - Application:        services
/// - Id:                 series
/// - Type:               Series
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/series
/// 
/// Description:
/// A Series can be specified for each plan to tie plans with similar messages together, even across Service Types.
/// 
/// *Note*: A series is not created until artwork is added from the plan.  You can use `series_title` included in `Plan` attributes to get titles for series without artwork.
/// 
/// Example:
/// ```json
/// {
///   "type": "Series",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "artwork_file_name": "string",
///     "artwork_content_type": "string",
///     "artwork_file_size": 1,
///     "title": "string",
///     "artwork_for_dashboard": "string",
///     "artwork_for_mobile": "string",
///     "artwork_for_plan": "string",
///     "artwork_original": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
///
/// All Outbound Edges:
/// - `plan-series-plans`: https://api.planningcenteronline.com/services/v2/series/1/plans
/// 
/// All Inbound Edges:
/// - `series-organization-series`: https://api.planningcenteronline.com/services/v2/series
/// - `series-plan-series`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/series
/// 
/// All Actions:
/// NONE
///
export class PcoServicesSeries extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'Series';
  static kTypeId = 'series';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'series-organization-series';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/series';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/series';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
  static get canQuery() { return ['title'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static get canOrderBy() { return ['created_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesSeries.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesSeries.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesSeries.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kArtworkFileName() { return 'artwork_file_name' }
  static get kArtworkContentType() { return 'artwork_content_type' }
  static get kArtworkFileSize() { return 'artwork_file_size' }
  static get kTitle() { return 'title' }
  static get kArtworkForDashboard() { return 'artwork_for_dashboard' }
  static get kArtworkForMobile() { return 'artwork_for_mobile' }
  static get kArtworkForPlan() { return 'artwork_for_plan' }
  static get kArtworkOriginal() { return 'artwork_original' }


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

  get artworkFileName() { return attributes[this.constructor.kArtworkFileName] ?? ''; }
  get artworkContentType() { return attributes[this.constructor.kArtworkContentType] ?? ''; }
  get artworkFileSize() { return attributes[this.constructor.kArtworkFileSize] ?? 0; }
  get title() { return attributes[this.constructor.kTitle] ?? ''; }
  get artworkForDashboard() { return attributes[this.constructor.kArtworkForDashboard] ?? ''; }
  get artworkForMobile() { return attributes[this.constructor.kArtworkForMobile] ?? ''; }
  get artworkForPlan() { return attributes[this.constructor.kArtworkForPlan] ?? ''; }
  get artworkOriginal() { return attributes[this.constructor.kArtworkOriginal] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesSeries._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesSeries({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSeries] objects (expecting many)
  /// using a path like this: `/services/v2/series`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSeries.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/series`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSeries] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/series`
  static getFromServiceTypeAndPlan(serviceTypeId, planId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSeries.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/series`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlan] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series/1/plans`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPlans({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    let url = `${apiEndpoint}/plans`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
