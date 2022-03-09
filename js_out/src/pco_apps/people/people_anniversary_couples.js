/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.810685
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People AnniversaryCouples Object
/// 
/// - Application:        people
/// - Id:                 anniversary_couples
/// - Type:               AnniversaryCouples
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/anniversary_couples
/// 
/// Description:
/// Returns upcoming anniversary couples for the organization.
/// 
/// Example:
/// ```json
/// {
///   "type": "AnniversaryCouples",
///   "id": "1",
///   "attributes": {},
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
/// - `anniversarycouples-organization-anniversary_couples`: https://api.planningcenteronline.com/people/v2/anniversary_couples
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleAnniversaryCouple extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'AnniversaryCouples';
  static kTypeId = 'anniversary_couples';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'anniversarycouples-organization-anniversary_couples';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/anniversary_couples';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/anniversary_couples';

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
  get shortestEdgePath() { return PcoPeopleAnniversaryCouple.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleAnniversaryCouple.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleAnniversaryCouple.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }


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

  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleAnniversaryCouple._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleAnniversaryCouple({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleAnniversaryCouple] objects (expecting many)
  /// using a path like this: `/people/v2/anniversary_couples`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleAnniversaryCouple.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/anniversary_couples`;
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
