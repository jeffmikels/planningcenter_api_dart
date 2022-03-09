/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.312551
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services ArrangementSections Object
/// 
/// - Application:        services
/// - Id:                 arrangement_sections
/// - Type:               ArrangementSections
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections
/// 
/// Description:
/// Sections of an Arrangement, derived from its chord chart
/// 
/// Example:
/// ```json
/// {
///   "type": "ArrangementSections",
///   "id": "1",
///   "attributes": {
///     "sections": []
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
/// - `arrangementsections-arrangement-sections`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections
/// 
/// All Actions:
/// NONE
///
export class PcoServicesArrangementSection extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'ArrangementSections';
  static kTypeId = 'arrangement_sections';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'arrangementsections-arrangement-sections';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections';

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
  get shortestEdgePath() { return PcoServicesArrangementSection.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesArrangementSection.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesArrangementSection.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kSections() { return 'sections' }


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

  get sections() { return attributes[this.constructor.kSections] ?? []; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesArrangementSection._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesArrangementSection({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesArrangementSection] objects (expecting many)
  /// using a path like this: `/services/v2/songs/${songId}/arrangements/${arrangementId}/sections`
  static getSectionsFromSongAndArrangement(songId, arrangementId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesArrangementSection.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/songs/${songId}/arrangements/${arrangementId}/sections`;
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
