/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.441317
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services Organization Object
/// 
/// - Application:        services
/// - Id:                 organization
/// - Type:               Organization
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2
/// 
/// Description:
/// The root level of an organization where account-level settings are applied.
/// 
/// Example:
/// ```json
/// {
///   "type": "Organization",
///   "id": "1",
///   "attributes": {
///     "ccli": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "date_format": 1,
///     "music_stand_enabled": true,
///     "name": "string",
///     "projector_enabled": true,
///     "time_zone": "string",
///     "twenty_four_hour_time": true,
///     "updated_at": "2000-01-01T12:00:00Z",
///     "owner_name": "string",
///     "required_to_set_download_permission": "string",
///     "secret": "string",
///     "allow_mp3_download": true,
///     "calendar_starts_on_sunday": true,
///     "ccli_connected": true,
///     "ccli_reporting_enabled": true,
///     "extra_file_storage_allowed": true,
///     "file_storage_exceeded": true,
///     "file_storage_size": true,
///     "file_storage_size_used": true,
///     "file_storage_extra_enabled": true,
///     "rehearsal_mix_enabled": true,
///     "legacy_id": "primary_key",
///     "file_storage_extra_charges": 1,
///     "people_allowed": 1,
///     "people_remaining": 1,
///     "beta": true
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `attachmenttype-organization-attachment_types`: https://api.planningcenteronline.com/services/v2/attachment_types
/// - `emailtemplate-organization-email_templates`: https://api.planningcenteronline.com/services/v2/email_templates
/// - `folder-organization-folders`: https://api.planningcenteronline.com/services/v2/folders
/// - `media-organization-media`: https://api.planningcenteronline.com/services/v2/media
/// - `person-organization-people`: https://api.planningcenteronline.com/services/v2/people
/// - `organization-organization-plans`: https://api.planningcenteronline.com/services/v2/plans
/// - `reporttemplate-organization-report_templates`: https://api.planningcenteronline.com/services/v2/report_templates
/// - `series-organization-series`: https://api.planningcenteronline.com/services/v2/series
/// - `servicetype-organization-service_types`: https://api.planningcenteronline.com/services/v2/service_types
/// - `song-organization-songs`: https://api.planningcenteronline.com/services/v2/songs
/// - `taggroup-organization-tag_groups`: https://api.planningcenteronline.com/services/v2/tag_groups
/// - `team-organization-teams`: https://api.planningcenteronline.com/services/v2/teams
/// 
/// All Inbound Edges:
/// - `organization-organization-plans`: https://api.planningcenteronline.com/services/v2/plans
/// 
/// All Actions:
/// NONE
///
export class PcoServicesOrganization extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'Organization';
  static kTypeId = 'organization';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesOrganization.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesOrganization.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesOrganization.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCcli() { return 'ccli' }
  static get kCreatedAt() { return 'created_at' }
  static get kDateFormat() { return 'date_format' }
  static get kMusicStandEnabled() { return 'music_stand_enabled' }
  static get kName() { return 'name' }
  static get kProjectorEnabled() { return 'projector_enabled' }
  static get kTimeZone() { return 'time_zone' }
  static get kTwentyFourHourTime() { return 'twenty_four_hour_time' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kOwnerName() { return 'owner_name' }
  static get kRequiredToSetDownloadPermission() { return 'required_to_set_download_permission' }
  static get kSecret() { return 'secret' }
  static get kAllowMp3Download() { return 'allow_mp3_download' }
  static get kCalendarStartsOnSunday() { return 'calendar_starts_on_sunday' }
  static get kCcliConnected() { return 'ccli_connected' }
  static get kCcliReportingEnabled() { return 'ccli_reporting_enabled' }
  static get kExtraFileStorageAllowed() { return 'extra_file_storage_allowed' }
  static get kFileStorageExceeded() { return 'file_storage_exceeded' }
  static get kFileStorageSize() { return 'file_storage_size' }
  static get kFileStorageSizeUsed() { return 'file_storage_size_used' }
  static get kFileStorageExtraEnabled() { return 'file_storage_extra_enabled' }
  static get kRehearsalMixEnabled() { return 'rehearsal_mix_enabled' }
  static get kLegacyId() { return 'legacy_id' }
  static get kFileStorageExtraCharges() { return 'file_storage_extra_charges' }
  static get kPeopleAllowed() { return 'people_allowed' }
  static get kPeopleRemaining() { return 'people_remaining' }
  static get kBeta() { return 'beta' }


  // getters and setters
  // @override
  get createAllowed() { return []; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return false; }

  // @override
  get canUpdate() { return false; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get ccli() { return attributes[this.constructor.kCcli] ?? ''; }
  get dateFormat() { return attributes[this.constructor.kDateFormat] ?? 0; }
  get isMusicStandEnabled() { return attributes[this.constructor.kMusicStandEnabled] == true; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get isProjectorEnabled() { return attributes[this.constructor.kProjectorEnabled] == true; }
  get timeZone() { return attributes[this.constructor.kTimeZone] ?? ''; }
  get isTwentyFourHourTime() { return attributes[this.constructor.kTwentyFourHourTime] == true; }
  get ownerName() { return attributes[this.constructor.kOwnerName] ?? ''; }
  get requiredToSetDownloadPermission() { return attributes[this.constructor.kRequiredToSetDownloadPermission] ?? ''; }
  get secret() { return attributes[this.constructor.kSecret] ?? ''; }
  get isAllowMp3Download() { return attributes[this.constructor.kAllowMp3Download] == true; }
  get isCalendarStartsOnSunday() { return attributes[this.constructor.kCalendarStartsOnSunday] == true; }
  get isCcliConnected() { return attributes[this.constructor.kCcliConnected] == true; }
  get isCcliReportingEnabled() { return attributes[this.constructor.kCcliReportingEnabled] == true; }
  get isExtraFileStorageAllowed() { return attributes[this.constructor.kExtraFileStorageAllowed] == true; }
  get isFileStorageExceeded() { return attributes[this.constructor.kFileStorageExceeded] == true; }
  get isFileStorageSize() { return attributes[this.constructor.kFileStorageSize] == true; }
  get isFileStorageSizeUsed() { return attributes[this.constructor.kFileStorageSizeUsed] == true; }
  get isFileStorageExtraEnabled() { return attributes[this.constructor.kFileStorageExtraEnabled] == true; }
  get isRehearsalMixEnabled() { return attributes[this.constructor.kRehearsalMixEnabled] == true; }
  get legacyId() { return attributes[this.constructor.kLegacyId] ?? ''; }
  get fileStorageExtraCharges() { return attributes[this.constructor.kFileStorageExtraCharges] ?? 0; }
  get peopleAllowed() { return attributes[this.constructor.kPeopleAllowed] ?? 0; }
  get peopleRemaining() { return attributes[this.constructor.kPeopleRemaining] ?? 0; }
  get isBeta() { return attributes[this.constructor.kBeta] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesOrganization._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesOrganization({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesOrganization] objects (expecting many)
  /// using a path like this: `/services/v2`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesOrganization.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachmentType] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/attachment_types`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAttachmentTypes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachmentType.canInclude;
    let url = `${apiEndpoint}/attachment_types`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesEmailTemplate] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/email_templates`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEmailTemplates({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesEmailTemplate.canInclude;
    let url = `${apiEndpoint}/email_templates`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesFolder] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/folders`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFolders({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    let url = `${apiEndpoint}/folders`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesMedia] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media`
  /// 
  /// Available Query Filters:
  /// - `archived`
  /// - `audio`
  /// - `background_audio`
  /// - `background_image`
  /// - `background_video`
  /// - `countdown`
  /// - `document`
  /// - `drama`
  /// - `image`
  /// - `not_archived`
  /// - `powerpoint`
  /// - `song_video`
  /// - `video`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getMedia({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesMedia.canInclude;
    let url = `${apiEndpoint}/media`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPeople({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    let url = `${apiEndpoint}/people`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesOrganization] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/plans`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPlans({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesOrganization.canInclude;
    let url = `${apiEndpoint}/plans`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesReportTemplate] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/report_templates`
  /// 
  /// Available Query Filters:
  /// - `matrix`
  /// - `people`
  /// - `plans`
  /// - `without_defaults`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getReportTemplates({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesReportTemplate.canInclude;
    let url = `${apiEndpoint}/report_templates`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSeries] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSeries({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSeries.canInclude;
    let url = `${apiEndpoint}/series`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesServiceType] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types`
  /// 
  /// Available Query Filters:
  /// - `no_parent`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getServiceTypes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    let url = `${apiEndpoint}/service_types`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSong] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSongs({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSong.canInclude;
    let url = `${apiEndpoint}/songs`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTagGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/tag_groups`
  /// 
  /// Available Query Filters:
  /// - `arrangement`
  /// - `media`
  /// - `person`
  /// - `song`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTagGroups({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTagGroup.canInclude;
    let url = `${apiEndpoint}/tag_groups`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTeams({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    let url = `${apiEndpoint}/teams`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
