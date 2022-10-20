/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:43:01.503473
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Possible Ordering:
/// - `ancestry` -> `?order=ancestry`
/// - `createdAt` -> `?order=created_at`
/// - `name` -> `?order=name`
/// - `updatedAt` -> `?order=updated_at`
enum PcoCalendarResourceFolderOrder { ancestry, createdAt, name, updatedAt }

/// Possible Inbound Filters:
/// - `resources` -> `?filter=resources` : -- no description
/// - `rooms` -> `?filter=rooms` : -- no description
enum PcoCalendarResourceFolderFilter { resources, rooms }

/// Creates a [PcoCalendarResourceFolderQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
/// 
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeResources`: include associated resources 
/// - `includeAll`: include all related objects
/// 
/// Alternatively, you may pass a list of strings to the `include` argument.
/// 
/// e.g. `PcoCalendarResourceFolderQuery(includes: ['a', 'b'])`
/// 
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// 
/// [PcoCalendarResourceFolder] objects can be requested with one or more of the following criteria:
/// - `whereAncestry`: query on a specific ancestry, example: ?where[ancestry]=string
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `wherePathName`: query on a specific path_name, example: ?where[path_name]=string
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
/// - `PcoCalendarResourceFolderOrder.ancestry` : will order by `ancestry`
/// - `PcoCalendarResourceFolderOrder.createdAt` : will order by `created_at`
/// - `PcoCalendarResourceFolderOrder.name` : will order by `name`
/// - `PcoCalendarResourceFolderOrder.updatedAt` : will order by `updated_at`
/// 
/// To reverse the order, set `reverse` to true.
/// 
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// 
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarResourceFolderQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarResourceFolderOrder, String> _orderMap = {
    PcoCalendarResourceFolderOrder.ancestry: 'ancestry',
    PcoCalendarResourceFolderOrder.createdAt: 'created_at',
    PcoCalendarResourceFolderOrder.name: 'name',
    PcoCalendarResourceFolderOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoCalendarResourceFolderOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarResourceFolderFilter, String> _filterMap = {
    PcoCalendarResourceFolderFilter.resources: 'resources',
    PcoCalendarResourceFolderFilter.rooms: 'rooms',
  };
  static String filterString(PcoCalendarResourceFolderFilter filter) => _filterMap[filter]!;

  PcoCalendarResourceFolderQuery({
    /// include associated resources
    /// when true, adds `?include=resources` to url
    bool includeResources = false,
    
    /// Query by `ancestry`
    /// query on a specific ancestry, url example: ?where[ancestry]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereAncestry,
    
    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,
    
    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,
    
    /// Query by `path_name`
    /// query on a specific path_name, url example: ?where[path_name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? wherePathName,
    
    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    

    PcoCalendarResourceFolderFilter? filterBy,
    PcoCalendarResourceFolderOrder? orderBy,


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
    if (filterBy != null) filter.add(filterString(filterBy));
    if (includeResources) include.add('resources');
    
    if (whereAncestry != null) where.add(PlanningCenterApiWhere.parse('ancestry', whereAncestry));
    if (whereCreatedAt != null) where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereName != null) where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (wherePathName != null) where.add(PlanningCenterApiWhere.parse('path_name', wherePathName));
    if (whereUpdatedAt != null) where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));
        
    
    if (orderBy != null) order = orderString(orderBy, reverse: reverse);}
}

/// This class represents a PCO Calendar ResourceFolder Object
/// 
/// - Application:        calendar
/// - Id:                 resource_folder
/// - Type:               ResourceFolder
/// - ApiVersion:         2021-07-20
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/resource_folders
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - Create a new instance using the `PcoCalendarResourceFolder()` constructor
/// - Instantiate from existing `JSON` data using the `PcoCalendarResourceFolder.fromJson()` constructor.
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
/// An organizational folder containing rooms or resources.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `name` (rw) -> PCO: `name`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `ancestry` (ro) -> PCO: `ancestry`
/// - `kind` (ro) -> PCO: `kind`
/// - `pathName` (ro) -> PCO: `path_name`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `resource-resourcefolder-resources`: https://api.planningcenteronline.com/calendar/v2/resource_folders/1/resources
/// 
/// Inbound Edges:
/// - `resourcefolder-organization-resource_folders`: https://api.planningcenteronline.com/calendar/v2/resource_folders
/// - `resourcefolder-resource-resource_folder`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_folder
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ResourceFolder",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "ancestry": "string",
///     "kind": "string",
///     "path_name": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCalendarResourceFolder extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ResourceFolder';
  static const String kTypeId = 'resource_folder';
  static const String kApiVersion = '2021-07-20';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_folders';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `resources`: include associated resources 
  static List<String> get canInclude => ['resources'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `ancestry`: (URLParameter), query on a specific ancestry, example: ?where[ancestry]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `path_name`: (URLParameter), query on a specific path_name, example: ?where[path_name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['ancestry','created_at','name','path_name','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `ancestry`: (URLParameter), prefix with a hyphen (-ancestry) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['ancestry','created_at','name','updated_at'];

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
  static const kAncestry = 'ancestry';
  static const kKind = 'kind';
  static const kPathName = 'path_name';


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
  String get ancestry => _attributes[kAncestry] ?? '';
  String get kind => _attributes[kKind] ?? '';
  String get pathName => _attributes[kPathName] ?? '';
  
  // setters for object attributes
  
  /// The folder name
  ///
  /// pass `null` to remove key from attributes
  set name(String? x) => (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;
  
  // typed getters for each relationship
  
  List<PcoCalendarResource> get includedResources => (relationships['resources'] as List?)?.cast<PcoCalendarResource>() ?? [];

  // Class Constructors
  PcoCalendarResourceFolder.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  PcoCalendarResourceFolder.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarResourceFolder] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `name`
  /// - FIELDS USED WHEN UPDATING: `name`
  factory PcoCalendarResourceFolder({String? id, DateTime? createdAt, String? name, DateTime? updatedAt, String? ancestry, String? kind, String? pathName, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoCalendarResourceFolder.empty();
    obj._id = id;
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();
    if (name != null) obj._attributes['name'] = name;
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (ancestry != null) obj._attributes['ancestry'] = ancestry;
    if (kind != null) obj._attributes['kind'] = kind;
    if (pathName != null) obj._attributes['path_name'] = pathName;

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



  /// Will get a collection of [PcoCalendarResourceFolder] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_folders`
  /// 
  /// Available Query Filters:
  /// - `resources`
  /// - `rooms`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResourceFolder>> get( {String? id, PcoCalendarResourceFolderQuery? query, bool includeResources = false,}) async {
    query ??= PcoCalendarResourceFolderQuery();
    
    if (includeResources) query.include.add('resources');
    var url = '/calendar/v2/resource_folders';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceFolder>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResourceFolder] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/$resourceId/resource_folder`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResourceFolder>> getFromResource(String resourceId, {String? id, PcoCalendarResourceFolderQuery? query, bool includeResources = false,}) async {
    query ??= PcoCalendarResourceFolderQuery();
    
    if (includeResources) query.include.add('resources');
    var url = '/calendar/v2/resources/$resourceId/resource_folder';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceFolder>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_folders/1/resources`
  Future<PcoCollection<PcoCalendarResource>> getResources({PcoCalendarResourceQuery? query}) async {
    query ??= PcoCalendarResourceQuery();
    var url = '$apiEndpoint/resources';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
