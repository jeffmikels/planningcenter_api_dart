/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.497489
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services SongbookStatus Object
/// 
/// - Application:        services
/// - Id:                 songbook_status
/// - Type:               SongbookStatus
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2
/// 
/// Description:
/// Used to get the status of an in progress songbook action. When FINISHED, will contain the url of the songbook.
/// 
/// Example:
/// ```json
/// {
///   "type": "SongbookStatus",
///   "id": "1",
///   "attributes": {
///     "status": "string",
///     "status_code": "string",
///     "status_token": "string",
///     "url": "string"
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
/// NONE
/// 
/// All Actions:
/// NONE
///
export class PcoServicesSongbookStatu extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'SongbookStatus';
  static kTypeId = 'songbook_status';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2';

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
  get shortestEdgePath() { return PcoServicesSongbookStatu.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesSongbookStatu.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesSongbookStatu.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kStatus() { return 'status' }
  static get kStatusCode() { return 'status_code' }
  static get kStatusToken() { return 'status_token' }
  static get kUrl() { return 'url' }


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

  get status() { return attributes[this.constructor.kStatus] ?? ''; }
  get statusCode() { return attributes[this.constructor.kStatusCode] ?? ''; }
  get statusToken() { return attributes[this.constructor.kStatusToken] ?? ''; }
  get url() { return attributes[this.constructor.kUrl] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesSongbookStatu._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesSongbookStatu({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
