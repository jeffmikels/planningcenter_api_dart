/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.454187
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services Person Object
/// 
/// - Application:        services
/// - Id:                 person
/// - Type:               Person
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people
/// 
/// Description:
/// A person added to Planning Center Services.
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `assigned_to_rehearsal_team`: (URLParameter), query on a specific assigned_to_rehearsal_team, example: ?where[assigned_to_rehearsal_team]=true
/// - `legacy_id`: (URLParameter), query on a specific legacy_id, example: ?where[legacy_id]=primary_key
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `availablesignup-person-available_signups`: https://api.planningcenteronline.com/services/v2/people/1/available_signups
/// - `blockout-person-blockouts`: https://api.planningcenteronline.com/services/v2/people/1/blockouts
/// - `personteampositionassignment-person-person_team_position_assignments`: https://api.planningcenteronline.com/services/v2/people/1/person_team_position_assignments
/// - `planperson-person-plan_people`: https://api.planningcenteronline.com/services/v2/people/1/plan_people
/// - `schedule-person-schedules`: https://api.planningcenteronline.com/services/v2/people/1/schedules
/// - `tag-person-tags`: https://api.planningcenteronline.com/services/v2/people/1/tags
/// - `teamleader-person-team_leaders`: https://api.planningcenteronline.com/services/v2/people/1/team_leaders
/// - `textsetting-person-text_settings`: https://api.planningcenteronline.com/services/v2/people/1/text_settings
/// 
/// All Inbound Edges:
/// - `person-live-controller`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/controller
/// - `person-organization-people`: https://api.planningcenteronline.com/services/v2/people
/// - `person-personteampositionassignment-person`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/person
/// - `person-planperson-person`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/person
/// - `person-schedule-respond_to`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/respond_to
/// - `person-teamleader-people`: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/people
/// - `person-team-people`: https://api.planningcenteronline.com/services/v2/teams/1/people
/// 
/// All Actions:
/// - `assign_tags`: https://api.planningcenteronline.com/services/v2/people/1/assign_tags
/// - `collapse_service_types`: https://api.planningcenteronline.com/services/v2/people/1/collapse_service_types
/// - `expand_service_types`: https://api.planningcenteronline.com/services/v2/people/1/expand_service_types
///
export class PcoServicesPerson extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'Person';
  static kTypeId = 'person';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'person-organization-people';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `assigned_to_rehearsal_team`: (URLParameter), query on a specific assigned_to_rehearsal_team, example: ?where[assigned_to_rehearsal_team]=true
  /// - `legacy_id`: (URLParameter), query on a specific legacy_id, example: ?where[legacy_id]=primary_key
  static get canQuery() { return ['assigned_to_rehearsal_team','legacy_id'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','first_name','last_name','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesPerson.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesPerson.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesPerson.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kPhotoUrl() { return 'photo_url' }
  static get kPhotoThumbnailUrl() { return 'photo_thumbnail_url' }
  static get kPreferredApp() { return 'preferred_app' }
  static get kAssignedToRehearsalTeam() { return 'assigned_to_rehearsal_team' }
  static get kArchivedAt() { return 'archived_at' }
  static get kCreatedAt() { return 'created_at' }
  static get kFirstName() { return 'first_name' }
  static get kLastName() { return 'last_name' }
  static get kNamePrefix() { return 'name_prefix' }
  static get kNameSuffix() { return 'name_suffix' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kFacebookId() { return 'facebook_id' }
  static get kLegacyId() { return 'legacy_id' }
  static get kFullName() { return 'full_name' }
  static get kMaxPermissions() { return 'max_permissions' }
  static get kPermissions() { return 'permissions' }
  static get kStatus() { return 'status' }
  static get kAnniversary() { return 'anniversary' }
  static get kBirthdate() { return 'birthdate' }
  static get kGivenName() { return 'given_name' }
  static get kMiddleName() { return 'middle_name' }
  static get kNickname() { return 'nickname' }
  static get kAccessMediaAttachments() { return 'access_media_attachments' }
  static get kAccessPlanAttachments() { return 'access_plan_attachments' }
  static get kAccessSongAttachments() { return 'access_song_attachments' }
  static get kArchived() { return 'archived' }
  static get kSiteAdministrator() { return 'site_administrator' }
  static get kLoggedInAt() { return 'logged_in_at' }
  static get kNotes() { return 'notes' }
  static get kPassedBackgroundCheck() { return 'passed_background_check' }
  static get kIcalCode() { return 'ical_code' }
  static get kPraiseChartsEnabled() { return 'praise_charts_enabled' }
  static get kMeTab() { return 'me_tab' }
  static get kPlansTab() { return 'plans_tab' }
  static get kSongsTab() { return 'songs_tab' }
  static get kMediaTab() { return 'media_tab' }
  static get kPeopleTab() { return 'people_tab' }
  static get kCanEditAllPeople() { return 'can_edit_all_people' }
  static get kCanViewAllPeople() { return 'can_view_all_people' }
  static get kOnboardings() { return 'onboardings' }
  static get kCurrentFolderId() { return 'current_folder_id' }


  // getters and setters
  // @override
  get createAllowed() { return []; }

  // @override
  get updateAllowed() { return ['preferred_app','onboardings','access_media_attachments','access_plan_attachments','access_song_attachments','current_folder_id','permissions']; }

  // @override
  get canCreate() { return false; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get photoUrl() { return attributes[this.constructor.kPhotoUrl] ?? ''; }
  get photoThumbnailUrl() { return attributes[this.constructor.kPhotoThumbnailUrl] ?? ''; }
  get preferredApp() { return attributes[this.constructor.kPreferredApp] ?? ''; }
  get isAssignedToRehearsalTeam() { return attributes[this.constructor.kAssignedToRehearsalTeam] == true; }
  get archivedAt() { return Date.parse(attributes[this.constructor.kArchivedAt] ?? 0); }
  get firstName() { return attributes[this.constructor.kFirstName] ?? ''; }
  get lastName() { return attributes[this.constructor.kLastName] ?? ''; }
  get namePrefix() { return attributes[this.constructor.kNamePrefix] ?? ''; }
  get nameSuffix() { return attributes[this.constructor.kNameSuffix] ?? ''; }
  get facebookId() { return attributes[this.constructor.kFacebookId] ?? ''; }
  get legacyId() { return attributes[this.constructor.kLegacyId] ?? ''; }
  get fullName() { return attributes[this.constructor.kFullName] ?? ''; }
  get maxPermissions() { return attributes[this.constructor.kMaxPermissions] ?? ''; }
  get permissions() { return attributes[this.constructor.kPermissions] ?? ''; }
  get status() { return attributes[this.constructor.kStatus] ?? ''; }
  get anniversary() { return Date.parse(attributes[this.constructor.kAnniversary] ?? 0); }
  get birthdate() { return Date.parse(attributes[this.constructor.kBirthdate] ?? 0); }
  get givenName() { return attributes[this.constructor.kGivenName] ?? ''; }
  get middleName() { return attributes[this.constructor.kMiddleName] ?? ''; }
  get nickname() { return attributes[this.constructor.kNickname] ?? ''; }
  get isAccessMediaAttachments() { return attributes[this.constructor.kAccessMediaAttachments] == true; }
  get isAccessPlanAttachments() { return attributes[this.constructor.kAccessPlanAttachments] == true; }
  get isAccessSongAttachments() { return attributes[this.constructor.kAccessSongAttachments] == true; }
  get isArchived() { return attributes[this.constructor.kArchived] == true; }
  get isSiteAdministrator() { return attributes[this.constructor.kSiteAdministrator] == true; }
  get loggedInAt() { return Date.parse(attributes[this.constructor.kLoggedInAt] ?? 0); }
  get notes() { return attributes[this.constructor.kNotes] ?? ''; }
  get isPassedBackgroundCheck() { return attributes[this.constructor.kPassedBackgroundCheck] == true; }
  get icalCode() { return attributes[this.constructor.kIcalCode] ?? ''; }
  get isPraiseChartsEnabled() { return attributes[this.constructor.kPraiseChartsEnabled] == true; }
  get meTab() { return attributes[this.constructor.kMeTab] ?? ''; }
  get plansTab() { return attributes[this.constructor.kPlansTab] ?? ''; }
  get songsTab() { return attributes[this.constructor.kSongsTab] ?? ''; }
  get mediaTab() { return attributes[this.constructor.kMediaTab] ?? ''; }
  get peopleTab() { return attributes[this.constructor.kPeopleTab] ?? ''; }
  get isCanEditAllPeople() { return attributes[this.constructor.kCanEditAllPeople] == true; }
  get isCanViewAllPeople() { return attributes[this.constructor.kCanViewAllPeople] == true; }
  get onboardings() { return attributes[this.constructor.kOnboardings] ?? []; }
  

  // setters for object attributes

  set preferredApp(s) {attributes[this.constructor.kPreferredApp] = s;}
  set permissions(s) {attributes[this.constructor.kPermissions] = s;}
  set isAccessMediaAttachments(b) { attributes[this.constructor.kAccessMediaAttachments] = b; }
  set isAccessPlanAttachments(b) { attributes[this.constructor.kAccessPlanAttachments] = b; }
  set isAccessSongAttachments(b) { attributes[this.constructor.kAccessSongAttachments] = b; }
  set onboardings(a) { attributes[this.constructor.kOnboardings] = a; }
  

  // additional setters and getters for assignable values

  get currentFolderId() { return attributes[this.constructor.kCurrentFolderId] ?? ''; }
  set currentFolderId(s) {attributes[this.constructor.kCurrentFolderId] = s;}
  



  // Class Constructors
  // PcoServicesPerson._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesPerson({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `/services/v2/people`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/recent_plans/${recentPlanId}/live/${liveId}/controller`
  static getControllerFromPeopleAndRecentPlanAndLive(peopleId, recentPlanId, liveId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/recent_plans/${recentPlanId}/live/${liveId}/controller`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/team_positions/${teamPositionId}/person_team_position_assignments/${personTeamPositionAssignmentId}/person`
  static getFromServiceTypeAndTeamPositionAndPersonTeamPositionAssignment(serviceTypeId, teamPositionId, personTeamPositionAssignmentId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/team_positions/${teamPositionId}/person_team_position_assignments/${personTeamPositionAssignmentId}/person`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/plan_people/${planPeopleId}/person`
  static getFromPeopleAndPlanPeople(peopleId, planPeopleId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/plan_people/${planPeopleId}/person`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/schedules/${scheduleId}/respond_to`
  static getRespondToFromPeopleAndSchedule(peopleId, scheduleId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/schedules/${scheduleId}/respond_to`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/assigned_team_leaders/${assignedTeamLeaderId}/people`
  static getPeopleFromPeopleAndAssignedTeamLeader(peopleId, assignedTeamLeaderId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/assigned_team_leaders/${assignedTeamLeaderId}/people`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `/services/v2/teams/${teamId}/people`
  static getPeopleFromTeam(teamId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/teams/${teamId}/people`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAvailableSignup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups`
  /// 
  /// Available Query Filters:
  /// - `current_organization`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAvailableSignups({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAvailableSignup.canInclude;
    let url = `${apiEndpoint}/available_signups`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesBlockout] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/blockouts`
  /// 
  /// Available Query Filters:
  /// - `future`
  /// - `past`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getBlockouts({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesBlockout.canInclude;
    let url = `${apiEndpoint}/blockouts`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/person_team_position_assignments`
  /// 
  /// Available Query Filters:
  /// - `not_archived`
  /// - `not_deleted`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPersonTeamPositionAssignments({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    let url = `${apiEndpoint}/person_team_position_assignments`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPlanPeople({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanPerson.canInclude;
    let url = `${apiEndpoint}/plan_people`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSchedule] objects (expecting many)
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
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSchedules({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSchedule.canInclude;
    let url = `${apiEndpoint}/schedules`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/tags`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTags({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    let url = `${apiEndpoint}/tags`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeamLeader] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/team_leaders`
  /// 
  /// Available Query Filters:
  /// - `not_archived`
  /// - `not_deleted`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTeamLeaders({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeamLeader.canInclude;
    let url = `${apiEndpoint}/team_leaders`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTextSetting] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/text_settings`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTextSettings({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTextSetting.canInclude;
    let url = `${apiEndpoint}/text_settings`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
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
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  assignTags(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/assign_tags`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `collapse_service_types`
  /// 
  /// Used to set Service Types as collapsed for the Person
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/collapse_service_types`
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
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  collapseServiceTypes(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/collapse_service_types`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `expand_service_types`
  /// 
  /// Used to set Service Types as expanded for the Person
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/expand_service_types`
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
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  expandServiceTypes(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/expand_service_types`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
