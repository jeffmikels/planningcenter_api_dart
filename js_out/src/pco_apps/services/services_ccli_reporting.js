/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.332298
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services CcliReporting Object
/// 
/// - Application:        services
/// - Id:                 ccli_reporting
/// - Type:               CcliReporting
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/ccli_reporting
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "CcliReporting",
///   "id": "1",
///   "attributes": {
///     "digital": 1,
///     "print": 1,
///     "recording": 1,
///     "translation": 1
///   },
///   "relationships": {
///     "item": {
///       "data": {
///         "type": "Item",
///         "id": "1"
///       }
///     }
///   }
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
/// - `cclireporting-item-ccli_reporting`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/ccli_reporting
/// 
/// All Actions:
/// NONE
///
export class PcoServicesCcliReporting extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'CcliReporting';
  static kTypeId = 'ccli_reporting';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/ccli_reporting';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/ccli_reporting';

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
  get shortestEdgePath() { return PcoServicesCcliReporting.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesCcliReporting.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesCcliReporting.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kDigital() { return 'digital' }
  static get kPrint() { return 'print' }
  static get kRecording() { return 'recording' }
  static get kTranslation() { return 'translation' }


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

  get digital() { return attributes[this.constructor.kDigital] ?? 0; }
  get print() { return attributes[this.constructor.kPrint] ?? 0; }
  get recording() { return attributes[this.constructor.kRecording] ?? 0; }
  get translation() { return attributes[this.constructor.kTranslation] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesCcliReporting._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesCcliReporting({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesCcliReporting] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/ccli_reporting`
  static getFromServiceTypeAndPlanAndItem(serviceTypeId, planId, itemId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesCcliReporting.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/ccli_reporting`;
    
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
