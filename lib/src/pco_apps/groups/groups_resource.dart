/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.855770
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// This class represents a PCO Groups Resource Object
/// 
/// - Application:        groups
/// - Id:                 resource
/// - Type:               Resource
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/group_types/1/resources
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGroupsResource.fromJson()` constructor.
/// - Manually create an object using the `PcoGroupsResource.manual()` constructor.
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
/// 
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `description` (ro) -> PCO: `description`
/// - `lastUpdated` (ro) -> PCO: `last_updated`
/// - `name` (ro) -> PCO: `name`
/// - `type` (ro) -> PCO: `type`
/// - `visibility` (ro) -> PCO: `visibility`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// NONE
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
/// - `last_updated`: (URLParameter), prefix with a hyphen (-last_updated) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `resource-resource-download`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download
/// - `resource-resource-visit`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit
/// 
/// Inbound Edges:
/// - `resource-group-resources`: https://api.planningcenteronline.com/groups/v2/groups/1/resources
/// - `resource-grouptype-resources`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources
/// - `resource-resource-download`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download
/// - `resource-resource-visit`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Resource",
///   "id": "1",
///   "attributes": {
///     "description": "string",
///     "last_updated": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "type": "string",
///     "visibility": "value"
///   },
///   "relationships": {
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoGroupsResource extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Resource';
  static const String kTypeId = 'resource';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/groups/v2/group_types/1/resources';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `last_updated`: (URLParameter), prefix with a hyphen (-last_updated) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['last_updated','name'];

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
  static const kDescription = 'description';
  static const kLastUpdated = 'last_updated';
  static const kName = 'name';
  static const kType = 'type';
  static const kVisibility = 'visibility';


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
  String get description => _attributes[kDescription] ?? '';
  DateTime get lastUpdated => DateTime.parse(_attributes[kLastUpdated] ?? '');
  String get name => _attributes[kName] ?? '';
  String get type => _attributes[kType] ?? '';
  String get visibility => _attributes[kVisibility] ?? '';

  // Class Constructors
  PcoGroupsResource.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGroupsResource.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGroupsResource] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoGroupsResource({String? id, String? description, DateTime? lastUpdated, String? name, String? visibility, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoGroupsResource.empty();
    obj._id = id;
    if (description != null) obj._attributes['description'] = description;
    if (lastUpdated != null) obj._attributes['last_updated'] = lastUpdated.toIso8601String();
    if (name != null) obj._attributes['name'] = name;
    if (visibility != null) obj._attributes['visibility'] = visibility;
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



  /// Will get a collection of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/resources`
  /// 
  /// Available Query Filters:
  /// - `leaders`
  /// filter resources only visible to group leaders
  /// 
  static Future<PcoCollection<PcoGroupsResource>> getFromGroup(String groupId, {String? id, PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '/groups/v2/groups/$groupId/resources';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `/groups/v2/group_types/$groupTypeId/resources`
  static Future<PcoCollection<PcoGroupsResource>> getFromGroupType(String groupTypeId, {String? id, PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '/groups/v2/group_types/$groupTypeId/resources';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGroupsResource] objects (expecting one)
  /// using a path like this: `/groups/v2/group_types/$groupTypeId/resources/$resourceId/download`
  static Future<PcoCollection<PcoGroupsResource>> getDownloadFromGroupTypeAndResource(String groupTypeId,String resourceId, {PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '/groups/v2/group_types/$groupTypeId/resources/$resourceId/download';
    
    return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGroupsResource] objects (expecting one)
  /// using a path like this: `/groups/v2/group_types/$groupTypeId/resources/$resourceId/visit`
  static Future<PcoCollection<PcoGroupsResource>> getVisitFromGroupTypeAndResource(String groupTypeId,String resourceId, {PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '/groups/v2/group_types/$groupTypeId/resources/$resourceId/visit';
    
    return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download`
  Future<PcoCollection<PcoGroupsResource>> getDownload({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/download';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit`
  Future<PcoCollection<PcoGroupsResource>> getVisit({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/visit';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
