/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.379735
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services ItemNoteCategory Object
/// 
/// - Application:        services
/// - Id:                 item_note_category
/// - Type:               ItemNoteCategory
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories
/// 
/// Description:
/// A category of plan item notes for an entire Service Type.
/// 
/// Example:
/// ```json
/// {
///   "type": "ItemNoteCategory",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "deleted_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "sequence": 1,
///     "updated_at": "2000-01-01T12:00:00Z",
///     "frequently_used": true
///   },
///   "relationships": {
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
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
/// - `itemnotecategory-itemnote-item_note_category`: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes/1/item_note_category
/// - `itemnotecategory-servicetype-item_note_categories`: https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories
/// 
/// All Actions:
/// NONE
///
export class PcoServicesItemNoteCategory extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'ItemNoteCategory';
  static kTypeId = 'item_note_category';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'itemnotecategory-servicetype-item_note_categories';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories';

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
  get shortestEdgePath() { return PcoServicesItemNoteCategory.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesItemNoteCategory.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesItemNoteCategory.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kDeletedAt() { return 'deleted_at' }
  static get kName() { return 'name' }
  static get kSequence() { return 'sequence' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kFrequentlyUsed() { return 'frequently_used' }


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

  get deletedAt() { return Date.parse(attributes[this.constructor.kDeletedAt] ?? 0); }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get sequence() { return attributes[this.constructor.kSequence] ?? 0; }
  get isFrequentlyUsed() { return attributes[this.constructor.kFrequentlyUsed] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesItemNoteCategory._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesItemNoteCategory({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItemNoteCategory] objects (expecting one)
  /// using a path like this: `/services/v2/songs/${songId}/last_scheduled_item/${scheduledItemId}/item_notes/${itemNoteId}/item_note_category`
  static getFromSongAndScheduledItemAndItemNote(songId, scheduledItemId, itemNoteId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItemNoteCategory.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/songs/${songId}/last_scheduled_item/${scheduledItemId}/item_notes/${itemNoteId}/item_note_category`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItemNoteCategory] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/item_note_categories`
  static getFromServiceType(serviceTypeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItemNoteCategory.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/item_note_categories`;
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
