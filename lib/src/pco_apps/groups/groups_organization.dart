/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:43:17.390508
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Ordering is not allowed on this object.
enum PcoGroupsOrganizationOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoGroupsOrganizationFilter { none }

/// Creates a [PcoGroupsOrganizationQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGroupsOrganizationQuery extends PlanningCenterApiQuery {
  static final Map<PcoGroupsOrganizationOrder, String> _orderMap = {
    
  };
  static String orderString(PcoGroupsOrganizationOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGroupsOrganizationFilter, String> _filterMap = {
    
  };
  static String filterString(PcoGroupsOrganizationFilter filter) => _filterMap[filter]!;

  PcoGroupsOrganizationQuery({



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
  }) : super() ;
}

/// This class represents a PCO Groups Organization Object
/// 
/// - Application:        groups
/// - Id:                 organization
/// - Type:               Organization
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGroupsOrganization.fromJson()` constructor.
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
/// - `name` (ro) -> PCO: `name`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `event-organization-events`: https://api.planningcenteronline.com/groups/v2/events
/// - `grouptype-organization-group_types`: https://api.planningcenteronline.com/groups/v2/group_types
/// - `group-organization-groups`: https://api.planningcenteronline.com/groups/v2/groups
/// - `person-organization-people`: https://api.planningcenteronline.com/groups/v2/people
/// - `taggroup-organization-tag_groups`: https://api.planningcenteronline.com/groups/v2/tag_groups
/// 
/// Inbound Edges:
/// NONE
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Organization",
///   "id": "1",
///   "attributes": {
///     "name": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoGroupsOrganization extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/groups/v2';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

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
  static const kName = 'name';


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
  String get name => _attributes[kName] ?? '';

  // Class Constructors
  PcoGroupsOrganization.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGroupsOrganization.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGroupsOrganization] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGroupsOrganization({String? id, String? name, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoGroupsOrganization.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;

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
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/events`
  /// 
  /// Available Query Filters:
  /// - `canceled`
  /// - `group`
  /// filter events from specific groups; provide an additional `group_id` param
  /// as a comma-separated list of IDs, ex: `?filter=group&group_id=1,2,3`
  /// 
  /// - `group_type`
  /// filter events from specific group types; provide an additional `group_type_id` param
  /// as a comma-separated list of IDs, ex: `?filter=group_type&group_type_id=1,2,3`
  /// 
  /// - `my_groups`
  /// - `not_canceled`
  /// - `upcoming`
  Future<PcoCollection<PcoGroupsEvent>> getEvents({PcoGroupsEventQuery? query}) async {
    query ??= PcoGroupsEventQuery();
    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsGroupType] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/group_types`
  /// 
  /// Available Query Filters:
  /// - `church_center_visible`
  /// - `not_church_center_visible`
  Future<PcoCollection<PcoGroupsGroupType>> getGroupTypes({PcoGroupsGroupTypeQuery? query}) async {
    query ??= PcoGroupsGroupTypeQuery();
    var url = '$apiEndpoint/group_types';
    return PcoCollection.fromApiCall<PcoGroupsGroupType>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups`
  /// 
  /// Available Query Filters:
  /// - `group`
  /// filter events from specific groups; provide an additional `group_id` param
  /// as a comma-separated list of IDs, ex: `?filter=group&group_id=1,2,3`
  /// 
  /// - `group_type`
  /// filter events from specific group types; provide an additional `group_type_id` param
  /// as a comma-separated list of IDs, ex: `?filter=group_type&group_type_id=1,2,3`
  /// 
  /// - `my_groups`
  Future<PcoCollection<PcoGroupsGroup>> getGroups({PcoGroupsGroupQuery? query}) async {
    query ??= PcoGroupsGroupQuery();
    var url = '$apiEndpoint/groups';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/people`
  Future<PcoCollection<PcoGroupsPerson>> getPeople({PcoGroupsPersonQuery? query}) async {
    query ??= PcoGroupsPersonQuery();
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsTagGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/tag_groups`
  /// 
  /// Available Query Filters:
  /// - `public`
  /// Filter tag groups that are visible on public pages
  /// 
  Future<PcoCollection<PcoGroupsTagGroup>> getTagGroups({PcoGroupsTagGroupQuery? query}) async {
    query ??= PcoGroupsTagGroupQuery();
    var url = '$apiEndpoint/tag_groups';
    return PcoCollection.fromApiCall<PcoGroupsTagGroup>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
