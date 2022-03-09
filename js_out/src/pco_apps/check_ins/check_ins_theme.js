/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.606692
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns Theme Object
/// 
/// - Application:        check-ins
/// - Id:                 theme
/// - Type:               Theme
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/themes
/// 
/// Description:
/// A custom style which may be applied to stations.
/// 
/// Example:
/// ```json
/// {
///   "type": "Theme",
///   "id": "1",
///   "attributes": {
///     "image_thumbnail": "string",
///     "name": "string",
///     "color": "string",
///     "text_color": "string",
///     "image": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "background_color": "string",
///     "mode": "string"
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
/// - `theme-organization-themes`: https://api.planningcenteronline.com/check-ins/v2/themes
/// - `theme-station-theme`: https://api.planningcenteronline.com/check-ins/v2/stations/1/theme
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsTheme extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'Theme';
  static kTypeId = 'theme';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = 'theme-organization-themes';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/themes';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/themes';

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
  get shortestEdgePath() { return PcoCheckInsTheme.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsTheme.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsTheme.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kImageThumbnail() { return 'image_thumbnail' }
  static get kName() { return 'name' }
  static get kColor() { return 'color' }
  static get kTextColor() { return 'text_color' }
  static get kImage() { return 'image' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kBackgroundColor() { return 'background_color' }
  static get kMode() { return 'mode' }


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

  get imageThumbnail() { return attributes[this.constructor.kImageThumbnail] ?? ''; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get color() { return attributes[this.constructor.kColor] ?? ''; }
  get textColor() { return attributes[this.constructor.kTextColor] ?? ''; }
  get image() { return attributes[this.constructor.kImage] ?? ''; }
  get backgroundColor() { return attributes[this.constructor.kBackgroundColor] ?? ''; }
  get mode() { return attributes[this.constructor.kMode] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsTheme._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsTheme({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsTheme] objects (expecting many)
  /// using a path like this: `/check-ins/v2/themes`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsTheme.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/themes`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsTheme] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations/${stationId}/theme`
  static getFromStation(stationId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsTheme.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/stations/${stationId}/theme`;
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
