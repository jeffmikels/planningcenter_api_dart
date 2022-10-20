/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:29:04.549853
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `name` -> `?order=name`
/// - `updatedAt` -> `?order=updated_at`
enum PcoCalendarResourceApprovalGroupOrder { createdAt, name, updatedAt }

/// Filtering is not allowed when requesting this object.
enum PcoCalendarResourceApprovalGroupFilter { none }

/// Creates a [PcoCalendarResourceApprovalGroupQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
/// 
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includePeople`: include associated people 
/// - `includeResources`: include associated resources 
/// - `includeAll`: include all related objects
/// 
/// Alternatively, you may pass a list of strings to the `include` argument.
/// 
/// e.g. `PcoCalendarResourceApprovalGroupQuery(includes: ['a', 'b'])`
/// 
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// 
/// [PcoCalendarResourceApprovalGroup] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
/// 
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoCalendarResourceApprovalGroupOrder.createdAt` : will order by `created_at`
/// - `PcoCalendarResourceApprovalGroupOrder.name` : will order by `name`
/// - `PcoCalendarResourceApprovalGroupOrder.updatedAt` : will order by `updated_at`
/// 
/// To reverse the order, set `reverse` to true.
/// 
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// 
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarResourceApprovalGroupQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarResourceApprovalGroupOrder, String> _orderMap = {
    PcoCalendarResourceApprovalGroupOrder.createdAt: 'created_at',
    PcoCalendarResourceApprovalGroupOrder.name: 'name',
    PcoCalendarResourceApprovalGroupOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoCalendarResourceApprovalGroupOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarResourceApprovalGroupFilter, String> _filterMap = {
    
  };
  static String filterString(PcoCalendarResourceApprovalGroupFilter filter) => _filterMap[filter]!;

  PcoCalendarResourceApprovalGroupQuery({
    /// include associated people
    /// when true, adds `?include=people` to url
    bool includePeople = false,
    
    /// include associated resources
    /// when true, adds `?include=resources` to url
    bool includeResources = false,
    
    /// when true, adds `?include=people,resources` to url parameters
    bool includeAll = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,
    
    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,
    
    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    

    PcoCalendarResourceApprovalGroupOrder? orderBy,


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
    if (includeAll || includePeople) include.add('people');
    if (includeAll || includeResources) include.add('resources');
    
    if (whereCreatedAt != null) where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereName != null) where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (whereUpdatedAt != null) where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));
        
    
    if (orderBy != null) order = orderString(orderBy, reverse: reverse);}
}

/// This class represents a PCO Calendar ResourceApprovalGroup Object
/// 
/// - Application:        calendar
/// - Id:                 resource_approval_group
/// - Type:               ResourceApprovalGroup
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/resource_approval_groups
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - Create a new instance using the `PcoCalendarResourceApprovalGroup()` constructor
/// - Instantiate from existing `JSON` data using the `PcoCalendarResourceApprovalGroup.fromJson()` constructor.
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
/// A group of people that can be attached to a room or resource
/// in order to require their approval for booking.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `name` (rw) -> PCO: `name`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `resourceCount` (ro) -> PCO: `resource_count`
/// - `roomCount` (ro) -> PCO: `room_count`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `eventresourcerequest-resourceapprovalgroup-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/event_resource_requests
/// - `person-resourceapprovalgroup-people`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/people
/// - `resource-resourceapprovalgroup-resources`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/resources
/// 
/// Inbound Edges:
/// - `resourceapprovalgroup-organization-resource_approval_groups`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups
/// - `resourceapprovalgroup-resource-resource_approval_groups`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_approval_groups
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ResourceApprovalGroup",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCalendarResourceApprovalGroup extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ResourceApprovalGroup';
  static const String kTypeId = 'resource_approval_group';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_approval_groups';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `people`: include associated people 
  /// - `resources`: include associated resources 
  static List<String> get canInclude => ['people','resources'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','name','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','name','updated_at'];

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
  static const kName = 'name';
  static const kUpdatedAt = 'updated_at';
  static const kResourceCount = 'resource_count';
  static const kRoomCount = 'room_count';


  // getters and setters
  @override
  List<String> get createAllowed => ['name'];

  @override
  List<String> get updateAllowed => ['name'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  int get resourceCount => _attributes[kResourceCount] ?? 0;
  int get roomCount => _attributes[kRoomCount] ?? 0;
  
  // setters for object attributes
  
  /// Name of the approval group
  ///
  /// pass `null` to remove key from attributes
  set name(String? x) => (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;
  
  // typed getters for each relationship
  
  List<PcoCalendarPerson> get includedPeople => (relationships['people'] as List?)?.cast<PcoCalendarPerson>() ?? [];
  List<PcoCalendarResource> get includedResources => (relationships['resources'] as List?)?.cast<PcoCalendarResource>() ?? [];

  // Class Constructors
  PcoCalendarResourceApprovalGroup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  PcoCalendarResourceApprovalGroup.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarResourceApprovalGroup] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `name`
  /// - FIELDS USED WHEN UPDATING: `name`
  factory PcoCalendarResourceApprovalGroup({String? id, DateTime? createdAt, String? name, DateTime? updatedAt, int? resourceCount, int? roomCount, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoCalendarResourceApprovalGroup.empty();
    obj._id = id;
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();
    if (name != null) obj._attributes['name'] = name;
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (resourceCount != null) obj._attributes['resource_count'] = resourceCount;
    if (roomCount != null) obj._attributes['room_count'] = roomCount;

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



  /// Will get a collection of [PcoCalendarResourceApprovalGroup] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_approval_groups`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResourceApprovalGroup>> get( {String? id, PcoCalendarResourceApprovalGroupQuery? query, bool includeAll = false, bool includePeople = false, bool includeResources = false,}) async {
    query ??= PcoCalendarResourceApprovalGroupQuery();
    if (includeAll) query.include.addAll(PcoCalendarResourceApprovalGroup.canInclude);
    if (includePeople) query.include.add('people');
    if (includeResources) query.include.add('resources');
    var url = '/calendar/v2/resource_approval_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceApprovalGroup>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResourceApprovalGroup] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/$resourceId/resource_approval_groups`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResourceApprovalGroup>> getFromResource(String resourceId, {String? id, PcoCalendarResourceApprovalGroupQuery? query, bool includeAll = false, bool includePeople = false, bool includeResources = false,}) async {
    query ??= PcoCalendarResourceApprovalGroupQuery();
    if (includeAll) query.include.addAll(PcoCalendarResourceApprovalGroup.canInclude);
    if (includePeople) query.include.add('people');
    if (includeResources) query.include.add('resources');
    var url = '/calendar/v2/resources/$resourceId/resource_approval_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceApprovalGroup>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/event_resource_requests`
  Future<PcoCollection<PcoCalendarEventResourceRequest>> getEventResourceRequests({PcoCalendarEventResourceRequestQuery? query}) async {
    query ??= PcoCalendarEventResourceRequestQuery();
    var url = '$apiEndpoint/event_resource_requests';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/people`
  Future<PcoCollection<PcoCalendarPerson>> getPeople({PcoCalendarPersonQuery? query}) async {
    query ??= PcoCalendarPersonQuery();
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/resources`
  /// 
  /// Available Query Filters:
  /// - `resources`
  /// - `rooms`
  Future<PcoCollection<PcoCalendarResource>> getResources({PcoCalendarResourceQuery? query}) async {
    query ??= PcoCalendarResourceQuery();
    var url = '$apiEndpoint/resources';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
