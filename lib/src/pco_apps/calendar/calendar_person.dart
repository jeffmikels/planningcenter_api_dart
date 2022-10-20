/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:43:01.499816
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `firstName` -> `?order=first_name`
/// - `lastName` -> `?order=last_name`
/// - `resolvesConflicts` -> `?order=resolves_conflicts`
/// - `updatedAt` -> `?order=updated_at`
enum PcoCalendarPersonOrder { createdAt, firstName, lastName, resolvesConflicts, updatedAt }

/// Possible Inbound Filters:
/// - `eventOwners` -> `?filter=event_owners` : -- no description
enum PcoCalendarPersonFilter { eventOwners }

/// Creates a [PcoCalendarPersonQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
/// 
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeOrganization`: include associated organization 
/// - `includeAll`: include all related objects
/// 
/// Alternatively, you may pass a list of strings to the `include` argument.
/// 
/// e.g. `PcoCalendarPersonQuery(includes: ['a', 'b'])`
/// 
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// 
/// [PcoCalendarPerson] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereFirstName`: query on a specific first_name, example: ?where[first_name]=string
/// - `whereLastName`: query on a specific last_name, example: ?where[last_name]=string
/// - `whereMiddleName`: query on a specific middle_name, example: ?where[middle_name]=string
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
/// - `PcoCalendarPersonOrder.createdAt` : will order by `created_at`
/// - `PcoCalendarPersonOrder.firstName` : will order by `first_name`
/// - `PcoCalendarPersonOrder.lastName` : will order by `last_name`
/// - `PcoCalendarPersonOrder.resolvesConflicts` : will order by `resolves_conflicts`
/// - `PcoCalendarPersonOrder.updatedAt` : will order by `updated_at`
/// 
/// To reverse the order, set `reverse` to true.
/// 
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// 
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarPersonQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarPersonOrder, String> _orderMap = {
    PcoCalendarPersonOrder.createdAt: 'created_at',
    PcoCalendarPersonOrder.firstName: 'first_name',
    PcoCalendarPersonOrder.lastName: 'last_name',
    PcoCalendarPersonOrder.resolvesConflicts: 'resolves_conflicts',
    PcoCalendarPersonOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoCalendarPersonOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarPersonFilter, String> _filterMap = {
    PcoCalendarPersonFilter.eventOwners: 'event_owners',
  };
  static String filterString(PcoCalendarPersonFilter filter) => _filterMap[filter]!;

  PcoCalendarPersonQuery({
    /// include associated organization
    /// when true, adds `?include=organization` to url
    bool includeOrganization = false,
    
    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,
    
    /// Query by `first_name`
    /// query on a specific first_name, url example: ?where[first_name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereFirstName,
    
    /// Query by `last_name`
    /// query on a specific last_name, url example: ?where[last_name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereLastName,
    
    /// Query by `middle_name`
    /// query on a specific middle_name, url example: ?where[middle_name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereMiddleName,
    
    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    

    PcoCalendarPersonFilter? filterBy,
    PcoCalendarPersonOrder? orderBy,


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
    if (includeOrganization) include.add('organization');
    
    if (whereCreatedAt != null) where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereFirstName != null) where.add(PlanningCenterApiWhere.parse('first_name', whereFirstName));
    if (whereLastName != null) where.add(PlanningCenterApiWhere.parse('last_name', whereLastName));
    if (whereMiddleName != null) where.add(PlanningCenterApiWhere.parse('middle_name', whereMiddleName));
    if (whereUpdatedAt != null) where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));
        
    
    if (orderBy != null) order = orderString(orderBy, reverse: reverse);}
}

