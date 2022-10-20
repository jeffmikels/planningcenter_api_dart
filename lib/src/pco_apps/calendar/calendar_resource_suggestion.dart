/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:43:01.504237
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Ordering is not allowed on this object.
enum PcoCalendarResourceSuggestionOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCalendarResourceSuggestionFilter { none }

/// Creates a [PcoCalendarResourceSuggestionQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
/// 
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeResource`: include associated resource 
/// - `includeAll`: include all related objects
/// 
/// Alternatively, you may pass a list of strings to the `include` argument.
/// 
/// e.g. `PcoCalendarResourceSuggestionQuery(includes: ['a', 'b'])`
/// 
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarResourceSuggestionQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarResourceSuggestionOrder, String> _orderMap = {
    
  };
  static String orderString(PcoCalendarResourceSuggestionOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarResourceSuggestionFilter, String> _filterMap = {
    
  };
  static String filterString(PcoCalendarResourceSuggestionFilter filter) => _filterMap[filter]!;

  PcoCalendarResourceSuggestionQuery({
    /// include associated resource
    /// when true, adds `?include=resource` to url
    bool includeResource = false,
    



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
    if (includeResource) include.add('resource');}
}

/// This class represents a PCO Calendar ResourceSuggestion Object
/// 
/// - Application:        calendar
/// - Id:                 resource_suggestion
/// - Type:               ResourceSuggestion
/// - ApiVersion:         2021-07-20
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCalendarResourceSuggestion.fromJson()` constructor.
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
/// A resource and quantity suggested by a room setup.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `quantity` (ro) -> PCO: `quantity`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `resource-resourcesuggestion-resource`: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions/1/resource
/// 
/// Inbound Edges:
/// - `resourcesuggestion-roomsetup-resource_suggestions`: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ResourceSuggestion",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "quantity": 1,
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "resource": {
///       "data": {
///         "type": "Resource",
///         "id": "1"
///       }
///     },
///     "room_setup": {
///       "data": {
///         "type": "RoomSetup",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCalendarResourceSuggestion extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ResourceSuggestion';
  static const String kTypeId = 'resource_suggestion';
  static const String kApiVersion = '2021-07-20';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `resource`: include associated resource 
  static List<String> get canInclude => ['resource'];

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
  static const kQuantity = 'quantity';
  static const kUpdatedAt = 'updated_at';


  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  int get quantity => _attributes[kQuantity] ?? 0;
  
  // typed getters for each relationship
  
  PcoCalendarResource? get includedResource => _firstOrNull<PcoCalendarResource>(relationships['resource']);

  // Class Constructors
  PcoCalendarResourceSuggestion.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCalendarResourceSuggestion.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarResourceSuggestion] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCalendarResourceSuggestion({String? id, DateTime? createdAt, int? quantity, DateTime? updatedAt, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoCalendarResourceSuggestion.empty();
    obj._id = id;
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();
    if (quantity != null) obj._attributes['quantity'] = quantity;
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt.toIso8601String();

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



  /// Will get a collection of [PcoCalendarResourceSuggestion] objects (expecting many)
  /// using a path like this: `/calendar/v2/room_setups/$roomSetupId/resource_suggestions`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResourceSuggestion>> getFromRoomSetup(String roomSetupId, {String? id, PcoCalendarResourceSuggestionQuery? query, bool includeResource = false,}) async {
    query ??= PcoCalendarResourceSuggestionQuery();
    
    if (includeResource) query.include.add('resource');
    var url = '/calendar/v2/room_setups/$roomSetupId/resource_suggestions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceSuggestion>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarResource] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions/1/resource`
  Future<PcoCollection<PcoCalendarResource>> getResource({PcoCalendarResourceQuery? query}) async {
    query ??= PcoCalendarResourceQuery();
    var url = '$apiEndpoint/resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
