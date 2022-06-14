/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:14.847411
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `time_preference_options`: include associated time_preference_options
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
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
/// - `servicetype-live-service_type`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/service_type
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

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  /// pass `null` to remove key from attributes
  set sequence(int? x) =>
      (x == null) ? _attributes.remove(kSequence) : _attributes[kSequence] = x;

  /// pass `null` to remove key from attributes
  set isAttachmentTypesEnabled(bool? x) => (x == null)
      ? _attributes.remove(kAttachmentTypesEnabled)
      : _attributes[kAttachmentTypesEnabled] = x;

  /// pass `null` to remove key from attributes
  set backgroundCheckPermissions(String? x) => (x == null)
      ? _attributes.remove(kBackgroundCheckPermissions)
      : _attributes[kBackgroundCheckPermissions] = x;

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

  /// pass `null` to remove key from attributes
  set customItemTypes(String? x) => (x == null)
      ? _attributes.remove(kCustomItemTypes)
      : _attributes[kCustomItemTypes] = x;

  /// pass `null` to remove key from attributes
  set frequency(String? x) => (x == null)
      ? _attributes.remove(kFrequency)
      : _attributes[kFrequency] = x;

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

  /// pass `null` to remove key from attributes
  set standardItemTypes(String? x) => (x == null)
      ? _attributes.remove(kStandardItemTypes)
      : _attributes[kStandardItemTypes] = x;

  // additional setters / getters for create/update attributes

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
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesServiceType.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesServiceType] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/service_types`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesServiceType(
      {bool? isAttachmentTypesEnabled,
      String? backgroundCheckPermissions,
      String? commentPermissions,
      String? customItemTypes,
      String? frequency,
      String? lastPlanFrom,
      String? name,
      int? sequence,
      String? standardItemTypes}) {
    var obj = PcoServicesServiceType.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/service_types';
    if (isAttachmentTypesEnabled != null)
      obj.isAttachmentTypesEnabled = isAttachmentTypesEnabled;
    if (backgroundCheckPermissions != null)
      obj.backgroundCheckPermissions = backgroundCheckPermissions;
    if (commentPermissions != null) obj.commentPermissions = commentPermissions;
    if (customItemTypes != null) obj.customItemTypes = customItemTypes;
    if (frequency != null) obj.frequency = frequency;
    if (lastPlanFrom != null) obj.lastPlanFrom = lastPlanFrom;
    if (name != null) obj.name = name;
    if (sequence != null) obj.sequence = sequence;
    if (standardItemTypes != null) obj.standardItemTypes = standardItemTypes;
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
  static Future<PcoCollection<PcoServicesServiceType>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeTimePreferenceOptions = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeTimePreferenceOptions)
      query.include.add('time_preference_options');
    var url = '/services/v2/service_types';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesServiceType>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesServiceType] objects (expecting many)
  /// using a path like this: `/services/v2/folders/$folderId/service_types`
  static Future<PcoCollection<PcoServicesServiceType>> getFromFolder(
    String folderId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeTimePreferenceOptions = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeTimePreferenceOptions)
      query.include.add('time_preference_options');
    var url = '/services/v2/folders/$folderId/service_types';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesServiceType>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesServiceType] objects (expecting one)
  /// using a path like this: `/services/v2/people/$personId/recent_plans/$recentPlanId/live/$liveId/service_type`
  static Future<PcoCollection<PcoServicesServiceType>>
      getFromPersonAndRecentPlanAndLive(
    String personId,
    String recentPlanId,
    String liveId, {
    PlanningCenterApiQuery? query,
    bool includeTimePreferenceOptions = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeTimePreferenceOptions)
      query.include.add('time_preference_options');
    var url =
        '/services/v2/people/$personId/recent_plans/$recentPlanId/live/$liveId/service_type';

    return PcoCollection.fromApiCall<PcoServicesServiceType>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesServiceType] objects (expecting one)
  /// using a path like this: `/services/v2/teams/$teamId/service_type`
  static Future<PcoCollection<PcoServicesServiceType>> getFromTeam(
    String teamId, {
    PlanningCenterApiQuery? query,
    bool includeTimePreferenceOptions = false,
  }) async {
    query ??= PlanningCenterApiQuery();

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
  Future<PcoCollection<PcoServicesAttachment>> getAttachments({
    PlanningCenterApiQuery? query,
    bool includeZooms = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeZooms) query.include.add('zooms');
    var url = '$apiEndpoint/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesItemNoteCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories`
  Future<PcoCollection<PcoServicesItemNoteCategory>> getItemNoteCategories({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/item_note_categories';
    return PcoCollection.fromApiCall<PcoServicesItemNoteCategory>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesLayout] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/layouts`
  Future<PcoCollection<PcoServicesLayout>> getLayouts({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/layouts';
    return PcoCollection.fromApiCall<PcoServicesLayout>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesLiveController] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/live_controllers`
  Future<PcoCollection<PcoServicesLiveController>> getLiveControllers({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/live_controllers';
    return PcoCollection.fromApiCall<PcoServicesLiveController>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanNoteCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories`
  Future<PcoCollection<PcoServicesPlanNoteCategory>> getPlanNoteCategories({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/plan_note_categories';
    return PcoCollection.fromApiCall<PcoServicesPlanNoteCategory>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanTemplate] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates`
  Future<PcoCollection<PcoServicesPlanTemplate>> getPlanTemplates({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

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
  Future<PcoCollection<PcoServicesPlanTime>> getPlanTimes({
    PlanningCenterApiQuery? query,
    bool includeSplitTeamRehearsalAssignments = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeSplitTeamRehearsalAssignments)
      query.include.add('split_team_rehearsal_assignments');
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
  Future<PcoCollection<PcoServicesPlan>> getPlans({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeContributors = false,
    bool includeMySchedules = false,
    bool includePlanTimes = false,
    bool includeSeries = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoServicesServiceType.canInclude);
    if (includeContributors) query.include.add('contributors');
    if (includeMySchedules) query.include.add('my_schedules');
    if (includePlanTimes) query.include.add('plan_times');
    if (includeSeries) query.include.add('series');
    var url = '$apiEndpoint/plans';
    return PcoCollection.fromApiCall<PcoServicesPlan>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPublicView] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/public_view`
  Future<PcoCollection<PcoServicesPublicView>> getPublicView({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/public_view';
    return PcoCollection.fromApiCall<PcoServicesPublicView>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeamPosition] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/team_positions`
  Future<PcoCollection<PcoServicesTeamPosition>> getTeamPositions({
    PlanningCenterApiQuery? query,
    bool includeTeam = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeTeam) query.include.add('team');
    var url = '$apiEndpoint/team_positions';
    return PcoCollection.fromApiCall<PcoServicesTeamPosition>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/teams`
  Future<PcoCollection<PcoServicesTeam>> getTeams({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includePeople = false,
    bool includePersonTeamPositionAssignments = false,
    bool includeServiceType = false,
    bool includeTeamLeaders = false,
    bool includeTeamPositions = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoServicesServiceType.canInclude);
    if (includePeople) query.include.add('people');
    if (includePersonTeamPositionAssignments)
      query.include.add('person_team_position_assignments');
    if (includeServiceType) query.include.add('service_type');
    if (includeTeamLeaders) query.include.add('team_leaders');
    if (includeTeamPositions) query.include.add('team_positions');
    var url = '$apiEndpoint/teams';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTimePreferenceOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options`
  Future<PcoCollection<PcoServicesTimePreferenceOption>>
      getTimePreferenceOptions({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/time_preference_options';
    return PcoCollection.fromApiCall<PcoServicesTimePreferenceOption>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/unscoped_plans`
  ///
  /// Available Query Filters:
  /// - `deleted`
  Future<PcoCollection<PcoServicesPlan>> getUnscopedPlans({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeContributors = false,
    bool includeMySchedules = false,
    bool includePlanTimes = false,
    bool includeSeries = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoServicesServiceType.canInclude);
    if (includeContributors) query.include.add('contributors');
    if (includeMySchedules) query.include.add('my_schedules');
    if (includePlanTimes) query.include.add('plan_times');
    if (includeSeries) query.include.add('series');
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
}
