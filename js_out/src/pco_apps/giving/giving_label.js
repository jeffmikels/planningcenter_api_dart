/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.269068
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Giving Label Object
/// 
/// - Application:        giving
/// - Id:                 label
/// - Type:               Label
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/labels
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Label",
///   "id": "1",
///   "attributes": {
///     "slug": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `slug`: (URLParameter), query on a specific slug, example: ?where[slug]=string
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `label-donation-labels`: https://api.planningcenteronline.com/giving/v2/donations/1/labels
/// - `label-organization-labels`: https://api.planningcenteronline.com/giving/v2/labels
/// 
/// All Actions:
/// NONE
///
export class PcoGivingLabel extends PcoResource {
  static kPcoApplication = 'giving';
  static kTypeString = 'Label';
  static kTypeId = 'label';
  static kApiVersion = '2019-10-18';
  static kShortestEdgeId = 'label-organization-labels';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/labels';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/labels';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `slug`: (URLParameter), query on a specific slug, example: ?where[slug]=string
  static get canQuery() { return ['slug'] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGivingLabel.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGivingLabel.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGivingLabel.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kSlug() { return 'slug' }


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

  get slug() { return attributes[this.constructor.kSlug] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoGivingLabel._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGivingLabel({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingLabel] objects (expecting many)
  /// using a path like this: `/giving/v2/labels`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingLabel.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/labels`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingLabel] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/${donationId}/labels`
  static getFromDonation(donationId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingLabel.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/donations/${donationId}/labels`;
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
