/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.489680
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `firstName` -> `?order=first_name`
/// - `lastName` -> `?order=last_name`
/// - `updatedAt` -> `?order=updated_at`
enum PcoServicesPersonOrder { createdAt, firstName, lastName, updatedAt }

/// Filtering is not allowed when requesting this object.
enum PcoServicesPersonFilter { none }

/// Creates a [PcoServicesPersonQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeTeamLeaders`: include associated team_leaders
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoServicesPersonQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoServicesPerson] objects can be requested with one or more of the following criteria:
/// - `whereAssignedToRehearsalTeam`: query on a specific assigned_to_rehearsal_team, example: ?where[assigned_to_rehearsal_team]=true
/// - `whereLegacyId`: query on a specific legacy_id, example: ?where[legacy_id]=primary_key
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
/// - `PcoServicesPersonOrder.createdAt` : will order by `created_at`
/// - `PcoServicesPersonOrder.firstName` : will order by `first_name`
/// - `PcoServicesPersonOrder.lastName` : will order by `last_name`
/// - `PcoServicesPersonOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesPersonQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesPersonOrder, String> _orderMap = {
    PcoServicesPersonOrder.createdAt: 'created_at',
    PcoServicesPersonOrder.firstName: 'first_name',
    PcoServicesPersonOrder.lastName: 'last_name',
    PcoServicesPersonOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoServicesPersonOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesPersonFilter, String> _filterMap = {};
  static String filterString(PcoServicesPersonFilter filter) =>
      _filterMap[filter]!;

  PcoServicesPersonQuery({
    /// include associated team_leaders
    /// when true, adds `?include=team_leaders` to url
    bool includeTeamLeaders = false,

    /// Query by `assigned_to_rehearsal_team`
    /// query on a specific assigned_to_rehearsal_team, url example: ?where[assigned_to_rehearsal_team]=true
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereAssignedToRehearsalTeam,

    /// Query by `legacy_id`
    /// query on a specific legacy_id, url example: ?where[legacy_id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereLegacyId,
    PcoServicesPersonOrder? orderBy,

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
    if (includeTeamLeaders) include.add('team_leaders');

    if (whereAssignedToRehearsalTeam != null)
      where.add(PlanningCenterApiWhere.parse(
          'assigned_to_rehearsal_team', whereAssignedToRehearsalTeam));
    if (whereLegacyId != null)
      where.add(PlanningCenterApiWhere.parse('legacy_id', whereLegacyId));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Services Person Object
///
/// - Application:        services
/// - Id:                 person
/// - Type:               Person
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesPerson.fromJson()` constructor.
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
/// A person added to Planning Center Services.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `photoUrl` (ro) -> PCO: `photo_url`
/// - `photoThumbnailUrl` (ro) -> PCO: `photo_thumbnail_url`
/// - `preferredApp` (rw) -> PCO: `preferred_app`
/// - `isAssignedToRehearsalTeam` (ro) -> PCO: `assigned_to_rehearsal_team`
/// - `archivedAt` (ro) -> PCO: `archived_at`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `firstName` (ro) -> PCO: `first_name`
/// - `lastName` (ro) -> PCO: `last_name`
/// - `namePrefix` (ro) -> PCO: `name_prefix`
/// - `nameSuffix` (ro) -> PCO: `name_suffix`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `facebookId` (ro) -> PCO: `facebook_id`
/// - `legacyId` (ro) -> PCO: `legacy_id`
/// - `fullName` (ro) -> PCO: `full_name`
/// - `maxPermissions` (ro) -> PCO: `max_permissions`
/// - `permissions` (rw) -> PCO: `permissions`
/// - `status` (ro) -> PCO: `status`
/// - `anniversary` (ro) -> PCO: `anniversary`
/// - `birthdate` (ro) -> PCO: `birthdate`
/// - `givenName` (ro) -> PCO: `given_name`
/// - `middleName` (ro) -> PCO: `middle_name`
/// - `nickname` (ro) -> PCO: `nickname`
/// - `isAccessMediaAttachments` (rw) -> PCO: `access_media_attachments`
/// - `isAccessPlanAttachments` (rw) -> PCO: `access_plan_attachments`
/// - `isAccessSongAttachments` (rw) -> PCO: `access_song_attachments`
/// - `isArchived` (ro) -> PCO: `archived`
/// - `isSiteAdministrator` (ro) -> PCO: `site_administrator`
/// - `loggedInAt` (ro) -> PCO: `logged_in_at`
/// - `notes` (ro) -> PCO: `notes`
/// - `isPassedBackgroundCheck` (ro) -> PCO: `passed_background_check`
/// - `icalCode` (ro) -> PCO: `ical_code`
/// - `preferredMaxPlansPerDay` (ro) -> PCO: `preferred_max_plans_per_day`
/// - `preferredMaxPlansPerMonth` (ro) -> PCO: `preferred_max_plans_per_month`
/// - `isPraiseChartsEnabled` (ro) -> PCO: `praise_charts_enabled`
/// - `meTab` (ro) -> PCO: `me_tab`
/// - `plansTab` (ro) -> PCO: `plans_tab`
/// - `songsTab` (ro) -> PCO: `songs_tab`
/// - `mediaTab` (ro) -> PCO: `media_tab`
/// - `peopleTab` (ro) -> PCO: `people_tab`
/// - `isCanEditAllPeople` (ro) -> PCO: `can_edit_all_people`
/// - `isCanViewAllPeople` (ro) -> PCO: `can_view_all_people`
/// - `onboardings` (rw) -> PCO: `onboardings`
/// - `currentFolderId` (wo) -> PCO: `current_folder_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `availablesignup-person-available_signups`: https://api.planningcenteronline.com/services/v2/people/1/available_signups
/// - `blockout-person-blockouts`: https://api.planningcenteronline.com/services/v2/people/1/blockouts
/// - `personteampositionassignment-person-person_team_position_assignments`: https://api.planningcenteronline.com/services/v2/people/1/person_team_position_assignments
/// - `planperson-person-plan_people`: https://api.planningcenteronline.com/services/v2/people/1/plan_people
/// - `schedule-person-schedules`: https://api.planningcenteronline.com/services/v2/people/1/schedules
/// - `schedulingpreference-person-scheduling_preferences`: https://api.planningcenteronline.com/services/v2/people/1/scheduling_preferences
/// - `tag-person-tags`: https://api.planningcenteronline.com/services/v2/people/1/tags
/// - `teamleader-person-team_leaders`: https://api.planningcenteronline.com/services/v2/people/1/team_leaders
/// - `textsetting-person-text_settings`: https://api.planningcenteronline.com/services/v2/people/1/text_settings
///
/// Inbound Edges:
/// - `person-live-controller`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/controller
/// - `person-organization-people`: https://api.planningcenteronline.com/services/v2/people
/// - `person-personteampositionassignment-person`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/person
/// - `person-planperson-person`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/person
/// - `person-schedule-respond_to`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/respond_to
/// - `person-teamleader-people`: https://api.planningcenteronline.com/services/v2/people/1/team_leaders/1/people
/// - `person-team-people`: https://api.planningcenteronline.com/services/v2/teams/1/people
///
/// Actions:
/// - `assign_tags`: https://api.planningcenteronline.com/services/v2/people/1/assign_tags
/// - `collapse_service_types`: https://api.planningcenteronline.com/services/v2/people/1/collapse_service_types
/// - `expand_service_types`: https://api.planningcenteronline.com/services/v2/people/1/expand_service_types
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Person",
///   "id": "1",
///   "attributes": {
///     "photo_url": "string",
///     "photo_thumbnail_url": "string",
///     "preferred_app": "string",
///     "assigned_to_rehearsal_team": true,
///     "archived_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z",
///     "first_name": "string",
///     "last_name": "string",
///     "name_prefix": "string",
///     "name_suffix": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "facebook_id": "primary_key",
///     "legacy_id": "primary_key",
///     "full_name": "string",
///     "max_permissions": "string",
///     "permissions": "string",
///     "status": "string",
///     "anniversary": "2000-01-01T12:00:00Z",
///     "birthdate": "2000-01-01T12:00:00Z",
///     "given_name": "string",
///     "middle_name": "string",
///     "nickname": "string",
///     "access_media_attachments": true,
///     "access_plan_attachments": true,
///     "access_song_attachments": true,
///     "archived": true,
///     "site_administrator": true,
///     "logged_in_at": "2000-01-01T12:00:00Z",
///     "notes": "string",
///     "passed_background_check": true,
///     "ical_code": "string",
///     "preferred_max_plans_per_day": 1,
///     "preferred_max_plans_per_month": 1,
///     "praise_charts_enabled": true,
///     "me_tab": "string",
///     "plans_tab": "string",
///     "songs_tab": "string",
///     "media_tab": "string",
///     "people_tab": "string",
///     "can_edit_all_people": true,
///     "can_view_all_people": true,
///     "onboardings": []
///   },
///   "relationships": {
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "updated_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "current_folder": {
///       "data": {
///         "type": "Folder",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesPerson extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Person';
  static const String kTypeId = 'person';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/people';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `team_leaders`: include associated team_leaders
  static List<String> get canInclude => ['team_leaders'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `assigned_to_rehearsal_team`: (URLParameter), query on a specific assigned_to_rehearsal_team, example: ?where[assigned_to_rehearsal_team]=true
  /// - `legacy_id`: (URLParameter), query on a specific legacy_id, example: ?where[legacy_id]=primary_key
  static List<String> get canQuery =>
      ['assigned_to_rehearsal_team', 'legacy_id'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy =>
      ['created_at', 'first_name', 'last_name', 'updated_at'];

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
  static const kPhotoUrl = 'photo_url';
  static const kPhotoThumbnailUrl = 'photo_thumbnail_url';
  static const kPreferredApp = 'preferred_app';
  static const kAssignedToRehearsalTeam = 'assigned_to_rehearsal_team';
  static const kArchivedAt = 'archived_at';
  static const kCreatedAt = 'created_at';
  static const kFirstName = 'first_name';
  static const kLastName = 'last_name';
  static const kNamePrefix = 'name_prefix';
  static const kNameSuffix = 'name_suffix';
  static const kUpdatedAt = 'updated_at';
  static const kFacebookId = 'facebook_id';
  static const kLegacyId = 'legacy_id';
  static const kFullName = 'full_name';
  static const kMaxPermissions = 'max_permissions';
  static const kPermissions = 'permissions';
  static const kStatus = 'status';
  static const kAnniversary = 'anniversary';
  static const kBirthdate = 'birthdate';
  static const kGivenName = 'given_name';
  static const kMiddleName = 'middle_name';
  static const kNickname = 'nickname';
  static const kAccessMediaAttachments = 'access_media_attachments';
  static const kAccessPlanAttachments = 'access_plan_attachments';
  static const kAccessSongAttachments = 'access_song_attachments';
  static const kArchived = 'archived';
  static const kSiteAdministrator = 'site_administrator';
  static const kLoggedInAt = 'logged_in_at';
  static const kNotes = 'notes';
  static const kPassedBackgroundCheck = 'passed_background_check';
  static const kIcalCode = 'ical_code';
  static const kPreferredMaxPlansPerDay = 'preferred_max_plans_per_day';
  static const kPreferredMaxPlansPerMonth = 'preferred_max_plans_per_month';
  static const kPraiseChartsEnabled = 'praise_charts_enabled';
  static const kMeTab = 'me_tab';
  static const kPlansTab = 'plans_tab';
  static const kSongsTab = 'songs_tab';
  static const kMediaTab = 'media_tab';
  static const kPeopleTab = 'people_tab';
  static const kCanEditAllPeople = 'can_edit_all_people';
  static const kCanViewAllPeople = 'can_view_all_people';
  static const kOnboardings = 'onboardings';
  static const kCurrentFolderId = 'current_folder_id';

  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [
        'preferred_app',
        'onboardings',
        'access_media_attachments',
        'access_plan_attachments',
        'access_song_attachments',
        'current_folder_id',
        'permissions'
      ];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  String get photoUrl => _attributes[kPhotoUrl] ?? '';
  String get photoThumbnailUrl => _attributes[kPhotoThumbnailUrl] ?? '';
  String get preferredApp => _attributes[kPreferredApp] ?? '';
  bool get isAssignedToRehearsalTeam =>
      _attributes[kAssignedToRehearsalTeam] == true;
  DateTime get archivedAt => DateTime.parse(_attributes[kArchivedAt] ?? '');
  String get firstName => _attributes[kFirstName] ?? '';
  String get lastName => _attributes[kLastName] ?? '';
  String get namePrefix => _attributes[kNamePrefix] ?? '';
  String get nameSuffix => _attributes[kNameSuffix] ?? '';
  String get facebookId => _attributes[kFacebookId] ?? '';
  String get legacyId => _attributes[kLegacyId] ?? '';
  String get fullName => _attributes[kFullName] ?? '';
  String get maxPermissions => _attributes[kMaxPermissions] ?? '';
  String get permissions => _attributes[kPermissions] ?? '';
  String get status => _attributes[kStatus] ?? '';
  DateTime get anniversary => DateTime.parse(_attributes[kAnniversary] ?? '');
  DateTime get birthdate => DateTime.parse(_attributes[kBirthdate] ?? '');
  String get givenName => _attributes[kGivenName] ?? '';
  String get middleName => _attributes[kMiddleName] ?? '';
  String get nickname => _attributes[kNickname] ?? '';
  bool get isAccessMediaAttachments =>
      _attributes[kAccessMediaAttachments] == true;
  bool get isAccessPlanAttachments =>
      _attributes[kAccessPlanAttachments] == true;
  bool get isAccessSongAttachments =>
      _attributes[kAccessSongAttachments] == true;
  bool get isArchived => _attributes[kArchived] == true;
  bool get isSiteAdministrator => _attributes[kSiteAdministrator] == true;
  DateTime get loggedInAt => DateTime.parse(_attributes[kLoggedInAt] ?? '');
  String get notes => _attributes[kNotes] ?? '';
  bool get isPassedBackgroundCheck =>
      _attributes[kPassedBackgroundCheck] == true;
  String get icalCode => _attributes[kIcalCode] ?? '';
  int get preferredMaxPlansPerDay => _attributes[kPreferredMaxPlansPerDay] ?? 0;
  int get preferredMaxPlansPerMonth =>
      _attributes[kPreferredMaxPlansPerMonth] ?? 0;
  bool get isPraiseChartsEnabled => _attributes[kPraiseChartsEnabled] == true;
  String get meTab => _attributes[kMeTab] ?? '';
  String get plansTab => _attributes[kPlansTab] ?? '';
  String get songsTab => _attributes[kSongsTab] ?? '';
  String get mediaTab => _attributes[kMediaTab] ?? '';
  String get peopleTab => _attributes[kPeopleTab] ?? '';
  bool get isCanEditAllPeople => _attributes[kCanEditAllPeople] == true;
  bool get isCanViewAllPeople => _attributes[kCanViewAllPeople] == true;
  List get onboardings => _attributes[kOnboardings] ?? [];

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set preferredApp(String? x) => (x == null)
      ? _attributes.remove(kPreferredApp)
      : _attributes[kPreferredApp] = x;

  ///
  /// pass `null` to remove key from attributes
  set permissions(String? x) => (x == null)
      ? _attributes.remove(kPermissions)
      : _attributes[kPermissions] = x;

  ///
  /// pass `null` to remove key from attributes
  set isAccessMediaAttachments(bool? x) => (x == null)
      ? _attributes.remove(kAccessMediaAttachments)
      : _attributes[kAccessMediaAttachments] = x;

  ///
  /// pass `null` to remove key from attributes
  set isAccessPlanAttachments(bool? x) => (x == null)
      ? _attributes.remove(kAccessPlanAttachments)
      : _attributes[kAccessPlanAttachments] = x;

  ///
  /// pass `null` to remove key from attributes
  set isAccessSongAttachments(bool? x) => (x == null)
      ? _attributes.remove(kAccessSongAttachments)
      : _attributes[kAccessSongAttachments] = x;

  ///
  /// pass `null` to remove key from attributes
  set onboardings(List? x) => (x == null)
      ? _attributes.remove(kOnboardings)
      : _attributes[kOnboardings] = x;

  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set currentFolderId(String? x) => (x == null)
      ? _attributes.remove(kCurrentFolderId)
      : _attributes[kCurrentFolderId] = x;
  String get currentFolderId => _attributes[kCurrentFolderId] ?? '';

  // typed getters for each relationship

  List<PcoServicesTeamLeader> get includedTeamLeaders =>
      (relationships['team_leaders'] as List?)?.cast<PcoServicesTeamLeader>() ??
      [];

  // Class Constructors
  PcoServicesPerson.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesPerson.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesPerson] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: `preferredApp`, `onboardings`, `isAccessMediaAttachments`, `isAccessPlanAttachments`, `isAccessSongAttachments`, `currentFolderId`, `permissions`
  factory PcoServicesPerson(
      {String? id,
      String? photoUrl,
      String? photoThumbnailUrl,
      String? preferredApp,
      bool? isAssignedToRehearsalTeam,
      DateTime? archivedAt,
      DateTime? createdAt,
      String? firstName,
      String? lastName,
      String? namePrefix,
      String? nameSuffix,
      DateTime? updatedAt,
      String? facebookId,
      String? legacyId,
      String? fullName,
      String? maxPermissions,
      String? permissions,
      String? status,
      DateTime? anniversary,
      DateTime? birthdate,
      String? givenName,
      String? middleName,
      String? nickname,
      bool? isAccessMediaAttachments,
      bool? isAccessPlanAttachments,
      bool? isAccessSongAttachments,
      bool? isArchived,
      bool? isSiteAdministrator,
      DateTime? loggedInAt,
      String? notes,
      bool? isPassedBackgroundCheck,
      String? icalCode,
      int? preferredMaxPlansPerDay,
      int? preferredMaxPlansPerMonth,
      bool? isPraiseChartsEnabled,
      String? meTab,
      String? plansTab,
      String? songsTab,
      String? mediaTab,
      String? peopleTab,
      bool? isCanEditAllPeople,
      bool? isCanViewAllPeople,
      List? onboardings,
      String? currentFolderId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesPerson.empty();
    obj._id = id;
    if (photoUrl != null) obj._attributes['photo_url'] = photoUrl;
    if (photoThumbnailUrl != null)
      obj._attributes['photo_thumbnail_url'] = photoThumbnailUrl;
    if (preferredApp != null) obj._attributes['preferred_app'] = preferredApp;
    if (isAssignedToRehearsalTeam != null)
      obj._attributes['assigned_to_rehearsal_team'] = isAssignedToRehearsalTeam;
    if (archivedAt != null)
      obj._attributes['archived_at'] = archivedAt.toIso8601String();
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (firstName != null) obj._attributes['first_name'] = firstName;
    if (lastName != null) obj._attributes['last_name'] = lastName;
    if (namePrefix != null) obj._attributes['name_prefix'] = namePrefix;
    if (nameSuffix != null) obj._attributes['name_suffix'] = nameSuffix;
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (facebookId != null) obj._attributes['facebook_id'] = facebookId;
    if (legacyId != null) obj._attributes['legacy_id'] = legacyId;
    if (fullName != null) obj._attributes['full_name'] = fullName;
    if (maxPermissions != null)
      obj._attributes['max_permissions'] = maxPermissions;
    if (permissions != null) obj._attributes['permissions'] = permissions;
    if (status != null) obj._attributes['status'] = status;
    if (anniversary != null)
      obj._attributes['anniversary'] = anniversary.toIso8601String();
    if (birthdate != null)
      obj._attributes['birthdate'] = birthdate.toIso8601String();
    if (givenName != null) obj._attributes['given_name'] = givenName;
    if (middleName != null) obj._attributes['middle_name'] = middleName;
    if (nickname != null) obj._attributes['nickname'] = nickname;
    if (isAccessMediaAttachments != null)
      obj._attributes['access_media_attachments'] = isAccessMediaAttachments;
    if (isAccessPlanAttachments != null)
      obj._attributes['access_plan_attachments'] = isAccessPlanAttachments;
    if (isAccessSongAttachments != null)
      obj._attributes['access_song_attachments'] = isAccessSongAttachments;
    if (isArchived != null) obj._attributes['archived'] = isArchived;
    if (isSiteAdministrator != null)
      obj._attributes['site_administrator'] = isSiteAdministrator;
    if (loggedInAt != null)
      obj._attributes['logged_in_at'] = loggedInAt.toIso8601String();
    if (notes != null) obj._attributes['notes'] = notes;
    if (isPassedBackgroundCheck != null)
      obj._attributes['passed_background_check'] = isPassedBackgroundCheck;
    if (icalCode != null) obj._attributes['ical_code'] = icalCode;
    if (preferredMaxPlansPerDay != null)
      obj._attributes['preferred_max_plans_per_day'] = preferredMaxPlansPerDay;
    if (preferredMaxPlansPerMonth != null)
      obj._attributes['preferred_max_plans_per_month'] =
          preferredMaxPlansPerMonth;
    if (isPraiseChartsEnabled != null)
      obj._attributes['praise_charts_enabled'] = isPraiseChartsEnabled;
    if (meTab != null) obj._attributes['me_tab'] = meTab;
    if (plansTab != null) obj._attributes['plans_tab'] = plansTab;
    if (songsTab != null) obj._attributes['songs_tab'] = songsTab;
    if (mediaTab != null) obj._attributes['media_tab'] = mediaTab;
    if (peopleTab != null) obj._attributes['people_tab'] = peopleTab;
    if (isCanEditAllPeople != null)
      obj._attributes['can_edit_all_people'] = isCanEditAllPeople;
    if (isCanViewAllPeople != null)
      obj._attributes['can_view_all_people'] = isCanViewAllPeople;
    if (onboardings != null) obj._attributes['onboardings'] = onboardings;
    if (currentFolderId != null)
      obj._attributes['current_folder_id'] = currentFolderId;

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

  /// Will get a collection of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `/services/v2/people`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPerson>> get({
    String? id,
    PcoServicesPersonQuery? query,
    bool includeTeamLeaders = false,
  }) async {
    query ??= PcoServicesPersonQuery();

    if (includeTeamLeaders) query.include.add('team_leaders');
    var url = '/services/v2/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `/services/v2/series/$seriesId/plans/$planId/live/$liveId/controller`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPerson>>
      getControllerFromSeriesAndPlanAndLive(
    String seriesId,
    String planId,
    String liveId, {
    PcoServicesPersonQuery? query,
    bool includeTeamLeaders = false,
  }) async {
    query ??= PcoServicesPersonQuery();

    if (includeTeamLeaders) query.include.add('team_leaders');
    var url =
        '/services/v2/series/$seriesId/plans/$planId/live/$liveId/controller';

    return PcoCollection.fromApiCall<PcoServicesPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments/$personTeamPositionAssignmentId/person`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPerson>>
      getFromServiceTypeAndTeamPositionAndPersonTeamPositionAssignment(
    String serviceTypeId,
    String teamPositionId,
    String personTeamPositionAssignmentId, {
    PcoServicesPersonQuery? query,
    bool includeTeamLeaders = false,
  }) async {
    query ??= PcoServicesPersonQuery();

    if (includeTeamLeaders) query.include.add('team_leaders');
    var url =
        '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments/$personTeamPositionAssignmentId/person';

    return PcoCollection.fromApiCall<PcoServicesPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `/services/v2/people/$personId/plan_people/$planPersonId/person`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPerson>> getFromPersonAndPlanPerson(
    String personId,
    String planPersonId, {
    PcoServicesPersonQuery? query,
    bool includeTeamLeaders = false,
  }) async {
    query ??= PcoServicesPersonQuery();

    if (includeTeamLeaders) query.include.add('team_leaders');
    var url = '/services/v2/people/$personId/plan_people/$planPersonId/person';

    return PcoCollection.fromApiCall<PcoServicesPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `/services/v2/people/$personId/schedules/$scheduleId/respond_to`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPerson>>
      getRespondToFromPersonAndSchedule(
    String personId,
    String scheduleId, {
    PcoServicesPersonQuery? query,
    bool includeTeamLeaders = false,
  }) async {
    query ??= PcoServicesPersonQuery();

    if (includeTeamLeaders) query.include.add('team_leaders');
    var url = '/services/v2/people/$personId/schedules/$scheduleId/respond_to';

    return PcoCollection.fromApiCall<PcoServicesPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/team_leaders/$teamLeaderId/people`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPerson>> getFromPersonAndTeamLeader(
    String personId,
    String teamLeaderId, {
    String? id,
    PcoServicesPersonQuery? query,
    bool includeTeamLeaders = false,
  }) async {
    query ??= PcoServicesPersonQuery();

    if (includeTeamLeaders) query.include.add('team_leaders');
    var url = '/services/v2/people/$personId/team_leaders/$teamLeaderId/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `/services/v2/teams/$teamId/people`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPerson>> getFromTeam(
    String teamId, {
    String? id,
    PcoServicesPersonQuery? query,
    bool includeTeamLeaders = false,
  }) async {
    query ??= PcoServicesPersonQuery();

    if (includeTeamLeaders) query.include.add('team_leaders');
    var url = '/services/v2/teams/$teamId/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesAvailableSignup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups`
  ///
  /// Available Query Filters:
  /// - `current_organization`
  Future<PcoCollection<PcoServicesAvailableSignup>> getAvailableSignups(
      {PcoServicesAvailableSignupQuery? query}) async {
    query ??= PcoServicesAvailableSignupQuery();
    var url = '$apiEndpoint/available_signups';
    return PcoCollection.fromApiCall<PcoServicesAvailableSignup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesBlockout] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/blockouts`
  ///
  /// Available Query Filters:
  /// - `future`
  /// - `past`
  Future<PcoCollection<PcoServicesBlockout>> getBlockouts(
      {PcoServicesBlockoutQuery? query}) async {
    query ??= PcoServicesBlockoutQuery();
    var url = '$apiEndpoint/blockouts';
    return PcoCollection.fromApiCall<PcoServicesBlockout>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/person_team_position_assignments`
  ///
  /// Available Query Filters:
  /// - `not_archived`
  /// - `not_deleted`
  Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>>
      getPersonTeamPositionAssignments(
          {PcoServicesPersonTeamPositionAssignmentQuery? query}) async {
    query ??= PcoServicesPersonTeamPositionAssignmentQuery();
    var url = '$apiEndpoint/person_team_position_assignments';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(
        url,
        query: query,
        apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people`
  Future<PcoCollection<PcoServicesPlanPerson>> getPlanPeople(
      {PcoServicesPlanPersonQuery? query}) async {
    query ??= PcoServicesPlanPersonQuery();
    var url = '$apiEndpoint/plan_people';
    return PcoCollection.fromApiCall<PcoServicesPlanPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSchedule] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/schedules`
  ///
  /// Available Query Filters:
  /// - `after`
  /// Fetch schedules after the included `after` iso8601 date param. e.g. `?filter=after&after=2020-01-01T00:00:00Z`
  ///
  /// - `all`
  /// - `before`
  /// Fetch schedules before the included `before` iso8601 date param. e.g. `?filter=before&before=2020-01-01T00:00:00Z`
  ///
  /// - `future`
  /// - `not_across_organizations`
  /// - `past`
  Future<PcoCollection<PcoServicesSchedule>> getSchedules(
      {PcoServicesScheduleQuery? query}) async {
    query ??= PcoServicesScheduleQuery();
    var url = '$apiEndpoint/schedules';
    return PcoCollection.fromApiCall<PcoServicesSchedule>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSchedulingPreference] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/scheduling_preferences`
  Future<PcoCollection<PcoServicesSchedulingPreference>>
      getSchedulingPreferences(
          {PcoServicesSchedulingPreferenceQuery? query}) async {
    query ??= PcoServicesSchedulingPreferenceQuery();
    var url = '$apiEndpoint/scheduling_preferences';
    return PcoCollection.fromApiCall<PcoServicesSchedulingPreference>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/tags`
  Future<PcoCollection<PcoServicesTag>> getTags(
      {PcoServicesTagQuery? query}) async {
    query ??= PcoServicesTagQuery();
    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoServicesTag>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeamLeader] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/team_leaders`
  ///
  /// Available Query Filters:
  /// - `not_archived`
  /// - `not_deleted`
  Future<PcoCollection<PcoServicesTeamLeader>> getTeamLeaders(
      {PcoServicesTeamLeaderQuery? query}) async {
    query ??= PcoServicesTeamLeaderQuery();
    var url = '$apiEndpoint/team_leaders';
    return PcoCollection.fromApiCall<PcoServicesTeamLeader>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTextSetting] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/text_settings`
  Future<PcoCollection<PcoServicesTextSetting>> getTextSettings(
      {PcoServicesTextSettingQuery? query}) async {
    query ??= PcoServicesTextSettingQuery();
    var url = '$apiEndpoint/text_settings';
    return PcoCollection.fromApiCall<PcoServicesTextSetting>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `assign_tags`
  ///
  /// Used to assign tags to a person.
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/assign_tags`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// All tags will be replaced so the full data set must be sent.
  ///
  /// It expects a body that looks like:
  ///
  /// ```json
  /// {
  /// 	"data": {
  /// 		"type": "TagAssignment",
  /// 		"attributes": {},
  /// 		"relationships": {
  /// 			"tags": {
  /// 				"data": [
  /// 					{
  /// 						"type": "Tag",
  /// 						"id": "5"
  /// 					}
  /// 				]
  /// 			}
  /// 		}
  /// 	}
  /// }
  /// ```
  ///
  /// On success you will get back a `204 No Content`.
  Future<PlanningCenterApiResponse> assignTags(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/assign_tags';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `collapse_service_types`
  ///
  /// Used to set Service Types as collapsed for the Person
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/collapse_service_types`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// It expects a body that looks like:
  ///
  /// ```json
  /// {
  /// 	"data": {
  /// 		"type": "CollapseServiceTypes",
  /// 		"attributes": {},
  /// 		"relationships": {
  /// 			"service_type": {
  /// 				"data": [
  /// 					{
  /// 						"type": "ServiceType",
  /// 						"id": "1"
  /// 					},
  /// 					{
  /// 						"type": "ServiceType",
  /// 						"id": "2"
  /// 					}
  /// 				]
  /// 			}
  /// 		}
  /// 	}
  /// }
  /// ```
  ///
  /// On success you will get back a `204 No Content`.
  Future<PlanningCenterApiResponse> collapseServiceTypes(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/collapse_service_types';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `expand_service_types`
  ///
  /// Used to set Service Types as expanded for the Person
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/expand_service_types`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// It expects a body that looks like:
  ///
  /// ```json
  /// {
  /// 	"data": {
  /// 		"type": "ExpandServiceTypes",
  /// 		"attributes": {},
  /// 		"relationships": {
  /// 			"service_type": {
  /// 				"data": [
  /// 					{
  /// 						"type": "ServiceType",
  /// 						"id": "1"
  /// 					},
  /// 					{
  /// 						"type": "ServiceType",
  /// 						"id": "2"
  /// 					}
  /// 				]
  /// 			}
  /// 		}
  /// 	}
  /// }
  /// ```
  ///
  /// On success you will get back a `204 No Content`.
  Future<PlanningCenterApiResponse> expandServiceTypes(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/expand_service_types';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
