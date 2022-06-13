/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.614531
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


import '../../pco.dart';

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
/// - `assigned_to_rehearsal_team`: (URLParameter), query on a specific assigned_to_rehearsal_team, example: ?where[assigned_to_rehearsal_team]=true
/// - `legacy_id`: (URLParameter), query on a specific legacy_id, example: ?where[legacy_id]=primary_key
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `availablesignup-person-available_signups`: https://api.planningcenteronline.com/services/v2/people/1/available_signups
/// - `blockout-person-blockouts`: https://api.planningcenteronline.com/services/v2/people/1/blockouts
/// - `personteampositionassignment-person-person_team_position_assignments`: https://api.planningcenteronline.com/services/v2/people/1/person_team_position_assignments
/// - `planperson-person-plan_people`: https://api.planningcenteronline.com/services/v2/people/1/plan_people
/// - `schedule-person-schedules`: https://api.planningcenteronline.com/services/v2/people/1/schedules
/// - `tag-person-tags`: https://api.planningcenteronline.com/services/v2/people/1/tags
/// - `teamleader-person-team_leaders`: https://api.planningcenteronline.com/services/v2/people/1/team_leaders
/// - `textsetting-person-text_settings`: https://api.planningcenteronline.com/services/v2/people/1/text_settings
/// 
/// Inbound Edges:
/// - `person-live-controller`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/controller
/// - `person-organization-people`: https://api.planningcenteronline.com/services/v2/people
/// - `person-personteampositionassignment-person`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/person
/// - `person-planperson-person`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/person
/// - `person-schedule-respond_to`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/respond_to
/// - `person-teamleader-people`: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/people
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
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `assigned_to_rehearsal_team`: (URLParameter), query on a specific assigned_to_rehearsal_team, example: ?where[assigned_to_rehearsal_team]=true
  /// - `legacy_id`: (URLParameter), query on a specific legacy_id, example: ?where[legacy_id]=primary_key
  static List<String> get canQuery => ['assigned_to_rehearsal_team','legacy_id'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','first_name','last_name','updated_at'];

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
  List<String> get updateAllowed => ['preferred_app', 'onboardings', 'access_media_attachments', 'access_plan_attachments', 'access_song_attachments', 'current_folder_id', 'permissions'];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  String get photoUrl => attributes[kPhotoUrl] ?? '';
  String get photoThumbnailUrl => attributes[kPhotoThumbnailUrl] ?? '';
  String get preferredApp => attributes[kPreferredApp] ?? '';
  bool get isAssignedToRehearsalTeam => attributes[kAssignedToRehearsalTeam] == true;
  DateTime get archivedAt => DateTime.parse(attributes[kArchivedAt] ?? '');
  String get firstName => attributes[kFirstName] ?? '';
  String get lastName => attributes[kLastName] ?? '';
  String get namePrefix => attributes[kNamePrefix] ?? '';
  String get nameSuffix => attributes[kNameSuffix] ?? '';
  String get facebookId => attributes[kFacebookId] ?? '';
  String get legacyId => attributes[kLegacyId] ?? '';
  String get fullName => attributes[kFullName] ?? '';
  String get maxPermissions => attributes[kMaxPermissions] ?? '';
  String get permissions => attributes[kPermissions] ?? '';
  String get status => attributes[kStatus] ?? '';
  DateTime get anniversary => DateTime.parse(attributes[kAnniversary] ?? '');
  DateTime get birthdate => DateTime.parse(attributes[kBirthdate] ?? '');
  String get givenName => attributes[kGivenName] ?? '';
  String get middleName => attributes[kMiddleName] ?? '';
  String get nickname => attributes[kNickname] ?? '';
  bool get isAccessMediaAttachments => attributes[kAccessMediaAttachments] == true;
  bool get isAccessPlanAttachments => attributes[kAccessPlanAttachments] == true;
  bool get isAccessSongAttachments => attributes[kAccessSongAttachments] == true;
  bool get isArchived => attributes[kArchived] == true;
  bool get isSiteAdministrator => attributes[kSiteAdministrator] == true;
  DateTime get loggedInAt => DateTime.parse(attributes[kLoggedInAt] ?? '');
  String get notes => attributes[kNotes] ?? '';
  bool get isPassedBackgroundCheck => attributes[kPassedBackgroundCheck] == true;
  String get icalCode => attributes[kIcalCode] ?? '';
  bool get isPraiseChartsEnabled => attributes[kPraiseChartsEnabled] == true;
  String get meTab => attributes[kMeTab] ?? '';
  String get plansTab => attributes[kPlansTab] ?? '';
  String get songsTab => attributes[kSongsTab] ?? '';
  String get mediaTab => attributes[kMediaTab] ?? '';
  String get peopleTab => attributes[kPeopleTab] ?? '';
  bool get isCanEditAllPeople => attributes[kCanEditAllPeople] == true;
  bool get isCanViewAllPeople => attributes[kCanViewAllPeople] == true;
  List get onboardings => attributes[kOnboardings] ?? [];  
  
  // setters for object attributes
  
  /// pass `null` to remove key from attributes
  set preferredApp(String? x) => (x == null) ? attributes.remove(kPreferredApp) : attributes[kPreferredApp] = x;
  
  /// pass `null` to remove key from attributes
  set permissions(String? x) => (x == null) ? attributes.remove(kPermissions) : attributes[kPermissions] = x;
  
  /// pass `null` to remove key from attributes
  set isAccessMediaAttachments(bool? x) => (x == null) ? attributes.remove(kAccessMediaAttachments) : attributes[kAccessMediaAttachments] = x;
  
  /// pass `null` to remove key from attributes
  set isAccessPlanAttachments(bool? x) => (x == null) ? attributes.remove(kAccessPlanAttachments) : attributes[kAccessPlanAttachments] = x;
  
  /// pass `null` to remove key from attributes
  set isAccessSongAttachments(bool? x) => (x == null) ? attributes.remove(kAccessSongAttachments) : attributes[kAccessSongAttachments] = x;
  
  /// pass `null` to remove key from attributes
  set onboardings(List? x) => (x == null) ? attributes.remove(kOnboardings) : attributes[kOnboardings] = x;  
  
  // additional setters / getters for create/update attributes
  
  /// pass `null` to remove key from attributes
  set currentFolderId(String? x) => (x == null) ? attributes.remove(kCurrentFolderId) : attributes[kCurrentFolderId] = x;
  String get currentFolderId => attributes[kCurrentFolderId] ?? '';


  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships
  
  




  // Class Constructors
  PcoServicesPerson.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoServicesPerson.empty() : super(kPcoApplication, kTypeString);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `/services/v2/people`
  static Future<PcoCollection<PcoServicesPerson>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/controller`
  static Future<PcoCollection<PcoServicesPerson>> getControllerFromPeopleAndRecentPlanAndLive(String peopleId,String recentPlanId,String liveId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/controller';
    
    return PcoCollection.fromApiCall<PcoServicesPerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments/$personTeamPositionAssignmentId/person`
  static Future<PcoCollection<PcoServicesPerson>> getFromServiceTypeAndTeamPositionAndPersonTeamPositionAssignment(String serviceTypeId,String teamPositionId,String personTeamPositionAssignmentId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments/$personTeamPositionAssignmentId/person';
    
    return PcoCollection.fromApiCall<PcoServicesPerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/plan_people/$planPeopleId/person`
  static Future<PcoCollection<PcoServicesPerson>> getFromPeopleAndPlanPeople(String peopleId,String planPeopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/person';
    
    return PcoCollection.fromApiCall<PcoServicesPerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/schedules/$scheduleId/respond_to`
  static Future<PcoCollection<PcoServicesPerson>> getRespondToFromPeopleAndSchedule(String peopleId,String scheduleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/people/$peopleId/schedules/$scheduleId/respond_to';
    
    return PcoCollection.fromApiCall<PcoServicesPerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/assigned_team_leaders/$assignedTeamLeaderId/people`
  static Future<PcoCollection<PcoServicesPerson>> getPeopleFromPeopleAndAssignedTeamLeader(String peopleId,String assignedTeamLeaderId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/people/$peopleId/assigned_team_leaders/$assignedTeamLeaderId/people';
    
    return PcoCollection.fromApiCall<PcoServicesPerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `/services/v2/teams/$teamId/people`
  static Future<PcoCollection<PcoServicesPerson>> getPeopleFromTeam(String teamId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/teams/$teamId/people';
    
    return PcoCollection.fromApiCall<PcoServicesPerson>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesAvailableSignup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups`
  /// 
  /// Available Query Filters:
  /// - `current_organization`
  Future<PcoCollection<PcoServicesAvailableSignup>> getAvailableSignups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAvailableSignup.canInclude;
    var url = '$apiEndpoint/available_signups';
    return PcoCollection.fromApiCall<PcoServicesAvailableSignup>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesBlockout] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/blockouts`
  /// 
  /// Available Query Filters:
  /// - `future`
  /// - `past`
  Future<PcoCollection<PcoServicesBlockout>> getBlockouts({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesBlockout.canInclude;
    var url = '$apiEndpoint/blockouts';
    return PcoCollection.fromApiCall<PcoServicesBlockout>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/person_team_position_assignments`
  /// 
  /// Available Query Filters:
  /// - `not_archived`
  /// - `not_deleted`
  Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>> getPersonTeamPositionAssignments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    var url = '$apiEndpoint/person_team_position_assignments';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people`
  Future<PcoCollection<PcoServicesPlanPerson>> getPlanPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanPerson.canInclude;
    var url = '$apiEndpoint/plan_people';
    return PcoCollection.fromApiCall<PcoServicesPlanPerson>(url, query: query, apiVersion: apiVersion);
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
  Future<PcoCollection<PcoServicesSchedule>> getSchedules({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSchedule.canInclude;
    var url = '$apiEndpoint/schedules';
    return PcoCollection.fromApiCall<PcoServicesSchedule>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/tags`
  Future<PcoCollection<PcoServicesTag>> getTags({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeamLeader] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/team_leaders`
  /// 
  /// Available Query Filters:
  /// - `not_archived`
  /// - `not_deleted`
  Future<PcoCollection<PcoServicesTeamLeader>> getTeamLeaders({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamLeader.canInclude;
    var url = '$apiEndpoint/team_leaders';
    return PcoCollection.fromApiCall<PcoServicesTeamLeader>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTextSetting] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/text_settings`
  Future<PcoCollection<PcoServicesTextSetting>> getTextSettings({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTextSetting.canInclude;
    var url = '$apiEndpoint/text_settings';
    return PcoCollection.fromApiCall<PcoServicesTextSetting>(url, query: query, apiVersion: apiVersion);
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
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
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
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
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
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }


}
