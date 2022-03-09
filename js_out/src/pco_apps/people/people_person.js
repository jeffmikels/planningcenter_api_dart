/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.883152
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People Person Object
/// 
/// - Application:        people
/// - Id:                 person
/// - Type:               Person
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people
/// 
/// Description:
/// A person record represents a single member/user of the application. Each person has different permissions that determine how the user can use this app (if at all).
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// - addresses: include associated addresses 
/// - emails: include associated emails 
/// - field_data: include associated field_data 
/// - households: include associated households 
/// - inactive_reason: include associated inactive_reason 
/// - marital_status: include associated marital_status 
/// - name_prefix: include associated name_prefix 
/// - name_suffix: include associated name_suffix 
/// - organization: include associated organization 
/// - person_apps: include associated person_apps 
/// - phone_numbers: include associated phone_numbers 
/// - platform_notifications: include associated platform_notifications 
/// - primary_campus: include associated primary_campus 
/// - school: include associated school 
/// - social_profiles: include associated social_profiles 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
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
/// Possible orderings with parameter ?order=
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
/// All Outbound Edges:
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
/// All Inbound Edges:
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
/// All Actions:
/// NONE
///
export class PcoPeoplePerson extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'Person';
  static kTypeId = 'person';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'person-organization-people';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people';

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
  static get canInclude() { return ['addresses','emails','field_data','households','inactive_reason','marital_status','name_prefix','name_suffix','organization','person_apps','phone_numbers','platform_notifications','primary_campus','school','social_profiles'] }

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
  static get canQuery() { return ['accounting_administrator','anniversary','birthdate','child','created_at','first_name','gender','given_name','grade','graduation_year','id','inactivated_at','last_name','medical_notes','membership','middle_name','nickname','people_permissions','remote_id','search_name','search_name_or_email','search_name_or_email_or_phone_number','search_phone_number','search_phone_number_e164','site_administrator','status','updated_at'] }

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
  static get canOrderBy() { return ['accounting_administrator','anniversary','birthdate','child','created_at','first_name','gender','given_name','grade','graduation_year','inactivated_at','last_name','membership','middle_name','nickname','people_permissions','remote_id','site_administrator','status','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeoplePerson.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeoplePerson.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeoplePerson.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kGivenName() { return 'given_name' }
  static get kFirstName() { return 'first_name' }
  static get kNickname() { return 'nickname' }
  static get kMiddleName() { return 'middle_name' }
  static get kLastName() { return 'last_name' }
  static get kBirthdate() { return 'birthdate' }
  static get kAnniversary() { return 'anniversary' }
  static get kGender() { return 'gender' }
  static get kGrade() { return 'grade' }
  static get kChild() { return 'child' }
  static get kGraduationYear() { return 'graduation_year' }
  static get kSiteAdministrator() { return 'site_administrator' }
  static get kAccountingAdministrator() { return 'accounting_administrator' }
  static get kPeoplePermissions() { return 'people_permissions' }
  static get kMembership() { return 'membership' }
  static get kInactivatedAt() { return 'inactivated_at' }
  static get kStatus() { return 'status' }
  static get kMedicalNotes() { return 'medical_notes' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kAvatar() { return 'avatar' }
  static get kName() { return 'name' }
  static get kDemographicAvatarUrl() { return 'demographic_avatar_url' }
  static get kDirectoryStatus() { return 'directory_status' }
  static get kPassedBackgroundCheck() { return 'passed_background_check' }
  static get kCanCreateForms() { return 'can_create_forms' }
  static get kSchoolType() { return 'school_type' }
  static get kRemoteId() { return 'remote_id' }
  static get kSearchName() { return 'search_name' }
  static get kSearchPhoneNumber() { return 'search_phone_number' }
  static get kSearchPhoneNumberE164() { return 'search_phone_number_e164' }
  static get kSearchNameOrEmail() { return 'search_name_or_email' }
  static get kSearchNameOrEmailOrPhoneNumber() { return 'search_name_or_email_or_phone_number' }
  static get kPrimaryCampusId() { return 'primary_campus_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['given_name','first_name','nickname','middle_name','last_name','birthdate','anniversary','gender','grade','child','graduation_year','site_administrator','accounting_administrator','people_permissions','membership','inactivated_at','status','medical_notes','avatar','primary_campus_id','remote_id']; }

  // @override
  get updateAllowed() { return ['given_name','first_name','nickname','middle_name','last_name','birthdate','anniversary','gender','grade','child','graduation_year','site_administrator','accounting_administrator','people_permissions','membership','inactivated_at','status','medical_notes','avatar','primary_campus_id','remote_id']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get givenName() { return attributes[this.constructor.kGivenName] ?? ''; }
  get firstName() { return attributes[this.constructor.kFirstName] ?? ''; }
  get nickname() { return attributes[this.constructor.kNickname] ?? ''; }
  get middleName() { return attributes[this.constructor.kMiddleName] ?? ''; }
  get lastName() { return attributes[this.constructor.kLastName] ?? ''; }
  get birthdate() { return attributes[this.constructor.kBirthdate] ?? ''; }
  get anniversary() { return attributes[this.constructor.kAnniversary] ?? ''; }
  get gender() { return attributes[this.constructor.kGender] ?? ''; }
  get grade() { return attributes[this.constructor.kGrade] ?? 0; }
  get isChild() { return attributes[this.constructor.kChild] == true; }
  get graduationYear() { return attributes[this.constructor.kGraduationYear] ?? 0; }
  get isSiteAdministrator() { return attributes[this.constructor.kSiteAdministrator] == true; }
  get isAccountingAdministrator() { return attributes[this.constructor.kAccountingAdministrator] == true; }
  get peoplePermissions() { return attributes[this.constructor.kPeoplePermissions] ?? ''; }
  get membership() { return attributes[this.constructor.kMembership] ?? ''; }
  get inactivatedAt() { return Date.parse(attributes[this.constructor.kInactivatedAt] ?? 0); }
  get status() { return attributes[this.constructor.kStatus] ?? ''; }
  get medicalNotes() { return attributes[this.constructor.kMedicalNotes] ?? ''; }
  get avatar() { return attributes[this.constructor.kAvatar] ?? ''; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get demographicAvatarUrl() { return attributes[this.constructor.kDemographicAvatarUrl] ?? ''; }
  get directoryStatus() { return attributes[this.constructor.kDirectoryStatus] ?? ''; }
  get isPassedBackgroundCheck() { return attributes[this.constructor.kPassedBackgroundCheck] == true; }
  get isCanCreateForms() { return attributes[this.constructor.kCanCreateForms] == true; }
  get schoolType() { return attributes[this.constructor.kSchoolType] ?? ''; }
  get remoteId() { return attributes[this.constructor.kRemoteId] ?? 0; }
  get searchName() { return attributes[this.constructor.kSearchName] ?? ''; }
  get searchPhoneNumber() { return attributes[this.constructor.kSearchPhoneNumber] ?? ''; }
  get searchPhoneNumberE164() { return attributes[this.constructor.kSearchPhoneNumberE164] ?? ''; }
  get searchNameOrEmail() { return attributes[this.constructor.kSearchNameOrEmail] ?? ''; }
  get searchNameOrEmailOrPhoneNumber() { return attributes[this.constructor.kSearchNameOrEmailOrPhoneNumber] ?? ''; }
  

  // setters for object attributes

  set givenName(s) {attributes[this.constructor.kGivenName] = s;}
  set firstName(s) {attributes[this.constructor.kFirstName] = s;}
  set nickname(s) {attributes[this.constructor.kNickname] = s;}
  set middleName(s) {attributes[this.constructor.kMiddleName] = s;}
  set lastName(s) {attributes[this.constructor.kLastName] = s;}
  set birthdate(s) {attributes[this.constructor.kBirthdate] = s;}
  set anniversary(s) {attributes[this.constructor.kAnniversary] = s;}
  set gender(s) {attributes[this.constructor.kGender] = s;}
  set grade(n) { attributes[this.constructor.kGrade] = n; }
  set isChild(b) { attributes[this.constructor.kChild] = b; }
  set graduationYear(n) { attributes[this.constructor.kGraduationYear] = n; }
  set isSiteAdministrator(b) { attributes[this.constructor.kSiteAdministrator] = b; }
  set isAccountingAdministrator(b) { attributes[this.constructor.kAccountingAdministrator] = b; }
  set peoplePermissions(s) {attributes[this.constructor.kPeoplePermissions] = s;}
  set membership(s) {attributes[this.constructor.kMembership] = s;}
  set inactivatedAt(d) { attributes[this.constructor.kInactivatedAt] = d.toISOString(); }
  set status(s) {attributes[this.constructor.kStatus] = s;}
  set medicalNotes(s) {attributes[this.constructor.kMedicalNotes] = s;}
  set avatar(s) {attributes[this.constructor.kAvatar] = s;}
  set remoteId(n) { attributes[this.constructor.kRemoteId] = n; }
  

  // additional setters and getters for assignable values

  get primaryCampusId() { return attributes[this.constructor.kPrimaryCampusId] ?? ''; }
  set primaryCampusId(s) {attributes[this.constructor.kPrimaryCampusId] = s;}
  



  // Class Constructors
  // PcoPeoplePerson._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeoplePerson({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeoplePerson] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeoplePerson.kPcoApplication, PcoPeoplePerson.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/people`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `/people/v2/people`
  /// 
  /// Available Query Filters:
  /// - `admins`
  /// - `created_since`
  /// filter people created in the last 24 hours; pass an additional `time` parameter in ISO 8601 format to specify your own timeframe
  /// 
  /// - `organization_admins`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/lists/${listId}/rules/${ruleId}/conditions/${conditionId}/created_by`
  static getCreatedByFromListAndRuleAndCondition(listId, ruleId, conditionId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/lists/${listId}/rules/${ruleId}/conditions/${conditionId}/created_by`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/emails/${emailId}/person`
  static getFromEmail(emailId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/emails/${emailId}/person`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/field_data/${fieldDataId}/person`
  static getFromFieldData(fieldDataId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/field_data/${fieldDataId}/person`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/forms/${formId}/form_submissions/${formSubmissionId}/person`
  static getFromFormAndFormSubmission(formId, formSubmissionId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/forms/${formId}/form_submissions/${formSubmissionId}/person`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/households/${householdId}/household_memberships/${householdMembershipId}/person`
  static getFromHouseholdAndHouseholdMembership(householdId, householdMembershipId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/households/${householdId}/household_memberships/${householdMembershipId}/person`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/households/${householdId}/people`
  /// 
  /// Available Query Filters:
  /// - `non_pending`
  /// - `without_deceased`
  static getPeopleFromHousehold(householdId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/households/${householdId}/people`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/lists/${listId}/created_by`
  static getCreatedByFromList(listId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/lists/${listId}/created_by`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/lists/${listId}/people`
  static getPeopleFromList(listId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/lists/${listId}/people`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/lists/${listId}/shares/${shareId}/person`
  static getFromListAndShare(listId, shareId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/lists/${listId}/shares/${shareId}/person`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/lists/${listId}/updated_by`
  static getUpdatedByFromList(listId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/lists/${listId}/updated_by`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/message_groups/${messageGroupId}/from`
  static getFromFromMessageGroup(messageGroupId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/message_groups/${messageGroupId}/from`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/messages/${messageId}/to`
  static getToFromMessage(messageId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/messages/${messageId}/to`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/note_categories/${noteCategoryId}/subscribers`
  static getSubscribersFromNoteCategory(noteCategoryId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/note_categories/${noteCategoryId}/subscribers`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/notes/${noteId}/created_by`
  static getCreatedByFromNote(noteId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/notes/${noteId}/created_by`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/notes/${noteId}/person`
  static getFromNote(noteId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/notes/${noteId}/person`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/people_imports/${peopleImportId}/histories/${historyId}/person`
  static getFromPeopleImportAndHistory(peopleImportId, historyId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people_imports/${peopleImportId}/histories/${historyId}/person`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/reports/${reportId}/created_by`
  static getCreatedByFromReport(reportId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/reports/${reportId}/created_by`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/reports/${reportId}/updated_by`
  static getUpdatedByFromReport(reportId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/reports/${reportId}/updated_by`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/social_profiles/${socialProfileId}/person`
  static getFromSocialProfile(socialProfileId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/social_profiles/${socialProfileId}/person`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/people/${peopleId}/home_workflow_cards/${workflowCardId}/assignee`
  static getAssigneeFromPeopleAndWorkflowCard(peopleId, workflowCardId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/home_workflow_cards/${workflowCardId}/assignee`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/people/${peopleId}/home_workflow_cards/${workflowCardId}/person`
  static getFromPeopleAndWorkflowCard(peopleId, workflowCardId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/home_workflow_cards/${workflowCardId}/person`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/people/${peopleId}/workflow_shares/${workflowShareId}/person`
  static getFromPeopleAndWorkflowShare(peopleId, workflowShareId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/workflow_shares/${workflowShareId}/person`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/${workflowId}/shared_people`
  static getSharedPeopleFromWorkflow(workflowId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/workflows/${workflowId}/shared_people`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/${workflowId}/steps/${stepId}/assignee_summaries/${assigneeSummaryId}/person`
  static getFromWorkflowAndStepAndAssigneeSummary(workflowId, stepId, assigneeSummaryId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/workflows/${workflowId}/steps/${stepId}/assignee_summaries/${assigneeSummaryId}/person`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/${workflowId}/steps/${stepId}/default_assignee`
  static getDefaultAssigneeFromWorkflowAndStep(workflowId, stepId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/workflows/${workflowId}/steps/${stepId}/default_assignee`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleAddres] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/addresses`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAddresses({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleAddres.canInclude;
    let url = `${apiEndpoint}/addresses`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/apps`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getApps({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    let url = `${apiEndpoint}/apps`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleConnectedPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/connected_people`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getConnectedPeople({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleConnectedPerson.canInclude;
    let url = `${apiEndpoint}/connected_people`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleEmail] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/emails`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEmails({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleEmail.canInclude;
    let url = `${apiEndpoint}/emails`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFieldDatum] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/field_data`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFieldData({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFieldDatum.canInclude;
    let url = `${apiEndpoint}/field_data`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleHouseholdMembership] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/household_memberships`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getHouseholdMemberships({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleHouseholdMembership.canInclude;
    let url = `${apiEndpoint}/household_memberships`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/households`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getHouseholds({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    let url = `${apiEndpoint}/households`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleInactiveReason] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/inactive_reason`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getInactiveReason({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleInactiveReason.canInclude;
    let url = `${apiEndpoint}/inactive_reason`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleMaritalStatu] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/marital_status`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getMaritalStatus({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleMaritalStatu.canInclude;
    let url = `${apiEndpoint}/marital_status`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/message_groups`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getMessageGroups({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
    let url = `${apiEndpoint}/message_groups`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/messages`
  /// 
  /// Available Query Filters:
  /// - `created_after`
  /// - `received`
  /// - `sent`
  /// - `unread`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getMessages({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleMessage.canInclude;
    let url = `${apiEndpoint}/messages`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNamePrefix] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/name_prefix`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getNamePrefix({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNamePrefix.canInclude;
    let url = `${apiEndpoint}/name_prefix`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNameSuffix] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/name_suffix`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getNameSuffix({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNameSuffix.canInclude;
    let url = `${apiEndpoint}/name_suffix`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/notes`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getNotes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNote.canInclude;
    let url = `${apiEndpoint}/notes`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleOrganization] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/organization`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getOrganization({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleOrganization.canInclude;
    let url = `${apiEndpoint}/organization`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePersonApp] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/person_apps`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPersonApps({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePersonApp.canInclude;
    let url = `${apiEndpoint}/person_apps`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePhoneNumber] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/phone_numbers`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPhoneNumbers({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePhoneNumber.canInclude;
    let url = `${apiEndpoint}/phone_numbers`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePlatformNotification] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/platform_notifications`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPlatformNotifications({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePlatformNotification.canInclude;
    let url = `${apiEndpoint}/platform_notifications`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleCampus] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/primary_campus`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPrimaryCampus({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    let url = `${apiEndpoint}/primary_campus`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/school`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSchool({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    let url = `${apiEndpoint}/school`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleSocialProfile] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/social_profiles`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSocialProfiles({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleSocialProfile.canInclude;
    let url = `${apiEndpoint}/social_profiles`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowCard] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_cards`
  /// 
  /// Available Query Filters:
  /// - `assigned`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getWorkflowCards({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowCard.canInclude;
    let url = `${apiEndpoint}/workflow_cards`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowShare] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_shares`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getWorkflowShares({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowShare.canInclude;
    let url = `${apiEndpoint}/workflow_shares`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
