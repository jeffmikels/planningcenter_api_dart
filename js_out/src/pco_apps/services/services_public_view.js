/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.469399
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services PublicView Object
/// 
/// - Application:        services
/// - Id:                 public_view
/// - Type:               PublicView
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/public_view
/// 
/// Description:
/// Manage options for a public plan
/// 
/// Example:
/// ```json
/// {
///   "type": "PublicView",
///   "id": "1",
///   "attributes": {
///     "series_and_plan_titles": true,
///     "item_lengths": true,
///     "service_times": true,
///     "song_items": true,
///     "media_items": true,
///     "regular_items": true,
///     "headers": true,
///     "itunes": true,
///     "amazon": true,
///     "spotify": true,
///     "youtube": true,
///     "vimeo": true
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
/// - `publicview-servicetype-public_view`: https://api.planningcenteronline.com/services/v2/service_types/1/public_view
/// 
/// All Actions:
/// NONE
///
export class PcoServicesPublicView extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'PublicView';
  static kTypeId = 'public_view';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'publicview-servicetype-public_view';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/public_view';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/public_view';

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
  get shortestEdgePath() { return PcoServicesPublicView.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesPublicView.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesPublicView.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kSeriesAndPlanTitles() { return 'series_and_plan_titles' }
  static get kItemLengths() { return 'item_lengths' }
  static get kServiceTimes() { return 'service_times' }
  static get kSongItems() { return 'song_items' }
  static get kMediaItems() { return 'media_items' }
  static get kRegularItems() { return 'regular_items' }
  static get kHeaders() { return 'headers' }
  static get kItunes() { return 'itunes' }
  static get kAmazon() { return 'amazon' }
  static get kSpotify() { return 'spotify' }
  static get kYoutube() { return 'youtube' }
  static get kVimeo() { return 'vimeo' }


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

  get isSeriesAndPlanTitles() { return attributes[this.constructor.kSeriesAndPlanTitles] == true; }
  get isItemLengths() { return attributes[this.constructor.kItemLengths] == true; }
  get isServiceTimes() { return attributes[this.constructor.kServiceTimes] == true; }
  get isSongItems() { return attributes[this.constructor.kSongItems] == true; }
  get isMediaItems() { return attributes[this.constructor.kMediaItems] == true; }
  get isRegularItems() { return attributes[this.constructor.kRegularItems] == true; }
  get isHeaders() { return attributes[this.constructor.kHeaders] == true; }
  get isItunes() { return attributes[this.constructor.kItunes] == true; }
  get isAmazon() { return attributes[this.constructor.kAmazon] == true; }
  get isSpotify() { return attributes[this.constructor.kSpotify] == true; }
  get isYoutube() { return attributes[this.constructor.kYoutube] == true; }
  get isVimeo() { return attributes[this.constructor.kVimeo] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesPublicView._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesPublicView({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPublicView] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/public_view`
  static getFromServiceType(serviceTypeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPublicView.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/public_view`;
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
