/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:29:04.307064
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesItemNoteOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesItemNoteFilter { none }

/// Creates a [PcoServicesItemNoteQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
/// 
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeItemNoteCategory`: include associated item_note_category 
/// - `includeAll`: include all related objects
/// 
/// Alternatively, you may pass a list of strings to the `include` argument.
/// 
/// e.g. `PcoServicesItemNoteQuery(includes: ['a', 'b'])`
/// 
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesItemNoteQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesItemNoteOrder, String> _orderMap = {
    
  };
  static String orderString(PcoServicesItemNoteOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesItemNoteFilter, String> _filterMap = {
    
  };
  static String filterString(PcoServicesItemNoteFilter filter) => _filterMap[filter]!;

  PcoServicesItemNoteQuery({
    /// include associated item_note_category
    /// when true, adds `?include=item_note_category` to url
    bool includeItemNoteCategory = false,
    



    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super() {
    if (includeItemNoteCategory) include.add('item_note_category');}
}

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
/// ## Instantiation
/// - Create a new instance using the `PcoServicesItemNote()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesItemNote.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
/// 
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
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
  String get content => _attributes[kContent] ?? '';
  String get categoryName => _attributes[kCategoryName] ?? '';
  
  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set content(String? x) => (x == null) ? _attributes.remove(kContent) : _attributes[kContent] = x;
  
  // typed getters for each relationship
  
  PcoServicesItemNoteCategory? get includedItemNoteCategory => _firstOrNull<PcoServicesItemNoteCategory>(relationships['item_note_category']);

  // Class Constructors
  PcoServicesItemNote.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  PcoServicesItemNote.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesItemNote] object using this endpoint: `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_notes`
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `content`
  /// - FIELDS USED WHEN UPDATING: `content`
  factory PcoServicesItemNote({required String serviceTypeId, required String planId, required String itemId, String? id, DateTime? createdAt, DateTime? updatedAt, String? content, String? categoryName, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoServicesItemNote.empty();
    obj._id = id;
    obj._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_notes';
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (content != null) obj._attributes['content'] = content;
    if (categoryName != null) obj._attributes['category_name'] = categoryName;

    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }

    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }

    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class



  /// Will get a collection of [PcoServicesItemNote] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_notes`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesItemNote>> getFromServiceTypeAndPlanAndItem(String serviceTypeId,String planId,String itemId, {String? id, PcoServicesItemNoteQuery? query, bool includeItemNoteCategory = false,}) async {
    query ??= PcoServicesItemNoteQuery();
    
    if (includeItemNoteCategory) query.include.add('item_note_category');
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_notes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesItemNote>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesItemNoteCategory] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes/1/item_note_category`
  Future<PcoCollection<PcoServicesItemNoteCategory>> getItemNoteCategory({PcoServicesItemNoteCategoryQuery? query}) async {
    query ??= PcoServicesItemNoteCategoryQuery();
    var url = '$apiEndpoint/item_note_category';
    return PcoCollection.fromApiCall<PcoServicesItemNoteCategory>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
