/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T08:59:04.979417
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services ItemNote Object
/// 
/// - Application:        services
/// - Id:                 item_note
/// - Type:               ItemNote
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_notes
/// 
/// ## Description
/// A plan item note that belongs to a category.
/// 
/// Note: You can only assign the category on create. If you want to change category; delete the current note, and create a new one passing in the `item_note_category_id` then.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `content` (rw) -> PCO: `content`
/// - `categoryName` (ro) -> PCO: `category_name`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `item_note_category`: include associated item_note_category 
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// NONE
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// NONE
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `itemnotecategory-itemnote-item_note_category`: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes/1/item_note_category
/// 
/// Inbound Edges:
/// - `itemnote-item-item_notes`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_notes
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoServicesItemNote extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ItemNote';
  static const String kTypeId = 'item_note';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_notes';

  /// possible includes with parameter ?include=a,b
  /// - `item_note_category`: include associated item_note_category 
  static List<String> get canInclude => ['item_note_category'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get createPathTemplate => kCreatePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kContent = 'content';
  static const kCategoryName = 'category_name';


  // getters and setters
  @override
  List<String> get createAllowed => ['content'];

  @override
  List<String> get updateAllowed => ['content'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get content => attributes[kContent] ?? '';
  String get categoryName => attributes[kCategoryName] ?? '';  
  
  // setters for object attributes
  
  /// pass `null` to remove key from attributes
  set content(String? x) => (x == null) ? attributes.remove(kContent) : attributes[kContent] = x;  

  // Class Constructors
  PcoServicesItemNote.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoServicesItemNote.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesItemNote] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_notes`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesItemNote(String serviceTypeId, String planId, String itemId, { String? content }) {
    var obj = PcoServicesItemNote.empty();
    obj._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_notes';
    if (content != null) obj.content = content;
    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesItemNote] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_notes`
  static Future<PcoCollection<PcoServicesItemNote>> getFromServiceTypeAndPlanAndItem(String serviceTypeId,String planId,String itemId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemNote.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_notes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesItemNote>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesItemNoteCategory] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes/1/item_note_category`
  Future<PcoCollection<PcoServicesItemNoteCategory>> getItemNoteCategory({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemNoteCategory.canInclude;
    var url = '$apiEndpoint/item_note_category';
    return PcoCollection.fromApiCall<PcoServicesItemNoteCategory>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
