/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.336146
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services CustomSlide Object
/// 
/// - Application:        services
/// - Id:                 custom_slide
/// - Type:               CustomSlide
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/custom_slides
/// 
/// Description:
/// A CustomSlide is used for adding text intended for display on a screen.
/// 
/// Example:
/// ```json
/// {
///   "type": "CustomSlide",
///   "id": "1",
///   "attributes": {
///     "body": "string",
///     "label": "string",
///     "order": 1,
///     "enabled": true
///   },
///   "relationships": {
///     "item": {
///       "data": {
///         "type": "Item",
///         "id": "1"
///       }
///     },
///     "attachment": {
///       "data": {
///         "type": "Attachment",
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
/// - `customslide-item-custom_slides`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/custom_slides
/// 
/// All Actions:
/// NONE
///
export class PcoServicesCustomSlide extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'CustomSlide';
  static kTypeId = 'custom_slide';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/custom_slides';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/custom_slides';

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
  get shortestEdgePath() { return PcoServicesCustomSlide.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesCustomSlide.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesCustomSlide.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kBody() { return 'body' }
  static get kLabel() { return 'label' }
  static get kOrder() { return 'order' }
  static get kEnabled() { return 'enabled' }


  // getters and setters
  // @override
  get createAllowed() { return ['body','enabled','label','order']; }

  // @override
  get updateAllowed() { return ['body','enabled','label','order']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get body() { return attributes[this.constructor.kBody] ?? ''; }
  get label() { return attributes[this.constructor.kLabel] ?? ''; }
  get order() { return attributes[this.constructor.kOrder] ?? 0; }
  get isEnabled() { return attributes[this.constructor.kEnabled] == true; }
  

  // setters for object attributes

  set body(s) {attributes[this.constructor.kBody] = s;}
  set label(s) {attributes[this.constructor.kLabel] = s;}
  set order(n) { attributes[this.constructor.kOrder] = n; }
  set isEnabled(b) { attributes[this.constructor.kEnabled] = b; }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesCustomSlide._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesCustomSlide({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesCustomSlide] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/songs/${songId}/last_scheduled_item/${scheduledItemId}/custom_slides`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(songId,scheduledItemId) {
    super(PcoServicesCustomSlide.kPcoApplication, PcoServicesCustomSlide.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/songs/${songId}/last_scheduled_item/${scheduledItemId}/custom_slides`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesCustomSlide] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/custom_slides`
  static getFromServiceTypeAndPlanAndItem(serviceTypeId, planId, itemId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesCustomSlide.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/custom_slides`;
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