/// This class represents a PCO Calendar Person Object
/// 
/// - Application:        calendar
/// - Id:                 person
/// - Type:               Person
/// - ApiVersion:         2021-07-20
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/people
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCalendarPerson.fromJson()` constructor.
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
/// The people in your organization with access to Calendar.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `firstName` (ro) -> PCO: `first_name`
/// - `lastName` (ro) -> PCO: `last_name`
/// - `middleName` (ro) -> PCO: `middle_name`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `avatarUrl` (ro) -> PCO: `avatar_url`
/// - `isChild` (ro) -> PCO: `child`
/// - `contactData` (ro) -> PCO: `contact_data`
/// - `gender` (ro) -> PCO: `gender`
/// - `isHasAccess` (ro) -> PCO: `has_access`
/// - `namePrefix` (ro) -> PCO: `name_prefix`
/// - `nameSuffix` (ro) -> PCO: `name_suffix`
/// - `pendingRequestCount` (ro) -> PCO: `pending_request_count`
/// - `permissions` (ro) -> PCO: `permissions`
/// - `isResolvesConflicts` (ro) -> PCO: `resolves_conflicts`
/// - `isSiteAdministrator` (ro) -> PCO: `site_administrator`
/// - `status` (ro) -> PCO: `status`
/// - `eventPermissionsType` (ro) -> PCO: `event_permissions_type`
/// - `peoplePermissionsType` (ro) -> PCO: `people_permissions_type`
/// - `roomPermissionsType` (ro) -> PCO: `room_permissions_type`
/// - `resourcesPermissionsType` (ro) -> PCO: `resources_permissions_type`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `eventresourcerequest-person-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/people/1/event_resource_requests
/// - `organization-person-organization`: https://api.planningcenteronline.com/calendar/v2/people/1/organization
/// 
/// Inbound Edges:
/// - `person-conflict-resolved_by`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resolved_by
/// - `person-event-owner`: https://api.planningcenteronline.com/calendar/v2/events/1/owner
/// - `person-eventresourcerequest-created_by`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/created_by
/// - `person-eventresourcerequest-updated_by`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/updated_by
/// - `person-organization-people`: https://api.planningcenteronline.com/calendar/v2/people
/// - `person-resourceapprovalgroup-people`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/people
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Person",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "first_name": "string",
///     "last_name": "string",
///     "middle_name": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "avatar_url": "string",
///     "child": true,
///     "contact_data": "string",
///     "gender": "string",
///     "has_access": true,
///     "name_prefix": "string",
///     "name_suffix": "string",
///     "pending_request_count": 1,
///     "permissions": 1,
///     "resolves_conflicts": true,
///     "site_administrator": true,
///     "status": "value",
///     "event_permissions_type": "string",
///     "people_permissions_type": "string",
///     "room_permissions_type": "string",
///     "resources_permissions_type": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCalendarPerson extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Person';
  static const String kTypeId = 'person';
  static const String kApiVersion = '2021-07-20';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/people';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `organization`: include associated organization 
  static List<String> get canInclude => ['organization'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `first_name`: (URLParameter), query on a specific first_name, example: ?where[first_name]=string
  /// - `last_name`: (URLParameter), query on a specific last_name, example: ?where[last_name]=string
  /// - `middle_name`: (URLParameter), query on a specific middle_name, example: ?where[middle_name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','first_name','last_name','middle_name','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// - `resolves_conflicts`: (URLParameter), prefix with a hyphen (-resolves_conflicts) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','first_name','last_name','resolves_conflicts','updated_at'];

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
  static const kFirstName = 'first_name';
  static const kLastName = 'last_name';
  static const kMiddleName = 'middle_name';
  static const kUpdatedAt = 'updated_at';
  static const kAvatarUrl = 'avatar_url';
  static const kChild = 'child';
  static const kContactData = 'contact_data';
  static const kGender = 'gender';
  static const kHasAccess = 'has_access';
  static const kNamePrefix = 'name_prefix';
  static const kNameSuffix = 'name_suffix';
  static const kPendingRequestCount = 'pending_request_count';
  static const kPermissions = 'permissions';
  static const kResolvesConflicts = 'resolves_conflicts';
  static const kSiteAdministrator = 'site_administrator';
  static const kStatus = 'status';
  static const kEventPermissionsType = 'event_permissions_type';
  static const kPeoplePermissionsType = 'people_permissions_type';
  static const kRoomPermissionsType = 'room_permissions_type';
  static const kResourcesPermissionsType = 'resources_permissions_type';


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
  String get firstName => _attributes[kFirstName] ?? '';
  String get lastName => _attributes[kLastName] ?? '';
  String get middleName => _attributes[kMiddleName] ?? '';
  String get avatarUrl => _attributes[kAvatarUrl] ?? '';
  bool get isChild => _attributes[kChild] == true;
  String get contactData => _attributes[kContactData] ?? '';
  String get gender => _attributes[kGender] ?? '';
  bool get isHasAccess => _attributes[kHasAccess] == true;
  String get namePrefix => _attributes[kNamePrefix] ?? '';
  String get nameSuffix => _attributes[kNameSuffix] ?? '';
  int get pendingRequestCount => _attributes[kPendingRequestCount] ?? 0;
  int get permissions => _attributes[kPermissions] ?? 0;
  bool get isResolvesConflicts => _attributes[kResolvesConflicts] == true;
  bool get isSiteAdministrator => _attributes[kSiteAdministrator] == true;
  String get status => _attributes[kStatus] ?? '';
  String get eventPermissionsType => _attributes[kEventPermissionsType] ?? '';
  String get peoplePermissionsType => _attributes[kPeoplePermissionsType] ?? '';
  String get roomPermissionsType => _attributes[kRoomPermissionsType] ?? '';
  String get resourcesPermissionsType => _attributes[kResourcesPermissionsType] ?? '';
  
  // typed getters for each relationship
  
  PcoCalendarOrganization? get includedOrganization => _firstOrNull<PcoCalendarOrganization>(relationships['organization']);

  // Class Constructors
  PcoCalendarPerson.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCalendarPerson.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarPerson] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCalendarPerson({String? id, DateTime? createdAt, String? firstName, String? lastName, String? middleName, DateTime? updatedAt, String? avatarUrl, bool? isChild, String? contactData, String? gender, bool? isHasAccess, String? namePrefix, String? nameSuffix, int? pendingRequestCount, int? permissions, bool? isResolvesConflicts, bool? isSiteAdministrator, String? status, String? eventPermissionsType, String? peoplePermissionsType, String? roomPermissionsType, String? resourcesPermissionsType, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoCalendarPerson.empty();
    obj._id = id;
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();
    if (firstName != null) obj._attributes['first_name'] = firstName;
    if (lastName != null) obj._attributes['last_name'] = lastName;
    if (middleName != null) obj._attributes['middle_name'] = middleName;
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (avatarUrl != null) obj._attributes['avatar_url'] = avatarUrl;
    if (isChild != null) obj._attributes['child'] = isChild;
    if (contactData != null) obj._attributes['contact_data'] = contactData;
    if (gender != null) obj._attributes['gender'] = gender;
    if (isHasAccess != null) obj._attributes['has_access'] = isHasAccess;
    if (namePrefix != null) obj._attributes['name_prefix'] = namePrefix;
    if (nameSuffix != null) obj._attributes['name_suffix'] = nameSuffix;
    if (pendingRequestCount != null) obj._attributes['pending_request_count'] = pendingRequestCount;
    if (permissions != null) obj._attributes['permissions'] = permissions;
    if (isResolvesConflicts != null) obj._attributes['resolves_conflicts'] = isResolvesConflicts;
    if (isSiteAdministrator != null) obj._attributes['site_administrator'] = isSiteAdministrator;
    if (status != null) obj._attributes['status'] = status;
    if (eventPermissionsType != null) obj._attributes['event_permissions_type'] = eventPermissionsType;
    if (peoplePermissionsType != null) obj._attributes['people_permissions_type'] = peoplePermissionsType;
    if (roomPermissionsType != null) obj._attributes['room_permissions_type'] = roomPermissionsType;
    if (resourcesPermissionsType != null) obj._attributes['resources_permissions_type'] = resourcesPermissionsType;

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



  /// Will get a collection of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/people`
  /// 
  /// Available Query Filters:
  /// - `event_owners`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarPerson>> get( {String? id, PcoCalendarPersonQuery? query, bool includeOrganization = false,}) async {
    query ??= PcoCalendarPersonQuery();
    
    if (includeOrganization) query.include.add('organization');
    var url = '/calendar/v2/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/conflicts/$conflictId/resolved_by`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarPerson>> getResolvedByFromConflict(String conflictId, {String? id, PcoCalendarPersonQuery? query, bool includeOrganization = false,}) async {
    query ??= PcoCalendarPersonQuery();
    
    if (includeOrganization) query.include.add('organization');
    var url = '/calendar/v2/conflicts/$conflictId/resolved_by';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/$eventId/owner`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarPerson>> getOwnerFromEvent(String eventId, {String? id, PcoCalendarPersonQuery? query, bool includeOrganization = false,}) async {
    query ??= PcoCalendarPersonQuery();
    
    if (includeOrganization) query.include.add('organization');
    var url = '/calendar/v2/events/$eventId/owner';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_resource_requests/$eventResourceRequestId/created_by`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarPerson>> getCreatedByFromEventResourceRequest(String eventResourceRequestId, {String? id, PcoCalendarPersonQuery? query, bool includeOrganization = false,}) async {
    query ??= PcoCalendarPersonQuery();
    
    if (includeOrganization) query.include.add('organization');
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/created_by';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_resource_requests/$eventResourceRequestId/updated_by`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarPerson>> getUpdatedByFromEventResourceRequest(String eventResourceRequestId, {String? id, PcoCalendarPersonQuery? query, bool includeOrganization = false,}) async {
    query ??= PcoCalendarPersonQuery();
    
    if (includeOrganization) query.include.add('organization');
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/updated_by';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/people`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarPerson>> getFromResourceApprovalGroup(String resourceApprovalGroupId, {String? id, PcoCalendarPersonQuery? query, bool includeOrganization = false,}) async {
    query ??= PcoCalendarPersonQuery();
    
    if (includeOrganization) query.include.add('organization');
    var url = '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/people/1/event_resource_requests`
  /// 
  /// Available Query Filters:
  /// - `awaiting_response`
  /// - `future`
  /// - `not_overbooked`
  /// - `overbooked`
  Future<PcoCollection<PcoCalendarEventResourceRequest>> getEventResourceRequests({PcoCalendarEventResourceRequestQuery? query}) async {
    query ??= PcoCalendarEventResourceRequestQuery();
    var url = '$apiEndpoint/event_resource_requests';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarOrganization] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/people/1/organization`
  Future<PcoCollection<PcoCalendarOrganization>> getOrganization({PcoCalendarOrganizationQuery? query}) async {
    query ??= PcoCalendarOrganizationQuery();
    var url = '$apiEndpoint/organization';
    return PcoCollection.fromApiCall<PcoCalendarOrganization>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
