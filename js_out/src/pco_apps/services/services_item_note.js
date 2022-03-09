/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.373960
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services ItemNote Object
/// 
/// - Application:        services
/// - Id:                 item_note
/// - Type:               ItemNote
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes
/// 
/// Description:
/// A plan item note that belongs to a category.
/// 
/// Note: You can only assign the category on create. If you want to change category; delete the current note, and create a new one passing in the `item_note_category_id` then.
/// 
/// Example:
/// ```json
/// {
///   "type": "ItemNote",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "content": "string",
///     "category_name": "string"
///   },
///   "relationships": {
///     "item_note_category": {
///       "data": {
///         "type": "ItemNoteCategory",
///         "id": "1"
///       }
///     },
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
/// - item_note_category: include associated item_note_category 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `itemnotecategory-itemnote-item_note_category`: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes/1/item_note_category
/// 
/// All Inbound Edges:
/// - `itemnote-item-item_notes`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_notes
/// 
/// All Actions:
/// NONE
///
export class PcoServicesItemNote extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'ItemNote';
  static kTypeId = 'item_note';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes';

  /// possible includes with parameter ?include=a,b
  /// - `item_note_category`: include associated item_note_category 
  static get canInclude() { return ['item_note_category'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesItemNote.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesItemNote.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesItemNote.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kContent() { return 'content' }
  static get kCategoryName() { return 'category_name' }


  // getters and setters
  // @override
  get createAllowed() { return ['content']; }

  // @override
  get updateAllowed() { return ['content']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get content() { return attributes[this.constructor.kContent] ?? ''; }
  get categoryName() { return attributes[this.constructor.kCategoryName] ?? ''; }
  

  // setters for object attributes

  set content(s) {attributes[this.constructor.kContent] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesItemNote._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesItemNote({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesItemNote] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/songs/${songId}/last_scheduled_item/${scheduledItemId}/item_notes`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(songId,scheduledItemId) {
    super(PcoServicesItemNote.kPcoApplication, PcoServicesItemNote.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/songs/${songId}/last_scheduled_item/${scheduledItemId}/item_notes`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItemNote] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/item_notes`
  static getFromServiceTypeAndPlanAndItem(serviceTypeId, planId, itemId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItemNote.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/item_notes`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItemNoteCategory] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes/1/item_note_category`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getItemNoteCategory({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItemNoteCategory.canInclude;
    let url = `${apiEndpoint}/item_note_category`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
