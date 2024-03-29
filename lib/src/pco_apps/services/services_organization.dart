/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:20.960470
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesOrganizationOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesOrganizationFilter { none }

/// Creates a [PcoServicesOrganizationQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesOrganizationQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesOrganizationOrder, String> _orderMap = {};
  static String orderString(PcoServicesOrganizationOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesOrganizationFilter, String> _filterMap = {};
  static String filterString(PcoServicesOrganizationFilter filter) =>
      _filterMap[filter]!;

  PcoServicesOrganizationQuery({
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
  }) : super();
}

/// This class represents a PCO Services Organization Object
///
/// - Application:        services
/// - Id:                 organization
/// - Type:               Organization
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesOrganization.fromJson()` constructor.
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
/// The root level of an organization where account-level settings are applied.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `ccli` (ro) -> PCO: `ccli`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `dateFormat` (ro) -> PCO: `date_format`
/// - `isMusicStandEnabled` (ro) -> PCO: `music_stand_enabled`
/// - `name` (ro) -> PCO: `name`
/// - `isProjectorEnabled` (ro) -> PCO: `projector_enabled`
/// - `timeZone` (ro) -> PCO: `time_zone`
/// - `isTwentyFourHourTime` (ro) -> PCO: `twenty_four_hour_time`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `ownerName` (ro) -> PCO: `owner_name`
/// - `requiredToSetDownloadPermission` (ro) -> PCO: `required_to_set_download_permission`
/// - `secret` (ro) -> PCO: `secret`
/// - `isAllowMp3Download` (ro) -> PCO: `allow_mp3_download`
/// - `isCalendarStartsOnSunday` (ro) -> PCO: `calendar_starts_on_sunday`
/// - `isCcliConnected` (ro) -> PCO: `ccli_connected`
/// - `isCcliReportingEnabled` (ro) -> PCO: `ccli_reporting_enabled`
/// - `isExtraFileStorageAllowed` (ro) -> PCO: `extra_file_storage_allowed`
/// - `isFileStorageExceeded` (ro) -> PCO: `file_storage_exceeded`
/// - `isFileStorageSize` (ro) -> PCO: `file_storage_size`
/// - `isFileStorageSizeUsed` (ro) -> PCO: `file_storage_size_used`
/// - `isFileStorageExtraEnabled` (ro) -> PCO: `file_storage_extra_enabled`
/// - `isRehearsalMixEnabled` (ro) -> PCO: `rehearsal_mix_enabled`
/// - `legacyId` (ro) -> PCO: `legacy_id`
/// - `fileStorageExtraCharges` (ro) -> PCO: `file_storage_extra_charges`
/// - `peopleAllowed` (ro) -> PCO: `people_allowed`
/// - `peopleRemaining` (ro) -> PCO: `people_remaining`
/// - `isBeta` (ro) -> PCO: `beta`
///
/// ## Edges and Actions
///
/// Outbound Edges:
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
/// Inbound Edges:
/// - `organization-organization-plans`: https://api.planningcenteronline.com/services/v2/plans
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
class PcoServicesOrganization extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2';
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
  static const kCcli = 'ccli';
  static const kCreatedAt = 'created_at';
  static const kDateFormat = 'date_format';
  static const kMusicStandEnabled = 'music_stand_enabled';
  static const kName = 'name';
  static const kProjectorEnabled = 'projector_enabled';
  static const kTimeZone = 'time_zone';
  static const kTwentyFourHourTime = 'twenty_four_hour_time';
  static const kUpdatedAt = 'updated_at';
  static const kOwnerName = 'owner_name';
  static const kRequiredToSetDownloadPermission =
      'required_to_set_download_permission';
  static const kSecret = 'secret';
  static const kAllowMp3Download = 'allow_mp3_download';
  static const kCalendarStartsOnSunday = 'calendar_starts_on_sunday';
  static const kCcliConnected = 'ccli_connected';
  static const kCcliReportingEnabled = 'ccli_reporting_enabled';
  static const kExtraFileStorageAllowed = 'extra_file_storage_allowed';
  static const kFileStorageExceeded = 'file_storage_exceeded';
  static const kFileStorageSize = 'file_storage_size';
  static const kFileStorageSizeUsed = 'file_storage_size_used';
  static const kFileStorageExtraEnabled = 'file_storage_extra_enabled';
  static const kRehearsalMixEnabled = 'rehearsal_mix_enabled';
  static const kLegacyId = 'legacy_id';
  static const kFileStorageExtraCharges = 'file_storage_extra_charges';
  static const kPeopleAllowed = 'people_allowed';
  static const kPeopleRemaining = 'people_remaining';
  static const kBeta = 'beta';

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
  String get ccli => _getAttribute<String>(kCcli, '');
  int get dateFormat => _getAttribute<int>(kDateFormat, 0);
  bool get isMusicStandEnabled =>
      _getAttribute<bool>(kMusicStandEnabled, false);
  String get name => _getAttribute<String>(kName, '');
  bool get isProjectorEnabled => _getAttribute<bool>(kProjectorEnabled, false);
  String get timeZone => _getAttribute<String>(kTimeZone, '');
  bool get isTwentyFourHourTime =>
      _getAttribute<bool>(kTwentyFourHourTime, false);
  String get ownerName => _getAttribute<String>(kOwnerName, '');
  String get requiredToSetDownloadPermission =>
      _getAttribute<String>(kRequiredToSetDownloadPermission, '');
  String get secret => _getAttribute<String>(kSecret, '');
  bool get isAllowMp3Download => _getAttribute<bool>(kAllowMp3Download, false);
  bool get isCalendarStartsOnSunday =>
      _getAttribute<bool>(kCalendarStartsOnSunday, false);
  bool get isCcliConnected => _getAttribute<bool>(kCcliConnected, false);
  bool get isCcliReportingEnabled =>
      _getAttribute<bool>(kCcliReportingEnabled, false);
  bool get isExtraFileStorageAllowed =>
      _getAttribute<bool>(kExtraFileStorageAllowed, false);
  bool get isFileStorageExceeded =>
      _getAttribute<bool>(kFileStorageExceeded, false);
  bool get isFileStorageSize => _getAttribute<bool>(kFileStorageSize, false);
  bool get isFileStorageSizeUsed =>
      _getAttribute<bool>(kFileStorageSizeUsed, false);
  bool get isFileStorageExtraEnabled =>
      _getAttribute<bool>(kFileStorageExtraEnabled, false);
  bool get isRehearsalMixEnabled =>
      _getAttribute<bool>(kRehearsalMixEnabled, false);
  String get legacyId => _getAttribute<String>(kLegacyId, '');
  int get fileStorageExtraCharges =>
      _getAttribute<int>(kFileStorageExtraCharges, 0);
  int get peopleAllowed => _getAttribute<int>(kPeopleAllowed, 0);
  int get peopleRemaining => _getAttribute<int>(kPeopleRemaining, 0);
  bool get isBeta => _getAttribute<bool>(kBeta, false);

  // Class Constructors
  PcoServicesOrganization.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesOrganization.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesOrganization] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesOrganization(
      {String? id,
      String? ccli,
      DateTime? createdAt,
      int? dateFormat,
      bool? isMusicStandEnabled,
      String? name,
      bool? isProjectorEnabled,
      String? timeZone,
      bool? isTwentyFourHourTime,
      DateTime? updatedAt,
      String? ownerName,
      String? requiredToSetDownloadPermission,
      String? secret,
      bool? isAllowMp3Download,
      bool? isCalendarStartsOnSunday,
      bool? isCcliConnected,
      bool? isCcliReportingEnabled,
      bool? isExtraFileStorageAllowed,
      bool? isFileStorageExceeded,
      bool? isFileStorageSize,
      bool? isFileStorageSizeUsed,
      bool? isFileStorageExtraEnabled,
      bool? isRehearsalMixEnabled,
      String? legacyId,
      int? fileStorageExtraCharges,
      int? peopleAllowed,
      int? peopleRemaining,
      bool? isBeta,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesOrganization.empty();
    obj._id = id;
    if (ccli != null) obj._attributes['ccli'] = ccli;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (dateFormat != null) obj._attributes['date_format'] = dateFormat;
    if (isMusicStandEnabled != null)
      obj._attributes['music_stand_enabled'] = isMusicStandEnabled;
    if (name != null) obj._attributes['name'] = name;
    if (isProjectorEnabled != null)
      obj._attributes['projector_enabled'] = isProjectorEnabled;
    if (timeZone != null) obj._attributes['time_zone'] = timeZone;
    if (isTwentyFourHourTime != null)
      obj._attributes['twenty_four_hour_time'] = isTwentyFourHourTime;
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (ownerName != null) obj._attributes['owner_name'] = ownerName;
    if (requiredToSetDownloadPermission != null)
      obj._attributes['required_to_set_download_permission'] =
          requiredToSetDownloadPermission;
    if (secret != null) obj._attributes['secret'] = secret;
    if (isAllowMp3Download != null)
      obj._attributes['allow_mp3_download'] = isAllowMp3Download;
    if (isCalendarStartsOnSunday != null)
      obj._attributes['calendar_starts_on_sunday'] = isCalendarStartsOnSunday;
    if (isCcliConnected != null)
      obj._attributes['ccli_connected'] = isCcliConnected;
    if (isCcliReportingEnabled != null)
      obj._attributes['ccli_reporting_enabled'] = isCcliReportingEnabled;
    if (isExtraFileStorageAllowed != null)
      obj._attributes['extra_file_storage_allowed'] = isExtraFileStorageAllowed;
    if (isFileStorageExceeded != null)
      obj._attributes['file_storage_exceeded'] = isFileStorageExceeded;
    if (isFileStorageSize != null)
      obj._attributes['file_storage_size'] = isFileStorageSize;
    if (isFileStorageSizeUsed != null)
      obj._attributes['file_storage_size_used'] = isFileStorageSizeUsed;
    if (isFileStorageExtraEnabled != null)
      obj._attributes['file_storage_extra_enabled'] = isFileStorageExtraEnabled;
    if (isRehearsalMixEnabled != null)
      obj._attributes['rehearsal_mix_enabled'] = isRehearsalMixEnabled;
    if (legacyId != null) obj._attributes['legacy_id'] = legacyId;
    if (fileStorageExtraCharges != null)
      obj._attributes['file_storage_extra_charges'] = fileStorageExtraCharges;
    if (peopleAllowed != null)
      obj._attributes['people_allowed'] = peopleAllowed;
    if (peopleRemaining != null)
      obj._attributes['people_remaining'] = peopleRemaining;
    if (isBeta != null) obj._attributes['beta'] = isBeta;

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

  /// Will get a [PcoCollection] of [PcoServicesOrganization] objects (expecting many)
  /// using a path like this: `/services/v2`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesOrganization>> get({
    String? id,
    PcoServicesOrganizationQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoServicesOrganizationQuery();
    if (getAll) query.getAll = true;

    var url = '/services/v2';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesOrganization>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoServicesOrganization] object
  /// using a path like this: `/services/v2/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoServicesOrganization?> getSingle(
    String id, {
    PcoServicesOrganizationQuery? query,
  }) async {
    query ??= PcoServicesOrganizationQuery();

    var url = '/services/v2/$id';
    var retval = await PcoCollection.fromApiCall<PcoServicesOrganization>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoServicesOrganization] objects (expecting many)
  /// using a path like this: `/services/v2`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoServicesOrganization>> getAll({
    String? id,
    PcoServicesOrganizationQuery? query,
  }) async {
    query ??= PcoServicesOrganizationQuery();
    query.getAll = true;

    var url = '/services/v2';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesOrganization>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesAttachmentType] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/attachment_types`
  Future<PcoCollection<PcoServicesAttachmentType>> getAttachmentTypes(
      {PcoServicesAttachmentTypeQuery? query}) async {
    query ??= PcoServicesAttachmentTypeQuery();
    var url = '$apiEndpoint/attachment_types';
    return PcoCollection.fromApiCall<PcoServicesAttachmentType>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesEmailTemplate] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/email_templates`
  Future<PcoCollection<PcoServicesEmailTemplate>> getEmailTemplates(
      {PcoServicesEmailTemplateQuery? query}) async {
    query ??= PcoServicesEmailTemplateQuery();
    var url = '$apiEndpoint/email_templates';
    return PcoCollection.fromApiCall<PcoServicesEmailTemplate>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesFolder] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/folders`
  Future<PcoCollection<PcoServicesFolder>> getFolders(
      {PcoServicesFolderQuery? query}) async {
    query ??= PcoServicesFolderQuery();
    var url = '$apiEndpoint/folders';
    return PcoCollection.fromApiCall<PcoServicesFolder>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesMedia] objects (expecting many)
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
  Future<PcoCollection<PcoServicesMedia>> getMedia(
      {PcoServicesMediaQuery? query}) async {
    query ??= PcoServicesMediaQuery();
    var url = '$apiEndpoint/media';
    return PcoCollection.fromApiCall<PcoServicesMedia>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people`
  Future<PcoCollection<PcoServicesPerson>> getPeople(
      {PcoServicesPersonQuery? query}) async {
    query ??= PcoServicesPersonQuery();
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesOrganization] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/plans`
  Future<PcoCollection<PcoServicesOrganization>> getPlans(
      {PcoServicesOrganizationQuery? query}) async {
    query ??= PcoServicesOrganizationQuery();
    var url = '$apiEndpoint/plans';
    return PcoCollection.fromApiCall<PcoServicesOrganization>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesReportTemplate] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/report_templates`
  ///
  /// Available Query Filters:
  /// - `matrix`
  /// - `people`
  /// - `plans`
  /// - `without_defaults`
  Future<PcoCollection<PcoServicesReportTemplate>> getReportTemplates(
      {PcoServicesReportTemplateQuery? query}) async {
    query ??= PcoServicesReportTemplateQuery();
    var url = '$apiEndpoint/report_templates';
    return PcoCollection.fromApiCall<PcoServicesReportTemplate>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSeries] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series`
  Future<PcoCollection<PcoServicesSeries>> getSeries(
      {PcoServicesSeriesQuery? query}) async {
    query ??= PcoServicesSeriesQuery();
    var url = '$apiEndpoint/series';
    return PcoCollection.fromApiCall<PcoServicesSeries>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesServiceType] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types`
  ///
  /// Available Query Filters:
  /// - `no_parent`
  Future<PcoCollection<PcoServicesServiceType>> getServiceTypes(
      {PcoServicesServiceTypeQuery? query}) async {
    query ??= PcoServicesServiceTypeQuery();
    var url = '$apiEndpoint/service_types';
    return PcoCollection.fromApiCall<PcoServicesServiceType>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSong] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs`
  Future<PcoCollection<PcoServicesSong>> getSongs(
      {PcoServicesSongQuery? query}) async {
    query ??= PcoServicesSongQuery();
    var url = '$apiEndpoint/songs';
    return PcoCollection.fromApiCall<PcoServicesSong>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTagGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/tag_groups`
  ///
  /// Available Query Filters:
  /// - `arrangement`
  /// - `media`
  /// - `person`
  /// - `song`
  Future<PcoCollection<PcoServicesTagGroup>> getTagGroups(
      {PcoServicesTagGroupQuery? query}) async {
    query ??= PcoServicesTagGroupQuery();
    var url = '$apiEndpoint/tag_groups';
    return PcoCollection.fromApiCall<PcoServicesTagGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams`
  Future<PcoCollection<PcoServicesTeam>> getTeams(
      {PcoServicesTeamQuery? query}) async {
    query ??= PcoServicesTeamQuery();
    var url = '$apiEndpoint/teams';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
