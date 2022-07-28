/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.749649
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People Person Object
///
/// - Application:        people
/// - Id:                 person
/// - Type:               Person
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/people
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeoplePerson()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeoplePerson.fromJson()` constructor.
/// - Manually create an object using the `PcoPeoplePerson.manual()` constructor.
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
/// A person record represents a single member/user of the application. Each person has different permissions that determine how the user can use this app (if at all).
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `givenName` (rw) -> PCO: `given_name`
/// - `firstName` (rw) -> PCO: `first_name`
/// - `nickname` (rw) -> PCO: `nickname`
/// - `middleName` (rw) -> PCO: `middle_name`
/// - `lastName` (rw) -> PCO: `last_name`
/// - `birthdate` (rw) -> PCO: `birthdate`
/// - `anniversary` (rw) -> PCO: `anniversary`
/// - `gender` (rw) -> PCO: `gender`
/// - `grade` (rw) -> PCO: `grade`
/// - `isChild` (rw) -> PCO: `child`
/// - `graduationYear` (rw) -> PCO: `graduation_year`
/// - `isSiteAdministrator` (rw) -> PCO: `site_administrator`
/// - `isAccountingAdministrator` (rw) -> PCO: `accounting_administrator`
/// - `peoplePermissions` (rw) -> PCO: `people_permissions`
/// - `membership` (rw) -> PCO: `membership`
/// - `inactivatedAt` (rw) -> PCO: `inactivated_at`
/// - `status` (rw) -> PCO: `status`
/// - `medicalNotes` (rw) -> PCO: `medical_notes`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `avatar` (rw) -> PCO: `avatar`
/// - `name` (ro) -> PCO: `name`
/// - `demographicAvatarUrl` (ro) -> PCO: `demographic_avatar_url`
/// - `directoryStatus` (ro) -> PCO: `directory_status`
/// - `isPassedBackgroundCheck` (ro) -> PCO: `passed_background_check`
/// - `isCanCreateForms` (ro) -> PCO: `can_create_forms`
/// - `schoolType` (ro) -> PCO: `school_type`
/// - `remoteId` (rw) -> PCO: `remote_id`
/// - `searchName` (ro) -> PCO: `search_name`
/// - `searchPhoneNumber` (ro) -> PCO: `search_phone_number`
/// - `searchPhoneNumberE164` (ro) -> PCO: `search_phone_number_e164`
/// - `searchNameOrEmail` (ro) -> PCO: `search_name_or_email`
/// - `searchNameOrEmailOrPhoneNumber` (ro) -> PCO: `search_name_or_email_or_phone_number`
/// - `primaryCampusId` (wo) -> PCO: `primary_campus_id`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `addresses`: include associated addresses
/// - `emails`: include associated emails
/// - `field_data`: include associated field_data
/// - `households`: include associated households
/// - `inactive_reason`: include associated inactive_reason
/// - `marital_status`: include associated marital_status
/// - `name_prefix`: include associated name_prefix
/// - `name_suffix`: include associated name_suffix
/// - `organization`: include associated organization
/// - `person_apps`: include associated person_apps
/// - `phone_numbers`: include associated phone_numbers
/// - `platform_notifications`: include associated platform_notifications
/// - `primary_campus`: include associated primary_campus
/// - `school`: include associated school
/// - `social_profiles`: include associated social_profiles
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `accounting_administrator`: (URLParameter), query on a specific accounting_administrator, example: ?where[accounting_administrator]=true
/// - `anniversary`: (URLParameter), query on a specific anniversary, example: ?where[anniversary]=2000-01-01
/// - `birthdate`: (URLParameter), query on a specific birthdate, example: ?where[birthdate]=2000-01-01
/// - `child`: (URLParameter), query on a specific child, example: ?where[child]=true
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `first_name`: (URLParameter), query on a specific first_name, example: ?where[first_name]=string
/// - `gender`: (URLParameter), query on a specific gender, example: ?where[gender]=string
/// - `given_name`: (URLParameter), query on a specific given_name, example: ?where[given_name]=string
/// - `grade`: (URLParameter), query on a specific grade, example: ?where[grade]=1
/// - `graduation_year`: (URLParameter), query on a specific graduation_year, example: ?where[graduation_year]=1
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// - `inactivated_at`: (URLParameter), Set to an ISO 8601 date or time to make the profile inactive. Set to "null" to reactivate the profile., example: ?where[inactivated_at]=2000-01-01T12:00:00Z
/// - `last_name`: (URLParameter), query on a specific last_name, example: ?where[last_name]=string
/// - `medical_notes`: (URLParameter), query on a specific medical_notes, example: ?where[medical_notes]=string
/// - `membership`: (URLParameter), query on a specific membership, example: ?where[membership]=string
/// - `middle_name`: (URLParameter), query on a specific middle_name, example: ?where[middle_name]=string
/// - `nickname`: (URLParameter), query on a specific nickname, example: ?where[nickname]=string
/// - `people_permissions`: (URLParameter), query on a specific people_permissions, example: ?where[people_permissions]=string
/// - `remote_id`: (URLParameter), query on a specific remote_id, example: ?where[remote_id]=1
/// - `search_name`: (URLParameter), Search by Name (first, last, combination), example: ?where[search_name]=string
/// - `search_name_or_email`: (URLParameter), Search by Name (first, last, combination) or Email, example: ?where[search_name_or_email]=string
/// - `search_name_or_email_or_phone_number`: (URLParameter), Search by Name (first, last, combination), Email, or Phone Number, example: ?where[search_name_or_email_or_phone_number]=string
/// - `search_phone_number`: (URLParameter), Search by Phone Number, example: ?where[search_phone_number]=string
/// - `search_phone_number_e164`: (URLParameter), Search by Phone Number E164, example: ?where[search_phone_number_e164]=string
/// - `site_administrator`: (URLParameter), query on a specific site_administrator, example: ?where[site_administrator]=true
/// - `status`: (URLParameter), Set to "inactive" to set "inactivated_at" to the current time and make the profile inactive. Set to anything else to clear "inactivated_at" and reactivate the profile., example: ?where[status]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `accounting_administrator`: (URLParameter), prefix with a hyphen (-accounting_administrator) to reverse the order
/// - `anniversary`: (URLParameter), prefix with a hyphen (-anniversary) to reverse the order
/// - `birthdate`: (URLParameter), prefix with a hyphen (-birthdate) to reverse the order
/// - `child`: (URLParameter), prefix with a hyphen (-child) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `gender`: (URLParameter), prefix with a hyphen (-gender) to reverse the order
/// - `given_name`: (URLParameter), prefix with a hyphen (-given_name) to reverse the order
/// - `grade`: (URLParameter), prefix with a hyphen (-grade) to reverse the order
/// - `graduation_year`: (URLParameter), prefix with a hyphen (-graduation_year) to reverse the order
/// - `inactivated_at`: (URLParameter), prefix with a hyphen (-inactivated_at) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
/// - `membership`: (URLParameter), prefix with a hyphen (-membership) to reverse the order
/// - `middle_name`: (URLParameter), prefix with a hyphen (-middle_name) to reverse the order
/// - `nickname`: (URLParameter), prefix with a hyphen (-nickname) to reverse the order
/// - `people_permissions`: (URLParameter), prefix with a hyphen (-people_permissions) to reverse the order
/// - `remote_id`: (URLParameter), prefix with a hyphen (-remote_id) to reverse the order
/// - `site_administrator`: (URLParameter), prefix with a hyphen (-site_administrator) to reverse the order
/// - `status`: (URLParameter), prefix with a hyphen (-status) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `notecategorysubscription-person-`: https://api.planningcenteronline.com/people/v2/people/1/
/// - `address-person-addresses`: https://api.planningcenteronline.com/people/v2/people/1/addresses
/// - `app-person-apps`: https://api.planningcenteronline.com/people/v2/people/1/apps
/// - `connectedperson-person-connected_people`: https://api.planningcenteronline.com/people/v2/people/1/connected_people
/// - `email-person-emails`: https://api.planningcenteronline.com/people/v2/people/1/emails
/// - `fielddatum-person-field_data`: https://api.planningcenteronline.com/people/v2/people/1/field_data
/// - `householdmembership-person-household_memberships`: https://api.planningcenteronline.com/people/v2/people/1/household_memberships
/// - `household-person-households`: https://api.planningcenteronline.com/people/v2/people/1/households
/// - `inactivereason-person-inactive_reason`: https://api.planningcenteronline.com/people/v2/people/1/inactive_reason
/// - `maritalstatus-person-marital_status`: https://api.planningcenteronline.com/people/v2/people/1/marital_status
/// - `messagegroup-person-message_groups`: https://api.planningcenteronline.com/people/v2/people/1/message_groups
/// - `message-person-messages`: https://api.planningcenteronline.com/people/v2/people/1/messages
/// - `nameprefix-person-name_prefix`: https://api.planningcenteronline.com/people/v2/people/1/name_prefix
/// - `namesuffix-person-name_suffix`: https://api.planningcenteronline.com/people/v2/people/1/name_suffix
/// - `note-person-notes`: https://api.planningcenteronline.com/people/v2/people/1/notes
/// - `organization-person-organization`: https://api.planningcenteronline.com/people/v2/people/1/organization
/// - `personapp-person-person_apps`: https://api.planningcenteronline.com/people/v2/people/1/person_apps
/// - `phonenumber-person-phone_numbers`: https://api.planningcenteronline.com/people/v2/people/1/phone_numbers
/// - `platformnotification-person-platform_notifications`: https://api.planningcenteronline.com/people/v2/people/1/platform_notifications
/// - `campus-person-primary_campus`: https://api.planningcenteronline.com/people/v2/people/1/primary_campus
/// - `schooloption-person-school`: https://api.planningcenteronline.com/people/v2/people/1/school
/// - `socialprofile-person-social_profiles`: https://api.planningcenteronline.com/people/v2/people/1/social_profiles
/// - `workflowcard-person-workflow_cards`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards
/// - `workflowshare-person-workflow_shares`: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares
///
/// Inbound Edges:
/// - `person-condition-created_by`: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions/1/created_by
/// - `person-email-person`: https://api.planningcenteronline.com/people/v2/emails/1/person
/// - `person-fielddatum-person`: https://api.planningcenteronline.com/people/v2/field_data/1/person
/// - `person-formsubmission-person`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/person
/// - `person-householdmembership-person`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/person
/// - `person-household-people`: https://api.planningcenteronline.com/people/v2/households/1/people
/// - `person-list-created_by`: https://api.planningcenteronline.com/people/v2/lists/1/created_by
/// - `person-list-people`: https://api.planningcenteronline.com/people/v2/lists/1/people
/// - `person-listshare-person`: https://api.planningcenteronline.com/people/v2/lists/1/shares/1/person
/// - `person-list-updated_by`: https://api.planningcenteronline.com/people/v2/lists/1/updated_by
/// - `person-messagegroup-from`: https://api.planningcenteronline.com/people/v2/message_groups/1/from
/// - `person-message-to`: https://api.planningcenteronline.com/people/v2/messages/1/to
/// - `person-notecategory-subscribers`: https://api.planningcenteronline.com/people/v2/note_categories/1/subscribers
/// - `person-note-created_by`: https://api.planningcenteronline.com/people/v2/notes/1/created_by
/// - `person-note-person`: https://api.planningcenteronline.com/people/v2/notes/1/person
/// - `person-organization-people`: https://api.planningcenteronline.com/people/v2/people
/// - `person-peopleimporthistory-person`: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/person
/// - `person-report-created_by`: https://api.planningcenteronline.com/people/v2/reports/1/created_by
/// - `person-report-updated_by`: https://api.planningcenteronline.com/people/v2/reports/1/updated_by
/// - `person-socialprofile-person`: https://api.planningcenteronline.com/people/v2/social_profiles/1/person
/// - `person-workflowcard-assignee`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/assignee
/// - `person-workflowcard-person`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/person
/// - `person-workflowshare-person`: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares/1/person
/// - `person-workflow-shared_people`: https://api.planningcenteronline.com/people/v2/workflows/1/shared_people
/// - `person-workflowstepassigneesummary-person`: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person
/// - `person-workflowstep-default_assignee`: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/default_assignee
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
///     "given_name": "string",
///     "first_name": "string",
///     "nickname": "string",
///     "middle_name": "string",
///     "last_name": "string",
///     "birthdate": "2000-01-01",
///     "anniversary": "2000-01-01",
///     "gender": "string",
///     "grade": 1,
///     "child": true,
///     "graduation_year": 1,
///     "site_administrator": true,
///     "accounting_administrator": true,
///     "people_permissions": "string",
///     "membership": "string",
///     "inactivated_at": "2000-01-01T12:00:00Z",
///     "status": "string",
///     "medical_notes": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "avatar": "string",
///     "name": "string",
///     "demographic_avatar_url": "string",
///     "directory_status": "string",
///     "passed_background_check": true,
///     "can_create_forms": true,
///     "school_type": "string",
///     "remote_id": 1
///   },
///   "relationships": {
///     "primary_campus": {
///       "data": {
///         "type": "PrimaryCampus",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeoplePerson extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Person';
  static const String kTypeId = 'person';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/people';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/people';

  /// possible includes with parameter ?include=a,b
  /// - `addresses`: include associated addresses
  /// - `emails`: include associated emails
  /// - `field_data`: include associated field_data
  /// - `households`: include associated households
  /// - `inactive_reason`: include associated inactive_reason
  /// - `marital_status`: include associated marital_status
  /// - `name_prefix`: include associated name_prefix
  /// - `name_suffix`: include associated name_suffix
  /// - `organization`: include associated organization
  /// - `person_apps`: include associated person_apps
  /// - `phone_numbers`: include associated phone_numbers
  /// - `platform_notifications`: include associated platform_notifications
  /// - `primary_campus`: include associated primary_campus
  /// - `school`: include associated school
  /// - `social_profiles`: include associated social_profiles
  static List<String> get canInclude => [
        'addresses',
        'emails',
        'field_data',
        'households',
        'inactive_reason',
        'marital_status',
        'name_prefix',
        'name_suffix',
        'organization',
        'person_apps',
        'phone_numbers',
        'platform_notifications',
        'primary_campus',
        'school',
        'social_profiles'
      ];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `accounting_administrator`: (URLParameter), query on a specific accounting_administrator, example: ?where[accounting_administrator]=true
  /// - `anniversary`: (URLParameter), query on a specific anniversary, example: ?where[anniversary]=2000-01-01
  /// - `birthdate`: (URLParameter), query on a specific birthdate, example: ?where[birthdate]=2000-01-01
  /// - `child`: (URLParameter), query on a specific child, example: ?where[child]=true
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `first_name`: (URLParameter), query on a specific first_name, example: ?where[first_name]=string
  /// - `gender`: (URLParameter), query on a specific gender, example: ?where[gender]=string
  /// - `given_name`: (URLParameter), query on a specific given_name, example: ?where[given_name]=string
  /// - `grade`: (URLParameter), query on a specific grade, example: ?where[grade]=1
  /// - `graduation_year`: (URLParameter), query on a specific graduation_year, example: ?where[graduation_year]=1
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `inactivated_at`: (URLParameter), Set to an ISO 8601 date or time to make the profile inactive. Set to "null" to reactivate the profile., example: ?where[inactivated_at]=2000-01-01T12:00:00Z
  /// - `last_name`: (URLParameter), query on a specific last_name, example: ?where[last_name]=string
  /// - `medical_notes`: (URLParameter), query on a specific medical_notes, example: ?where[medical_notes]=string
  /// - `membership`: (URLParameter), query on a specific membership, example: ?where[membership]=string
  /// - `middle_name`: (URLParameter), query on a specific middle_name, example: ?where[middle_name]=string
  /// - `nickname`: (URLParameter), query on a specific nickname, example: ?where[nickname]=string
  /// - `people_permissions`: (URLParameter), query on a specific people_permissions, example: ?where[people_permissions]=string
  /// - `remote_id`: (URLParameter), query on a specific remote_id, example: ?where[remote_id]=1
  /// - `search_name`: (URLParameter), Search by Name (first, last, combination), example: ?where[search_name]=string
  /// - `search_name_or_email`: (URLParameter), Search by Name (first, last, combination) or Email, example: ?where[search_name_or_email]=string
  /// - `search_name_or_email_or_phone_number`: (URLParameter), Search by Name (first, last, combination), Email, or Phone Number, example: ?where[search_name_or_email_or_phone_number]=string
  /// - `search_phone_number`: (URLParameter), Search by Phone Number, example: ?where[search_phone_number]=string
  /// - `search_phone_number_e164`: (URLParameter), Search by Phone Number E164, example: ?where[search_phone_number_e164]=string
  /// - `site_administrator`: (URLParameter), query on a specific site_administrator, example: ?where[site_administrator]=true
  /// - `status`: (URLParameter), Set to "inactive" to set "inactivated_at" to the current time and make the profile inactive. Set to anything else to clear "inactivated_at" and reactivate the profile., example: ?where[status]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => [
        'accounting_administrator',
        'anniversary',
        'birthdate',
        'child',
        'created_at',
        'first_name',
        'gender',
        'given_name',
        'grade',
        'graduation_year',
        'id',
        'inactivated_at',
        'last_name',
        'medical_notes',
        'membership',
        'middle_name',
        'nickname',
        'people_permissions',
        'remote_id',
        'search_name',
        'search_name_or_email',
        'search_name_or_email_or_phone_number',
        'search_phone_number',
        'search_phone_number_e164',
        'site_administrator',
        'status',
        'updated_at'
      ];

  /// possible orderings with parameter ?order=
  /// - `accounting_administrator`: (URLParameter), prefix with a hyphen (-accounting_administrator) to reverse the order
  /// - `anniversary`: (URLParameter), prefix with a hyphen (-anniversary) to reverse the order
  /// - `birthdate`: (URLParameter), prefix with a hyphen (-birthdate) to reverse the order
  /// - `child`: (URLParameter), prefix with a hyphen (-child) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `gender`: (URLParameter), prefix with a hyphen (-gender) to reverse the order
  /// - `given_name`: (URLParameter), prefix with a hyphen (-given_name) to reverse the order
  /// - `grade`: (URLParameter), prefix with a hyphen (-grade) to reverse the order
  /// - `graduation_year`: (URLParameter), prefix with a hyphen (-graduation_year) to reverse the order
  /// - `inactivated_at`: (URLParameter), prefix with a hyphen (-inactivated_at) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// - `membership`: (URLParameter), prefix with a hyphen (-membership) to reverse the order
  /// - `middle_name`: (URLParameter), prefix with a hyphen (-middle_name) to reverse the order
  /// - `nickname`: (URLParameter), prefix with a hyphen (-nickname) to reverse the order
  /// - `people_permissions`: (URLParameter), prefix with a hyphen (-people_permissions) to reverse the order
  /// - `remote_id`: (URLParameter), prefix with a hyphen (-remote_id) to reverse the order
  /// - `site_administrator`: (URLParameter), prefix with a hyphen (-site_administrator) to reverse the order
  /// - `status`: (URLParameter), prefix with a hyphen (-status) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => [
        'accounting_administrator',
        'anniversary',
        'birthdate',
        'child',
        'created_at',
        'first_name',
        'gender',
        'given_name',
        'grade',
        'graduation_year',
        'inactivated_at',
        'last_name',
        'membership',
        'middle_name',
        'nickname',
        'people_permissions',
        'remote_id',
        'site_administrator',
        'status',
        'updated_at'
      ];

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
  static const kGivenName = 'given_name';
  static const kFirstName = 'first_name';
  static const kNickname = 'nickname';
  static const kMiddleName = 'middle_name';
  static const kLastName = 'last_name';
  static const kBirthdate = 'birthdate';
  static const kAnniversary = 'anniversary';
  static const kGender = 'gender';
  static const kGrade = 'grade';
  static const kChild = 'child';
  static const kGraduationYear = 'graduation_year';
  static const kSiteAdministrator = 'site_administrator';
  static const kAccountingAdministrator = 'accounting_administrator';
  static const kPeoplePermissions = 'people_permissions';
  static const kMembership = 'membership';
  static const kInactivatedAt = 'inactivated_at';
  static const kStatus = 'status';
  static const kMedicalNotes = 'medical_notes';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kAvatar = 'avatar';
  static const kName = 'name';
  static const kDemographicAvatarUrl = 'demographic_avatar_url';
  static const kDirectoryStatus = 'directory_status';
  static const kPassedBackgroundCheck = 'passed_background_check';
  static const kCanCreateForms = 'can_create_forms';
  static const kSchoolType = 'school_type';
  static const kRemoteId = 'remote_id';
  static const kSearchName = 'search_name';
  static const kSearchPhoneNumber = 'search_phone_number';
  static const kSearchPhoneNumberE164 = 'search_phone_number_e164';
  static const kSearchNameOrEmail = 'search_name_or_email';
  static const kSearchNameOrEmailOrPhoneNumber =
      'search_name_or_email_or_phone_number';
  static const kPrimaryCampusId = 'primary_campus_id';

  // getters and setters
  @override
  List<String> get createAllowed => [
        'given_name',
        'first_name',
        'nickname',
        'middle_name',
        'last_name',
        'birthdate',
        'anniversary',
        'gender',
        'grade',
        'child',
        'graduation_year',
        'site_administrator',
        'accounting_administrator',
        'people_permissions',
        'membership',
        'inactivated_at',
        'status',
        'medical_notes',
        'avatar',
        'primary_campus_id',
        'remote_id'
      ];

  @override
  List<String> get updateAllowed => [
        'given_name',
        'first_name',
        'nickname',
        'middle_name',
        'last_name',
        'birthdate',
        'anniversary',
        'gender',
        'grade',
        'child',
        'graduation_year',
        'site_administrator',
        'accounting_administrator',
        'people_permissions',
        'membership',
        'inactivated_at',
        'status',
        'medical_notes',
        'avatar',
        'primary_campus_id',
        'remote_id'
      ];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get givenName => _attributes[kGivenName] ?? '';
  String get firstName => _attributes[kFirstName] ?? '';
  String get nickname => _attributes[kNickname] ?? '';
  String get middleName => _attributes[kMiddleName] ?? '';
  String get lastName => _attributes[kLastName] ?? '';
  String get birthdate => _attributes[kBirthdate] ?? '';
  String get anniversary => _attributes[kAnniversary] ?? '';
  String get gender => _attributes[kGender] ?? '';
  int get grade => _attributes[kGrade] ?? 0;
  bool get isChild => _attributes[kChild] == true;
  int get graduationYear => _attributes[kGraduationYear] ?? 0;
  bool get isSiteAdministrator => _attributes[kSiteAdministrator] == true;
  bool get isAccountingAdministrator =>
      _attributes[kAccountingAdministrator] == true;
  String get peoplePermissions => _attributes[kPeoplePermissions] ?? '';
  String get membership => _attributes[kMembership] ?? '';
  DateTime get inactivatedAt =>
      DateTime.parse(_attributes[kInactivatedAt] ?? '');
  String get status => _attributes[kStatus] ?? '';
  String get medicalNotes => _attributes[kMedicalNotes] ?? '';
  String get avatar => _attributes[kAvatar] ?? '';
  String get name => _attributes[kName] ?? '';
  String get demographicAvatarUrl => _attributes[kDemographicAvatarUrl] ?? '';
  String get directoryStatus => _attributes[kDirectoryStatus] ?? '';
  bool get isPassedBackgroundCheck =>
      _attributes[kPassedBackgroundCheck] == true;
  bool get isCanCreateForms => _attributes[kCanCreateForms] == true;
  String get schoolType => _attributes[kSchoolType] ?? '';
  int get remoteId => _attributes[kRemoteId] ?? 0;
  String get searchName => _attributes[kSearchName] ?? '';
  String get searchPhoneNumber => _attributes[kSearchPhoneNumber] ?? '';
  String get searchPhoneNumberE164 => _attributes[kSearchPhoneNumberE164] ?? '';
  String get searchNameOrEmail => _attributes[kSearchNameOrEmail] ?? '';
  String get searchNameOrEmailOrPhoneNumber =>
      _attributes[kSearchNameOrEmailOrPhoneNumber] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set givenName(String? x) => (x == null)
      ? _attributes.remove(kGivenName)
      : _attributes[kGivenName] = x;

  /// pass `null` to remove key from attributes
  set firstName(String? x) => (x == null)
      ? _attributes.remove(kFirstName)
      : _attributes[kFirstName] = x;

  /// pass `null` to remove key from attributes
  set nickname(String? x) =>
      (x == null) ? _attributes.remove(kNickname) : _attributes[kNickname] = x;

  /// pass `null` to remove key from attributes
  set middleName(String? x) => (x == null)
      ? _attributes.remove(kMiddleName)
      : _attributes[kMiddleName] = x;

  /// pass `null` to remove key from attributes
  set lastName(String? x) =>
      (x == null) ? _attributes.remove(kLastName) : _attributes[kLastName] = x;

  /// pass `null` to remove key from attributes
  set birthdate(String? x) => (x == null)
      ? _attributes.remove(kBirthdate)
      : _attributes[kBirthdate] = x;

  /// pass `null` to remove key from attributes
  set anniversary(String? x) => (x == null)
      ? _attributes.remove(kAnniversary)
      : _attributes[kAnniversary] = x;

  /// pass `null` to remove key from attributes
  set gender(String? x) =>
      (x == null) ? _attributes.remove(kGender) : _attributes[kGender] = x;

  /// pass `null` to remove key from attributes
  set grade(int? x) =>
      (x == null) ? _attributes.remove(kGrade) : _attributes[kGrade] = x;

  /// pass `null` to remove key from attributes
  set isChild(bool? x) =>
      (x == null) ? _attributes.remove(kChild) : _attributes[kChild] = x;

  /// pass `null` to remove key from attributes
  set graduationYear(int? x) => (x == null)
      ? _attributes.remove(kGraduationYear)
      : _attributes[kGraduationYear] = x;

  /// pass `null` to remove key from attributes
  set isSiteAdministrator(bool? x) => (x == null)
      ? _attributes.remove(kSiteAdministrator)
      : _attributes[kSiteAdministrator] = x;

  /// pass `null` to remove key from attributes
  set isAccountingAdministrator(bool? x) => (x == null)
      ? _attributes.remove(kAccountingAdministrator)
      : _attributes[kAccountingAdministrator] = x;

  /// pass `null` to remove key from attributes
  set peoplePermissions(String? x) => (x == null)
      ? _attributes.remove(kPeoplePermissions)
      : _attributes[kPeoplePermissions] = x;

  /// pass `null` to remove key from attributes
  set membership(String? x) => (x == null)
      ? _attributes.remove(kMembership)
      : _attributes[kMembership] = x;

  /// pass `null` to remove key from attributes
  set inactivatedAt(DateTime? x) => (x == null)
      ? _attributes.remove(kInactivatedAt)
      : _attributes[kInactivatedAt] = x.toIso8601String();

  /// pass `null` to remove key from attributes
  set status(String? x) =>
      (x == null) ? _attributes.remove(kStatus) : _attributes[kStatus] = x;

  /// pass `null` to remove key from attributes
  set medicalNotes(String? x) => (x == null)
      ? _attributes.remove(kMedicalNotes)
      : _attributes[kMedicalNotes] = x;

  /// pass `null` to remove key from attributes
  set avatar(String? x) =>
      (x == null) ? _attributes.remove(kAvatar) : _attributes[kAvatar] = x;

  /// pass `null` to remove key from attributes
  set remoteId(int? x) =>
      (x == null) ? _attributes.remove(kRemoteId) : _attributes[kRemoteId] = x;

  // additional setters / getters for create/update attributes

  /// pass `null` to remove key from attributes
  set primaryCampusId(String? x) => (x == null)
      ? _attributes.remove(kPrimaryCampusId)
      : _attributes[kPrimaryCampusId] = x;
  String get primaryCampusId => _attributes[kPrimaryCampusId] ?? '';

  // typed getters for each relationship

  List<PcoPeopleAddress> get includedAddresses =>
      (relationships['addresses'] as List?)?.cast<PcoPeopleAddress>() ?? [];
  List<PcoPeopleEmail> get includedEmails =>
      (relationships['emails'] as List?)?.cast<PcoPeopleEmail>() ?? [];
  List<PcoPeopleFieldDatum> get includedFieldData =>
      (relationships['field_data'] as List?)?.cast<PcoPeopleFieldDatum>() ?? [];
  List<PcoPeopleHousehold> get includedHouseholds =>
      (relationships['households'] as List?)?.cast<PcoPeopleHousehold>() ?? [];
  PcoPeopleInactiveReason? get includedInactiveReason =>
      _firstOrNull<PcoPeopleInactiveReason>(relationships['inactive_reason']);
  PcoPeopleMaritalStatus? get includedMaritalStatus =>
      _firstOrNull<PcoPeopleMaritalStatus>(relationships['marital_status']);
  PcoPeopleNamePrefix? get includedNamePrefix =>
      _firstOrNull<PcoPeopleNamePrefix>(relationships['name_prefix']);
  PcoPeopleNameSuffix? get includedNameSuffix =>
      _firstOrNull<PcoPeopleNameSuffix>(relationships['name_suffix']);
  PcoPeopleOrganization? get includedOrganization =>
      _firstOrNull<PcoPeopleOrganization>(relationships['organization']);
  List<PcoPeoplePersonApp> get includedPersonApps =>
      (relationships['person_apps'] as List?)?.cast<PcoPeoplePersonApp>() ?? [];
  List<PcoPeoplePhoneNumber> get includedPhoneNumbers =>
      (relationships['phone_numbers'] as List?)?.cast<PcoPeoplePhoneNumber>() ??
      [];
  List<PcoPeoplePlatformNotification> get includedPlatformNotifications =>
      (relationships['platform_notifications'] as List?)
          ?.cast<PcoPeoplePlatformNotification>() ??
      [];
  PcoPeopleCampus? get includedPrimaryCampus =>
      _firstOrNull<PcoPeopleCampus>(relationships['primary_campus']);
  PcoPeopleSchoolOption? get includedSchool =>
      _firstOrNull<PcoPeopleSchoolOption>(relationships['school']);
  List<PcoPeopleSocialProfile> get includedSocialProfiles =>
      (relationships['social_profiles'] as List?)
          ?.cast<PcoPeopleSocialProfile>() ??
      [];

  // Class Constructors
  PcoPeoplePerson.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeoplePerson.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeoplePerson] object using this endpoint: `https://api.planningcenteronline.com/people/v2/people`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: `givenName`, `firstName`, `nickname`, `middleName`, `lastName`, `birthdate`, `anniversary`, `gender`, `grade`, `isChild`, `graduationYear`, `isSiteAdministrator`, `isAccountingAdministrator`, `peoplePermissions`, `membership`, `inactivatedAt`, `status`, `medicalNotes`, `avatar`, `primaryCampusId`, `remoteId`
  /// - FIELDS USED WHEN UPDATING: `givenName`, `firstName`, `nickname`, `middleName`, `lastName`, `birthdate`, `anniversary`, `gender`, `grade`, `isChild`, `graduationYear`, `isSiteAdministrator`, `isAccountingAdministrator`, `peoplePermissions`, `membership`, `inactivatedAt`, `status`, `medicalNotes`, `avatar`, `primaryCampusId`, `remoteId`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoPeoplePerson(
      {String? id,
      String? givenName,
      String? firstName,
      String? nickname,
      String? middleName,
      String? lastName,
      String? birthdate,
      String? anniversary,
      String? gender,
      int? grade,
      bool? isChild,
      int? graduationYear,
      bool? isSiteAdministrator,
      bool? isAccountingAdministrator,
      String? peoplePermissions,
      String? membership,
      DateTime? inactivatedAt,
      String? status,
      String? medicalNotes,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? avatar,
      String? name,
      String? demographicAvatarUrl,
      String? directoryStatus,
      bool? isPassedBackgroundCheck,
      bool? isCanCreateForms,
      String? schoolType,
      int? remoteId,
      String? searchName,
      String? searchPhoneNumber,
      String? searchPhoneNumberE164,
      String? searchNameOrEmail,
      String? searchNameOrEmailOrPhoneNumber,
      String? primaryCampusId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeoplePerson.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/people';
    if (givenName != null) obj._attributes['given_name'] = givenName;
    if (firstName != null) obj._attributes['first_name'] = firstName;
    if (nickname != null) obj._attributes['nickname'] = nickname;
    if (middleName != null) obj._attributes['middle_name'] = middleName;
    if (lastName != null) obj._attributes['last_name'] = lastName;
    if (birthdate != null) obj._attributes['birthdate'] = birthdate;
    if (anniversary != null) obj._attributes['anniversary'] = anniversary;
    if (gender != null) obj._attributes['gender'] = gender;
    if (grade != null) obj._attributes['grade'] = grade;
    if (isChild != null) obj._attributes['child'] = isChild;
    if (graduationYear != null)
      obj._attributes['graduation_year'] = graduationYear;
    if (isSiteAdministrator != null)
      obj._attributes['site_administrator'] = isSiteAdministrator;
    if (isAccountingAdministrator != null)
      obj._attributes['accounting_administrator'] = isAccountingAdministrator;
    if (peoplePermissions != null)
      obj._attributes['people_permissions'] = peoplePermissions;
    if (membership != null) obj._attributes['membership'] = membership;
    if (inactivatedAt != null)
      obj._attributes['inactivated_at'] = inactivatedAt.toIso8601String();
    if (status != null) obj._attributes['status'] = status;
    if (medicalNotes != null) obj._attributes['medical_notes'] = medicalNotes;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (avatar != null) obj._attributes['avatar'] = avatar;
    if (name != null) obj._attributes['name'] = name;
    if (demographicAvatarUrl != null)
      obj._attributes['demographic_avatar_url'] = demographicAvatarUrl;
    if (directoryStatus != null)
      obj._attributes['directory_status'] = directoryStatus;
    if (isPassedBackgroundCheck != null)
      obj._attributes['passed_background_check'] = isPassedBackgroundCheck;
    if (isCanCreateForms != null)
      obj._attributes['can_create_forms'] = isCanCreateForms;
    if (schoolType != null) obj._attributes['school_type'] = schoolType;
    if (remoteId != null) obj._attributes['remote_id'] = remoteId;
    if (searchName != null) obj._attributes['search_name'] = searchName;
    if (searchPhoneNumber != null)
      obj._attributes['search_phone_number'] = searchPhoneNumber;
    if (searchPhoneNumberE164 != null)
      obj._attributes['search_phone_number_e164'] = searchPhoneNumberE164;
    if (searchNameOrEmail != null)
      obj._attributes['search_name_or_email'] = searchNameOrEmail;
    if (searchNameOrEmailOrPhoneNumber != null)
      obj._attributes['search_name_or_email_or_phone_number'] =
          searchNameOrEmailOrPhoneNumber;
    if (primaryCampusId != null)
      obj._attributes['primary_campus_id'] = primaryCampusId;
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

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `/people/v2/people`
  ///
  /// Available Query Filters:
  /// - `admins`
  /// - `created_since`
  /// filter people created in the last 24 hours; pass an additional `time` parameter in ISO 8601 format to specify your own timeframe
  ///
  /// - `organization_admins`
  static Future<PcoCollection<PcoPeoplePerson>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/lists/$listId/rules/$ruleId/conditions/$conditionId/created_by`
  static Future<PcoCollection<PcoPeoplePerson>>
      getCreatedByFromListAndRuleAndCondition(
    String listId,
    String ruleId,
    String conditionId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url =
        '/people/v2/lists/$listId/rules/$ruleId/conditions/$conditionId/created_by';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/emails/$emailId/person`
  static Future<PcoCollection<PcoPeoplePerson>> getFromEmail(
    String emailId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/emails/$emailId/person';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/field_data/$fieldDataId/person`
  static Future<PcoCollection<PcoPeoplePerson>> getFromFieldData(
    String fieldDataId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/field_data/$fieldDataId/person';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/forms/$formId/form_submissions/$formSubmissionId/person`
  static Future<PcoCollection<PcoPeoplePerson>> getFromFormAndFormSubmission(
    String formId,
    String formSubmissionId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url =
        '/people/v2/forms/$formId/form_submissions/$formSubmissionId/person';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/households/$householdId/household_memberships/$householdMembershipId/person`
  static Future<PcoCollection<PcoPeoplePerson>>
      getFromHouseholdAndHouseholdMembership(
    String householdId,
    String householdMembershipId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url =
        '/people/v2/households/$householdId/household_memberships/$householdMembershipId/person';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `/people/v2/households/$householdId/people`
  ///
  /// Available Query Filters:
  /// - `non_pending`
  /// - `without_deceased`
  static Future<PcoCollection<PcoPeoplePerson>> getFromHousehold(
    String householdId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/households/$householdId/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/lists/$listId/created_by`
  static Future<PcoCollection<PcoPeoplePerson>> getCreatedByFromList(
    String listId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/lists/$listId/created_by';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `/people/v2/lists/$listId/people`
  static Future<PcoCollection<PcoPeoplePerson>> getFromList(
    String listId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/lists/$listId/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/lists/$listId/shares/$shareId/person`
  static Future<PcoCollection<PcoPeoplePerson>> getFromListAndShare(
    String listId,
    String shareId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/lists/$listId/shares/$shareId/person';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/lists/$listId/updated_by`
  static Future<PcoCollection<PcoPeoplePerson>> getUpdatedByFromList(
    String listId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/lists/$listId/updated_by';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/message_groups/$messageGroupId/from`
  static Future<PcoCollection<PcoPeoplePerson>> getFromFromMessageGroup(
    String messageGroupId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/message_groups/$messageGroupId/from';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/messages/$messageId/to`
  static Future<PcoCollection<PcoPeoplePerson>> getToFromMessage(
    String messageId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/messages/$messageId/to';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/note_categories/$noteCategoryId/subscribers`
  static Future<PcoCollection<PcoPeoplePerson>> getSubscribersFromNoteCategory(
    String noteCategoryId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/note_categories/$noteCategoryId/subscribers';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/notes/$noteId/created_by`
  static Future<PcoCollection<PcoPeoplePerson>> getCreatedByFromNote(
    String noteId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/notes/$noteId/created_by';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/notes/$noteId/person`
  static Future<PcoCollection<PcoPeoplePerson>> getFromNote(
    String noteId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/notes/$noteId/person';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/people_imports/$peopleImportId/histories/$historyId/person`
  static Future<PcoCollection<PcoPeoplePerson>> getFromPeopleImportAndHistory(
    String peopleImportId,
    String historyId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url =
        '/people/v2/people_imports/$peopleImportId/histories/$historyId/person';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/reports/$reportId/created_by`
  static Future<PcoCollection<PcoPeoplePerson>> getCreatedByFromReport(
    String reportId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/reports/$reportId/created_by';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/reports/$reportId/updated_by`
  static Future<PcoCollection<PcoPeoplePerson>> getUpdatedByFromReport(
    String reportId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/reports/$reportId/updated_by';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/social_profiles/$socialProfileId/person`
  static Future<PcoCollection<PcoPeoplePerson>> getFromSocialProfile(
    String socialProfileId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/social_profiles/$socialProfileId/person';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/people/$personId/home_workflow_cards/$workflowCardId/assignee`
  static Future<PcoCollection<PcoPeoplePerson>>
      getAssigneeFromPersonAndWorkflowCard(
    String personId,
    String workflowCardId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url =
        '/people/v2/people/$personId/home_workflow_cards/$workflowCardId/assignee';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/people/$personId/home_workflow_cards/$workflowCardId/person`
  static Future<PcoCollection<PcoPeoplePerson>> getFromPersonAndWorkflowCard(
    String personId,
    String workflowCardId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url =
        '/people/v2/people/$personId/home_workflow_cards/$workflowCardId/person';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/people/$personId/workflow_shares/$workflowShareId/person`
  static Future<PcoCollection<PcoPeoplePerson>> getFromPersonAndWorkflowShare(
    String personId,
    String workflowShareId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url =
        '/people/v2/people/$personId/workflow_shares/$workflowShareId/person';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/$workflowId/shared_people`
  static Future<PcoCollection<PcoPeoplePerson>> getSharedPeopleFromWorkflow(
    String workflowId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/workflows/$workflowId/shared_people';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries/$assigneeSummaryId/person`
  static Future<PcoCollection<PcoPeoplePerson>>
      getFromWorkflowAndStepAndAssigneeSummary(
    String workflowId,
    String stepId,
    String assigneeSummaryId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url =
        '/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries/$assigneeSummaryId/person';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/$workflowId/steps/$stepId/default_assignee`
  static Future<PcoCollection<PcoPeoplePerson>>
      getDefaultAssigneeFromWorkflowAndStep(
    String workflowId,
    String stepId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/default_assignee';

    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleAddress] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/addresses`
  Future<PcoCollection<PcoPeopleAddress>> getAddresses({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/addresses';
    return PcoCollection.fromApiCall<PcoPeopleAddress>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/apps`
  Future<PcoCollection<PcoPeopleApp>> getApps({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/apps';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleConnectedPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/connected_people`
  Future<PcoCollection<PcoPeopleConnectedPerson>> getConnectedPeople({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/connected_people';
    return PcoCollection.fromApiCall<PcoPeopleConnectedPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleEmail] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/emails`
  Future<PcoCollection<PcoPeopleEmail>> getEmails({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/emails';
    return PcoCollection.fromApiCall<PcoPeopleEmail>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFieldDatum] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/field_data`
  Future<PcoCollection<PcoPeopleFieldDatum>> getFieldData({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeFieldDefinition = false,
    bool includeFieldOption = false,
    bool includeTab = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeFieldDefinition) query.include.add('field_definition');
    if (includeFieldOption) query.include.add('field_option');
    if (includeTab) query.include.add('tab');
    var url = '$apiEndpoint/field_data';
    return PcoCollection.fromApiCall<PcoPeopleFieldDatum>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleHouseholdMembership] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/household_memberships`
  Future<PcoCollection<PcoPeopleHouseholdMembership>> getHouseholdMemberships({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeHousehold = false,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeHousehold) query.include.add('household');
    if (includePerson) query.include.add('person');
    var url = '$apiEndpoint/household_memberships';
    return PcoCollection.fromApiCall<PcoPeopleHouseholdMembership>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/households`
  Future<PcoCollection<PcoPeopleHousehold>> getHouseholds({
    PlanningCenterApiQuery? query,
    bool includePeople = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePeople) query.include.add('people');
    var url = '$apiEndpoint/households';
    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleInactiveReason] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/inactive_reason`
  Future<PcoCollection<PcoPeopleInactiveReason>> getInactiveReason({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/inactive_reason';
    return PcoCollection.fromApiCall<PcoPeopleInactiveReason>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleMaritalStatus] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/marital_status`
  Future<PcoCollection<PcoPeopleMaritalStatus>> getMaritalStatus({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/marital_status';
    return PcoCollection.fromApiCall<PcoPeopleMaritalStatus>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/message_groups`
  Future<PcoCollection<PcoPeopleMessageGroup>> getMessageGroups({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeApp = false,
    bool includeFrom = false,
    bool includeMessages = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeApp) query.include.add('app');
    if (includeFrom) query.include.add('from');
    if (includeMessages) query.include.add('messages');
    var url = '$apiEndpoint/message_groups';
    return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/messages`
  ///
  /// Available Query Filters:
  /// - `created_after`
  /// - `received`
  /// - `sent`
  /// - `unread`
  Future<PcoCollection<PcoPeopleMessage>> getMessages({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeMessageGroup = false,
    bool includeTo = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeMessageGroup) query.include.add('message_group');
    if (includeTo) query.include.add('to');
    var url = '$apiEndpoint/messages';
    return PcoCollection.fromApiCall<PcoPeopleMessage>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNamePrefix] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/name_prefix`
  Future<PcoCollection<PcoPeopleNamePrefix>> getNamePrefix({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/name_prefix';
    return PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNameSuffix] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/name_suffix`
  Future<PcoCollection<PcoPeopleNameSuffix>> getNameSuffix({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/name_suffix';
    return PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/notes`
  Future<PcoCollection<PcoPeopleNote>> getNotes({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCategory = false,
    bool includeCreatedBy = false,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeCategory) query.include.add('category');
    if (includeCreatedBy) query.include.add('created_by');
    if (includePerson) query.include.add('person');
    var url = '$apiEndpoint/notes';
    return PcoCollection.fromApiCall<PcoPeopleNote>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleOrganization] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/organization`
  Future<PcoCollection<PcoPeopleOrganization>> getOrganization({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/organization';
    return PcoCollection.fromApiCall<PcoPeopleOrganization>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePersonApp] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/person_apps`
  Future<PcoCollection<PcoPeoplePersonApp>> getPersonApps({
    PlanningCenterApiQuery? query,
    bool includeApp = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeApp) query.include.add('app');
    var url = '$apiEndpoint/person_apps';
    return PcoCollection.fromApiCall<PcoPeoplePersonApp>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePhoneNumber] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/phone_numbers`
  Future<PcoCollection<PcoPeoplePhoneNumber>> getPhoneNumbers({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/phone_numbers';
    return PcoCollection.fromApiCall<PcoPeoplePhoneNumber>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePlatformNotification] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/platform_notifications`
  Future<PcoCollection<PcoPeoplePlatformNotification>>
      getPlatformNotifications({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/platform_notifications';
    return PcoCollection.fromApiCall<PcoPeoplePlatformNotification>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleCampus] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/primary_campus`
  Future<PcoCollection<PcoPeopleCampus>> getPrimaryCampus({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeLists = false,
    bool includeServiceTimes = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeLists) query.include.add('lists');
    if (includeServiceTimes) query.include.add('service_times');
    var url = '$apiEndpoint/primary_campus';
    return PcoCollection.fromApiCall<PcoPeopleCampus>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/school`
  Future<PcoCollection<PcoPeopleSchoolOption>> getSchool({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/school';
    return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleSocialProfile] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/social_profiles`
  Future<PcoCollection<PcoPeopleSocialProfile>> getSocialProfiles({
    PlanningCenterApiQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePerson) query.include.add('person');
    var url = '$apiEndpoint/social_profiles';
    return PcoCollection.fromApiCall<PcoPeopleSocialProfile>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowCard] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_cards`
  ///
  /// Available Query Filters:
  /// - `assigned`
  Future<PcoCollection<PcoPeopleWorkflowCard>> getWorkflowCards({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAssignee = false,
    bool includeCurrentStep = false,
    bool includePerson = false,
    bool includeWorkflow = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeoplePerson.canInclude);
    if (includeAssignee) query.include.add('assignee');
    if (includeCurrentStep) query.include.add('current_step');
    if (includePerson) query.include.add('person');
    if (includeWorkflow) query.include.add('workflow');
    var url = '$apiEndpoint/workflow_cards';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCard>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowShare] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_shares`
  Future<PcoCollection<PcoPeopleWorkflowShare>> getWorkflowShares({
    PlanningCenterApiQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePerson) query.include.add('person');
    var url = '$apiEndpoint/workflow_shares';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
