/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:11.970322
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `name` -> `?order=name`
/// - `sequence` -> `?order=sequence`
enum PcoServicesServiceTypeOrder { name, sequence }

/// Possible Inbound Filters:
/// - `noParent` -> `?filter=no_parent` : -- no description
enum PcoServicesServiceTypeFilter { noParent }

/// Creates a [PcoServicesServiceTypeQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeTimePreferenceOptions`: include associated time_preference_options
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoServicesServiceTypeQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoServicesServiceType] objects can be requested with one or more of the following criteria:
/// - `whereId`: query on a specific id, example: ?where[id]=primary_key
/// - `whereName`: query on a specific name, example: ?where[name]=string
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
/// - `PcoServicesServiceTypeOrder.name` : will order by `name`
/// - `PcoServicesServiceTypeOrder.sequence` : will order by `sequence`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesServiceTypeQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesServiceTypeOrder, String> _orderMap = {
    PcoServicesServiceTypeOrder.name: 'name',
    PcoServicesServiceTypeOrder.sequence: 'sequence',
  };
  static String orderString(PcoServicesServiceTypeOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesServiceTypeFilter, String> _filterMap = {
    PcoServicesServiceTypeFilter.noParent: 'no_parent',
  };
  static String filterString(PcoServicesServiceTypeFilter filter) =>
      _filterMap[filter]!;

  PcoServicesServiceTypeQuery({
    /// include associated time_preference_options
    /// when true, adds `?include=time_preference_options` to url
    bool includeTimePreferenceOptions = false,

    /// Query by `id`
    /// query on a specific id, url example: ?where[id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereId,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,
    PcoServicesServiceTypeFilter? filterBy,
    PcoServicesServiceTypeOrder? orderBy,

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
    if (includeTimePreferenceOptions) include.add('time_preference_options');

    if (whereId != null) where.add(PlanningCenterApiWhere.parse('id', whereId));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Services ServiceType Object
///
/// - Application:        services
/// - Id:                 service_type
/// - Type:               ServiceType
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/service_types
///
/// ## Instantiation
/// - Create a new instance using the `PcoServicesServiceType()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesServiceType.fromJson()` constructor.
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
/// A Service Type is a container for plans.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `archivedAt` (ro) -> PCO: `archived_at`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `deletedAt` (ro) -> PCO: `deleted_at`
/// - `name` (rw) -> PCO: `name`
/// - `sequence` (rw) -> PCO: `sequence`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `isAttachmentTypesEnabled` (rw) -> PCO: `attachment_types_enabled`
/// - `backgroundCheckPermissions` (rw) -> PCO: `background_check_permissions`
/// - `commentPermissions` (rw) -> PCO: `comment_permissions`
/// - `customItemTypes` (rw) -> PCO: `custom_item_types`
/// - `frequency` (rw) -> PCO: `frequency`
/// - `lastPlanFrom` (rw) -> PCO: `last_plan_from`
/// - `permissions` (ro) -> PCO: `permissions`
/// - `standardItemTypes` (rw) -> PCO: `standard_item_types`
/// - `parentId` (wo) -> PCO: `parent_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `attachment-servicetype-attachments`: https://api.planningcenteronline.com/services/v2/service_types/1/attachments
/// - `itemnotecategory-servicetype-item_note_categories`: https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories
/// - `layout-servicetype-layouts`: https://api.planningcenteronline.com/services/v2/service_types/1/layouts
/// - `livecontroller-servicetype-live_controllers`: https://api.planningcenteronline.com/services/v2/service_types/1/live_controllers
/// - `plannotecategory-servicetype-plan_note_categories`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories
/// - `plantemplate-servicetype-plan_templates`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates
/// - `plantime-servicetype-plan_times`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_times
/// - `plan-servicetype-plans`: https://api.planningcenteronline.com/services/v2/service_types/1/plans
/// - `publicview-servicetype-public_view`: https://api.planningcenteronline.com/services/v2/service_types/1/public_view
/// - `teamposition-servicetype-team_positions`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions
/// - `team-servicetype-teams`: https://api.planningcenteronline.com/services/v2/service_types/1/teams
/// - `timepreferenceoption-servicetype-time_preference_options`: https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options
/// - `plan-servicetype-unscoped_plans`: https://api.planningcenteronline.com/services/v2/service_types/1/unscoped_plans
///
/// Inbound Edges:
/// - `servicetype-folder-service_types`: https://api.planningcenteronline.com/services/v2/folders/1/service_types
/// - `servicetype-live-service_type`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/service_type
/// - `servicetype-organization-service_types`: https://api.planningcenteronline.com/services/v2/service_types
/// - `servicetype-team-service_type`: https://api.planningcenteronline.com/services/v2/teams/1/service_type
///
/// Actions:
/// - `create_plans`: https://api.planningcenteronline.com/services/v2/service_types/1/create_plans
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ServiceType",
///   "id": "1",
///   "attributes": {
///     "archived_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z",
///     "deleted_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "sequence": 1,
///     "updated_at": "2000-01-01T12:00:00Z",
///     "attachment_types_enabled": true,
///     "background_check_permissions": "string",
///     "comment_permissions": "string",
///     "custom_item_types": "string",
///     "frequency": "string",
///     "last_plan_from": "string",
///     "permissions": "string",
///     "standard_item_types": "string"
///   },
///   "relationships": {
///     "parent": {
///       "data": {
///         "type": "Folder",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesServiceType extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ServiceType';
  static const String kTypeId = 'service_type';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types';

  /// possible includes with parameter ?include=a,b
  /// - `time_preference_options`: include associated time_preference_options
  static List<String> get canInclude => ['time_preference_options'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['id', 'name'];

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  static List<String> get canOrderBy => ['name', 'sequence'];

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
  static const kArchivedAt = 'archived_at';
  static const kCreatedAt = 'created_at';
  static const kDeletedAt = 'deleted_at';
  static const kName = 'name';
  static const kSequence = 'sequence';
  static const kUpdatedAt = 'updated_at';
  static const kAttachmentTypesEnabled = 'attachment_types_enabled';
  static const kBackgroundCheckPermissions = 'background_check_permissions';
  static const kCommentPermissions = 'comment_permissions';
  static const kCustomItemTypes = 'custom_item_types';
  static const kFrequency = 'frequency';
  static const kLastPlanFrom = 'last_plan_from';
  static const kPermissions = 'permissions';
  static const kStandardItemTypes = 'standard_item_types';
  static const kParentId = 'parent_id';

  // getters and setters
  @override
  List<String> get createAllowed => [
        'attachment_types_enabled',
        'background_check_permissions',
        'comment_permissions',
        'custom_item_types',
        'frequency',
        'last_plan_from',
        'name',
        'parent_id',
        'sequence',
        'standard_item_types'
      ];

  @override
  List<String> get updateAllowed => [
        'attachment_types_enabled',
        'background_check_permissions',
        'comment_permissions',
        'custom_item_types',
        'frequency',
        'last_plan_from',
        'name',
        'parent_id',
        'sequence',
        'standard_item_types'
      ];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  DateTime get archivedAt => DateTime.parse(_attributes[kArchivedAt] ?? '');
  DateTime get deletedAt => DateTime.parse(_attributes[kDeletedAt] ?? '');
  String get name => _attributes[kName] ?? '';
  int get sequence => _attributes[kSequence] ?? 0;
  bool get isAttachmentTypesEnabled =>
      _attributes[kAttachmentTypesEnabled] == true;
  String get backgroundCheckPermissions =>
      _attributes[kBackgroundCheckPermissions] ?? '';
  String get commentPermissions => _attributes[kCommentPermissions] ?? '';
  String get customItemTypes => _attributes[kCustomItemTypes] ?? '';
  String get frequency => _attributes[kFrequency] ?? '';
  String get lastPlanFrom => _attributes[kLastPlanFrom] ?? '';
  String get permissions => _attributes[kPermissions] ?? '';
  String get standardItemTypes => _attributes[kStandardItemTypes] ?? '';

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  ///
  /// pass `null` to remove key from attributes
  set sequence(int? x) =>
      (x == null) ? _attributes.remove(kSequence) : _attributes[kSequence] = x;

  ///
  /// pass `null` to remove key from attributes
  set isAttachmentTypesEnabled(bool? x) => (x == null)
      ? _attributes.remove(kAttachmentTypesEnabled)
      : _attributes[kAttachmentTypesEnabled] = x;

  ///
  /// pass `null` to remove key from attributes
  set backgroundCheckPermissions(String? x) => (x == null)
      ? _attributes.remove(kBackgroundCheckPermissions)
      : _attributes[kBackgroundCheckPermissions] = x;

  ///
  /// pass `null` to remove key from attributes
  set commentPermissions(String? x) => (x == null)
      ? _attributes.remove(kCommentPermissions)
      : _attributes[kCommentPermissions] = x;

  /// A array of hashes that maps an item title substring matcher to a color:
  ///
  /// [{ name: "Announcements", color: "#FFFFFF" }]
  ///
  /// Valid substring matchers are any string that could be used as an item title.
  ///
  /// A color is the hexadecimal value of a valid color e.g. #FFFFFF
  /// Valid colors values are #e8f6df, #e0f7ff, #e6e2fd, #ffe0e8, #ffedd1, #cfcfcf, #eaebeb, and #ffffff
  ///
  /// pass `null` to remove key from attributes
  set customItemTypes(String? x) => (x == null)
      ? _attributes.remove(kCustomItemTypes)
      : _attributes[kCustomItemTypes] = x;

  ///
  /// pass `null` to remove key from attributes
  set frequency(String? x) => (x == null)
      ? _attributes.remove(kFrequency)
      : _attributes[kFrequency] = x;

  ///
  /// pass `null` to remove key from attributes
  set lastPlanFrom(String? x) => (x == null)
      ? _attributes.remove(kLastPlanFrom)
      : _attributes[kLastPlanFrom] = x;

  /// An array of hashes that maps an item type to a color:
  ///
  /// [{ name: "Header", color: "#FFFFFF" }]
  ///
  /// Valid names are Header, Song, and Media.
  ///
  /// A color is the hexadecimal value of a valid color e.g. #FFFFFF
  /// Valid colors values are #e8f6df, #e0f7ff, #e6e2fd, #ffe0e8, #ffedd1, #cfcfcf, #eaebeb, and #ffffff
  ///
  /// pass `null` to remove key from attributes
  set standardItemTypes(String? x) => (x == null)
      ? _attributes.remove(kStandardItemTypes)
      : _attributes[kStandardItemTypes] = x;

  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set parentId(String? x) =>
      (x == null) ? _attributes.remove(kParentId) : _attributes[kParentId] = x;
  String get parentId => _attributes[kParentId] ?? '';

  // typed getters for each relationship

  List<PcoServicesTimePreferenceOption> get includedTimePreferenceOptions =>
      (relationships['time_preference_options'] as List?)
          ?.cast<PcoServicesTimePreferenceOption>() ??
      [];

  // Class Constructors
  PcoServicesServiceType.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoServicesServiceType.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesServiceType] object using this endpoint: `https://api.planningcenteronline.com/services/v2/service_types`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `isAttachmentTypesEnabled`, `backgroundCheckPermissions`, `commentPermissions`, `customItemTypes`, `frequency`, `lastPlanFrom`, `name`, `parentId`, `sequence`, `standardItemTypes`
  /// - FIELDS USED WHEN UPDATING: `isAttachmentTypesEnabled`, `backgroundCheckPermissions`, `commentPermissions`, `customItemTypes`, `frequency`, `lastPlanFrom`, `name`, `parentId`, `sequence`, `standardItemTypes`
  factory PcoServicesServiceType(
      {String? id,
      DateTime? archivedAt,
      DateTime? createdAt,
      DateTime? deletedAt,
      String? name,
      int? sequence,
      DateTime? updatedAt,
      bool? isAttachmentTypesEnabled,
      String? backgroundCheckPermissions,
      String? commentPermissions,
      String? customItemTypes,
      String? frequency,
      String? lastPlanFrom,
      String? permissions,
      String? standardItemTypes,
      String? parentId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesServiceType.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/service_types';
    if (archivedAt != null)
      obj._attributes['archived_at'] = archivedAt.toIso8601String();
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (deletedAt != null)
      obj._attributes['deleted_at'] = deletedAt.toIso8601String();
    if (name != null) obj._attributes['name'] = name;
    if (sequence != null) obj._attributes['sequence'] = sequence;
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (isAttachmentTypesEnabled != null)
      obj._attributes['attachment_types_enabled'] = isAttachmentTypesEnabled;
    if (backgroundCheckPermissions != null)
      obj._attributes['background_check_permissions'] =
          backgroundCheckPermissions;
    if (commentPermissions != null)
      obj._attributes['comment_permissions'] = commentPermissions;
    if (customItemTypes != null)
      obj._attributes['custom_item_types'] = customItemTypes;
    if (frequency != null) obj._attributes['frequency'] = frequency;
    if (lastPlanFrom != null) obj._attributes['last_plan_from'] = lastPlanFrom;
    if (permissions != null) obj._attributes['permissions'] = permissions;
    if (standardItemTypes != null)
      obj._attributes['standard_item_types'] = standardItemTypes;
    if (parentId != null) obj._attributes['parent_id'] = parentId;

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

  /// Will get a collection of [PcoServicesServiceType] objects (expecting many)
  /// using a path like this: `/services/v2/service_types`
  ///
  /// Available Query Filters:
  /// - `no_parent`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesServiceType>> get({
    String? id,
    PcoServicesServiceTypeQuery? query,
    bool includeTimePreferenceOptions = false,
  }) async {
    query ??= PcoServicesServiceTypeQuery();

    if (includeTimePreferenceOptions)
      query.include.add('time_preference_options');
    var url = '/services/v2/service_types';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesServiceType>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesServiceType] objects (expecting many)
  /// using a path like this: `/services/v2/folders/$folderId/service_types`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesServiceType>> getFromFolder(
    String folderId, {
    String? id,
    PcoServicesServiceTypeQuery? query,
    bool includeTimePreferenceOptions = false,
  }) async {
    query ??= PcoServicesServiceTypeQuery();

    if (includeTimePreferenceOptions)
      query.include.add('time_preference_options');
    var url = '/services/v2/folders/$folderId/service_types';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesServiceType>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesServiceType] objects (expecting one)
  /// using a path like this: `/services/v2/series/$seriesId/plans/$planId/live/$liveId/service_type`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesServiceType>>
      getFromSeriesAndPlanAndLive(
    String seriesId,
    String planId,
    String liveId, {
    PcoServicesServiceTypeQuery? query,
    bool includeTimePreferenceOptions = false,
  }) async {
    query ??= PcoServicesServiceTypeQuery();

    if (includeTimePreferenceOptions)
      query.include.add('time_preference_options');
    var url =
        '/services/v2/series/$seriesId/plans/$planId/live/$liveId/service_type';

    return PcoCollection.fromApiCall<PcoServicesServiceType>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesServiceType] objects (expecting one)
  /// using a path like this: `/services/v2/teams/$teamId/service_type`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesServiceType>> getFromTeam(
    String teamId, {
    PcoServicesServiceTypeQuery? query,
    bool includeTimePreferenceOptions = false,
  }) async {
    query ??= PcoServicesServiceTypeQuery();

    if (includeTimePreferenceOptions)
      query.include.add('time_preference_options');
    var url = '/services/v2/teams/$teamId/service_type';

    return PcoCollection.fromApiCall<PcoServicesServiceType>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/attachments`
  Future<PcoCollection<PcoServicesAttachment>> getAttachments(
      {PcoServicesAttachmentQuery? query}) async {
    query ??= PcoServicesAttachmentQuery();
    var url = '$apiEndpoint/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesItemNoteCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories`
  Future<PcoCollection<PcoServicesItemNoteCategory>> getItemNoteCategories(
      {PcoServicesItemNoteCategoryQuery? query}) async {
    query ??= PcoServicesItemNoteCategoryQuery();
    var url = '$apiEndpoint/item_note_categories';
    return PcoCollection.fromApiCall<PcoServicesItemNoteCategory>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesLayout] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/layouts`
  Future<PcoCollection<PcoServicesLayout>> getLayouts(
      {PcoServicesLayoutQuery? query}) async {
    query ??= PcoServicesLayoutQuery();
    var url = '$apiEndpoint/layouts';
    return PcoCollection.fromApiCall<PcoServicesLayout>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesLiveController] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/live_controllers`
  Future<PcoCollection<PcoServicesLiveController>> getLiveControllers(
      {PcoServicesLiveControllerQuery? query}) async {
    query ??= PcoServicesLiveControllerQuery();
    var url = '$apiEndpoint/live_controllers';
    return PcoCollection.fromApiCall<PcoServicesLiveController>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanNoteCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories`
  Future<PcoCollection<PcoServicesPlanNoteCategory>> getPlanNoteCategories(
      {PcoServicesPlanNoteCategoryQuery? query}) async {
    query ??= PcoServicesPlanNoteCategoryQuery();
    var url = '$apiEndpoint/plan_note_categories';
    return PcoCollection.fromApiCall<PcoServicesPlanNoteCategory>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanTemplate] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates`
  Future<PcoCollection<PcoServicesPlanTemplate>> getPlanTemplates(
      {PcoServicesPlanTemplateQuery? query}) async {
    query ??= PcoServicesPlanTemplateQuery();
    var url = '$apiEndpoint/plan_templates';
    return PcoCollection.fromApiCall<PcoServicesPlanTemplate>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_times`
  ///
  /// Available Query Filters:
  /// - `future`
  /// - `named`
  /// - `past`
  Future<PcoCollection<PcoServicesPlanTime>> getPlanTimes(
      {PcoServicesPlanTimeQuery? query}) async {
    query ??= PcoServicesPlanTimeQuery();
    var url = '$apiEndpoint/plan_times';
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans`
  ///
  /// Available Query Filters:
  /// - `after`
  /// filter to plans with a time beginning after the `after` parameter
  ///
  /// - `before`
  /// filter to plans with a time beginning before the `before` parameter
  ///
  /// - `future`
  /// - `no_dates`
  /// - `past`
  Future<PcoCollection<PcoServicesPlan>> getPlans(
      {PcoServicesPlanQuery? query}) async {
    query ??= PcoServicesPlanQuery();
    var url = '$apiEndpoint/plans';
    return PcoCollection.fromApiCall<PcoServicesPlan>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPublicView] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/public_view`
  Future<PcoCollection<PcoServicesPublicView>> getPublicView(
      {PcoServicesPublicViewQuery? query}) async {
    query ??= PcoServicesPublicViewQuery();
    var url = '$apiEndpoint/public_view';
    return PcoCollection.fromApiCall<PcoServicesPublicView>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeamPosition] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/team_positions`
  Future<PcoCollection<PcoServicesTeamPosition>> getTeamPositions(
      {PcoServicesTeamPositionQuery? query}) async {
    query ??= PcoServicesTeamPositionQuery();
    var url = '$apiEndpoint/team_positions';
    return PcoCollection.fromApiCall<PcoServicesTeamPosition>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/teams`
  Future<PcoCollection<PcoServicesTeam>> getTeams(
      {PcoServicesTeamQuery? query}) async {
    query ??= PcoServicesTeamQuery();
    var url = '$apiEndpoint/teams';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTimePreferenceOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options`
  Future<PcoCollection<PcoServicesTimePreferenceOption>>
      getTimePreferenceOptions(
          {PcoServicesTimePreferenceOptionQuery? query}) async {
    query ??= PcoServicesTimePreferenceOptionQuery();
    var url = '$apiEndpoint/time_preference_options';
    return PcoCollection.fromApiCall<PcoServicesTimePreferenceOption>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/unscoped_plans`
  ///
  /// Available Query Filters:
  /// - `deleted`
  Future<PcoCollection<PcoServicesPlan>> getUnscopedPlans(
      {PcoServicesPlanQuery? query}) async {
    query ??= PcoServicesPlanQuery();
    var url = '$apiEndpoint/unscoped_plans';
    return PcoCollection.fromApiCall<PcoServicesPlan>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `create_plans`
  ///
  /// Create multiple plans
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/create_plans`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// This action provides the abillity to create multiple plans with a single API request.
  ///
  /// Accepted attributes:
  ///
  /// - `count` (Integer) The number of plans to create. (max 12, default 1)
  ///
  /// - `copy_items` (Boolean) Copy Items from another plan. (default false)
  ///
  /// - `copy_people` (Boolean) Copy People from another plan. (default false)
  ///
  /// - `team_ids` (Array[Integer]) IDs of teams to copy people from when `copy_people` is set to true.
  ///   If nil, `copy_people` copies from all teams. (default nil)
  ///
  /// - `copy_notes` (Boolean) Copy Notes from another plan. (default false)
  ///
  /// - `as_template` (Boolean) Create the new plans as templates (default false)
  ///
  /// - `base_date` (ISO 8601 Date) The date from which to start building the plans. (default false)
  ///
  /// Accepted Relationships
  ///
  /// - `plan` (optional) The plan from which to copy times, items, people, and notes
  ///
  /// - `template` (optional) Collection of templates from which to copy items, people, and notes (not times) for each new plan.
  ///   Order dependant. Takes precedence over `plan`.
  Future<PlanningCenterApiResponse> createPlans(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/create_plans';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
