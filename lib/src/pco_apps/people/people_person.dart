/// This file was generated on 2021-11-25T00:07:20.591


import '../../pco.dart';

/// This class represents a PCO People Person Object
/// 
/// Application: people
/// Id:          person
/// Type:        Person
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A person record represents a single member/user of the application. Each person has different permissions that determine how the user can use this app (if at all).
/// 
/// Example:
/// 
/// {"type":"Person","id":"1","attributes":{"given_name":"string","first_name":"string","nickname":"string","middle_name":"string","last_name":"string","birthdate":"2000-01-01","anniversary":"2000-01-01","gender":"string","grade":1,"child":true,"graduation_year":1,"site_administrator":true,"accounting_administrator":true,"people_permissions":"string","membership":"string","inactivated_at":"2000-01-01T12:00:00Z","status":"string","medical_notes":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","avatar":"string","name":"string","demographic_avatar_url":"string","directory_status":"string","passed_background_check":true,"can_create_forms":true,"school_type":"string","remote_id":1},"relationships":{"primary_campus":{"data":{"type":"PrimaryCampus","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/people
/// 
/// possible includes with parameter ?include=a,b
/// @addresses: include associated addresses 
/// @emails: include associated emails 
/// @field_data: include associated field_data 
/// @households: include associated households 
/// @inactive_reason: include associated inactive_reason 
/// @marital_status: include associated marital_status 
/// @name_prefix: include associated name_prefix 
/// @name_suffix: include associated name_suffix 
/// @organization: include associated organization 
/// @person_apps: include associated person_apps 
/// @phone_numbers: include associated phone_numbers 
/// @platform_notifications: include associated platform_notifications 
/// @primary_campus: include associated primary_campus 
/// @school: include associated school 
/// @social_profiles: include associated social_profiles 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @accounting_administrator (URLParameter), query on a specific accounting_administrator, example: ?where[accounting_administrator]=true
/// @anniversary (URLParameter), query on a specific anniversary, example: ?where[anniversary]=2000-01-01
/// @birthdate (URLParameter), query on a specific birthdate, example: ?where[birthdate]=2000-01-01
/// @child (URLParameter), query on a specific child, example: ?where[child]=true
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @first_name (URLParameter), query on a specific first_name, example: ?where[first_name]=string
/// @gender (URLParameter), query on a specific gender, example: ?where[gender]=string
/// @given_name (URLParameter), query on a specific given_name, example: ?where[given_name]=string
/// @grade (URLParameter), query on a specific grade, example: ?where[grade]=1
/// @graduation_year (URLParameter), query on a specific graduation_year, example: ?where[graduation_year]=1
/// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// @inactivated_at (URLParameter), Set to an ISO 8601 date or time to make the profile inactive. Set to "null" to reactivate the profile., example: ?where[inactivated_at]=2000-01-01T12:00:00Z
/// @last_name (URLParameter), query on a specific last_name, example: ?where[last_name]=string
/// @medical_notes (URLParameter), query on a specific medical_notes, example: ?where[medical_notes]=string
/// @membership (URLParameter), query on a specific membership, example: ?where[membership]=string
/// @middle_name (URLParameter), query on a specific middle_name, example: ?where[middle_name]=string
/// @nickname (URLParameter), query on a specific nickname, example: ?where[nickname]=string
/// @people_permissions (URLParameter), query on a specific people_permissions, example: ?where[people_permissions]=string
/// @remote_id (URLParameter), query on a specific remote_id, example: ?where[remote_id]=1
/// @search_name (URLParameter), Search by Name (first, last, combination), example: ?where[search_name]=string
/// @search_name_or_email (URLParameter), Search by Name (first, last, combination) or Email, example: ?where[search_name_or_email]=string
/// @search_name_or_email_or_phone_number (URLParameter), Search by Name (first, last, combination), Email, or Phone Number, example: ?where[search_name_or_email_or_phone_number]=string
/// @search_phone_number (URLParameter), Search by Phone Number, example: ?where[search_phone_number]=string
/// @search_phone_number_e164 (URLParameter), Search by Phone Number E164, example: ?where[search_phone_number_e164]=string
/// @site_administrator (URLParameter), query on a specific site_administrator, example: ?where[site_administrator]=true
/// @status (URLParameter), Set to "inactive" to set "inactivated_at" to the current time and make the profile inactive. Set to anything else to clear "inactivated_at" and reactivate the profile., example: ?where[status]=string
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @accounting_administrator (URLParameter), prefix with a hyphen (-accounting_administrator) to reverse the order
/// @anniversary (URLParameter), prefix with a hyphen (-anniversary) to reverse the order
/// @birthdate (URLParameter), prefix with a hyphen (-birthdate) to reverse the order
/// @child (URLParameter), prefix with a hyphen (-child) to reverse the order
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// @gender (URLParameter), prefix with a hyphen (-gender) to reverse the order
/// @given_name (URLParameter), prefix with a hyphen (-given_name) to reverse the order
/// @grade (URLParameter), prefix with a hyphen (-grade) to reverse the order
/// @graduation_year (URLParameter), prefix with a hyphen (-graduation_year) to reverse the order
/// @inactivated_at (URLParameter), prefix with a hyphen (-inactivated_at) to reverse the order
/// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
/// @membership (URLParameter), prefix with a hyphen (-membership) to reverse the order
/// @middle_name (URLParameter), prefix with a hyphen (-middle_name) to reverse the order
/// @nickname (URLParameter), prefix with a hyphen (-nickname) to reverse the order
/// @people_permissions (URLParameter), prefix with a hyphen (-people_permissions) to reverse the order
/// @remote_id (URLParameter), prefix with a hyphen (-remote_id) to reverse the order
/// @site_administrator (URLParameter), prefix with a hyphen (-site_administrator) to reverse the order
/// @status (URLParameter), prefix with a hyphen (-status) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeoplePerson extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Person';
  static const String kTypeId = 'person';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'person-organization-people';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people';

  /// possible includes with parameter ?include=a,b
  /// @addresses: include associated addresses 
  /// @emails: include associated emails 
  /// @field_data: include associated field_data 
  /// @households: include associated households 
  /// @inactive_reason: include associated inactive_reason 
  /// @marital_status: include associated marital_status 
  /// @name_prefix: include associated name_prefix 
  /// @name_suffix: include associated name_suffix 
  /// @organization: include associated organization 
  /// @person_apps: include associated person_apps 
  /// @phone_numbers: include associated phone_numbers 
  /// @platform_notifications: include associated platform_notifications 
  /// @primary_campus: include associated primary_campus 
  /// @school: include associated school 
  /// @social_profiles: include associated social_profiles 
  static List<String> get canInclude => ['addresses','emails','field_data','households','inactive_reason','marital_status','name_prefix','name_suffix','organization','person_apps','phone_numbers','platform_notifications','primary_campus','school','social_profiles'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @accounting_administrator (URLParameter), query on a specific accounting_administrator, example: ?where[accounting_administrator]=true
  /// @anniversary (URLParameter), query on a specific anniversary, example: ?where[anniversary]=2000-01-01
  /// @birthdate (URLParameter), query on a specific birthdate, example: ?where[birthdate]=2000-01-01
  /// @child (URLParameter), query on a specific child, example: ?where[child]=true
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @first_name (URLParameter), query on a specific first_name, example: ?where[first_name]=string
  /// @gender (URLParameter), query on a specific gender, example: ?where[gender]=string
  /// @given_name (URLParameter), query on a specific given_name, example: ?where[given_name]=string
  /// @grade (URLParameter), query on a specific grade, example: ?where[grade]=1
  /// @graduation_year (URLParameter), query on a specific graduation_year, example: ?where[graduation_year]=1
  /// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// @inactivated_at (URLParameter), Set to an ISO 8601 date or time to make the profile inactive. Set to "null" to reactivate the profile., example: ?where[inactivated_at]=2000-01-01T12:00:00Z
  /// @last_name (URLParameter), query on a specific last_name, example: ?where[last_name]=string
  /// @medical_notes (URLParameter), query on a specific medical_notes, example: ?where[medical_notes]=string
  /// @membership (URLParameter), query on a specific membership, example: ?where[membership]=string
  /// @middle_name (URLParameter), query on a specific middle_name, example: ?where[middle_name]=string
  /// @nickname (URLParameter), query on a specific nickname, example: ?where[nickname]=string
  /// @people_permissions (URLParameter), query on a specific people_permissions, example: ?where[people_permissions]=string
  /// @remote_id (URLParameter), query on a specific remote_id, example: ?where[remote_id]=1
  /// @search_name (URLParameter), Search by Name (first, last, combination), example: ?where[search_name]=string
  /// @search_name_or_email (URLParameter), Search by Name (first, last, combination) or Email, example: ?where[search_name_or_email]=string
  /// @search_name_or_email_or_phone_number (URLParameter), Search by Name (first, last, combination), Email, or Phone Number, example: ?where[search_name_or_email_or_phone_number]=string
  /// @search_phone_number (URLParameter), Search by Phone Number, example: ?where[search_phone_number]=string
  /// @search_phone_number_e164 (URLParameter), Search by Phone Number E164, example: ?where[search_phone_number_e164]=string
  /// @site_administrator (URLParameter), query on a specific site_administrator, example: ?where[site_administrator]=true
  /// @status (URLParameter), Set to "inactive" to set "inactivated_at" to the current time and make the profile inactive. Set to anything else to clear "inactivated_at" and reactivate the profile., example: ?where[status]=string
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['accounting_administrator','anniversary','birthdate','child','created_at','first_name','gender','given_name','grade','graduation_year','id','inactivated_at','last_name','medical_notes','membership','middle_name','nickname','people_permissions','remote_id','search_name','search_name_or_email','search_name_or_email_or_phone_number','search_phone_number','search_phone_number_e164','site_administrator','status','updated_at'];

  /// possible orderings with parameter ?order=
  /// @accounting_administrator (URLParameter), prefix with a hyphen (-accounting_administrator) to reverse the order
  /// @anniversary (URLParameter), prefix with a hyphen (-anniversary) to reverse the order
  /// @birthdate (URLParameter), prefix with a hyphen (-birthdate) to reverse the order
  /// @child (URLParameter), prefix with a hyphen (-child) to reverse the order
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// @gender (URLParameter), prefix with a hyphen (-gender) to reverse the order
  /// @given_name (URLParameter), prefix with a hyphen (-given_name) to reverse the order
  /// @grade (URLParameter), prefix with a hyphen (-grade) to reverse the order
  /// @graduation_year (URLParameter), prefix with a hyphen (-graduation_year) to reverse the order
  /// @inactivated_at (URLParameter), prefix with a hyphen (-inactivated_at) to reverse the order
  /// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// @membership (URLParameter), prefix with a hyphen (-membership) to reverse the order
  /// @middle_name (URLParameter), prefix with a hyphen (-middle_name) to reverse the order
  /// @nickname (URLParameter), prefix with a hyphen (-nickname) to reverse the order
  /// @people_permissions (URLParameter), prefix with a hyphen (-people_permissions) to reverse the order
  /// @remote_id (URLParameter), prefix with a hyphen (-remote_id) to reverse the order
  /// @site_administrator (URLParameter), prefix with a hyphen (-site_administrator) to reverse the order
  /// @status (URLParameter), prefix with a hyphen (-status) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['accounting_administrator','anniversary','birthdate','child','created_at','first_name','gender','given_name','grade','graduation_year','inactivated_at','last_name','membership','middle_name','nickname','people_permissions','remote_id','site_administrator','status','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
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
  static const kSearchNameOrEmailOrPhoneNumber = 'search_name_or_email_or_phone_number';


  // getters and setters
  @override
  List<String> get createAllowed => ['given_name','first_name','nickname','middle_name','last_name','birthdate','anniversary','gender','grade','child','graduation_year','site_administrator','accounting_administrator','people_permissions','membership','inactivated_at','status','medical_notes','avatar','primary_campus_id','remote_id'];
  @override
  List<String> get updateAllowed => ['given_name','first_name','nickname','middle_name','last_name','birthdate','anniversary','gender','grade','child','graduation_year','site_administrator','accounting_administrator','people_permissions','membership','inactivated_at','status','medical_notes','avatar','primary_campus_id','remote_id'];

  String get givenName => attributes[kGivenName] ?? '';
  String get firstName => attributes[kFirstName] ?? '';
  String get nickname => attributes[kNickname] ?? '';
  String get middleName => attributes[kMiddleName] ?? '';
  String get lastName => attributes[kLastName] ?? '';
  String get birthdate => attributes[kBirthdate] ?? '';
  String get anniversary => attributes[kAnniversary] ?? '';
  String get gender => attributes[kGender] ?? '';
  int get grade => attributes[kGrade] ?? 0;
  bool get isChild => attributes[kChild] == true;
  int get graduationYear => attributes[kGraduationYear] ?? 0;
  bool get isSiteAdministrator => attributes[kSiteAdministrator] == true;
  bool get isAccountingAdministrator => attributes[kAccountingAdministrator] == true;
  String get peoplePermissions => attributes[kPeoplePermissions] ?? '';
  String get membership => attributes[kMembership] ?? '';
  DateTime get inactivatedAt => DateTime.parse(attributes[kInactivatedAt] ?? '');
  String get status => attributes[kStatus] ?? '';
  String get medicalNotes => attributes[kMedicalNotes] ?? '';
  String get avatar => attributes[kAvatar] ?? '';
  String get name => attributes[kName] ?? '';
  String get demographicAvatarUrl => attributes[kDemographicAvatarUrl] ?? '';
  String get directoryStatus => attributes[kDirectoryStatus] ?? '';
  bool get isPassedBackgroundCheck => attributes[kPassedBackgroundCheck] == true;
  bool get isCanCreateForms => attributes[kCanCreateForms] == true;
  String get schoolType => attributes[kSchoolType] ?? '';
  int get remoteId => attributes[kRemoteId] ?? 0;
  String get searchName => attributes[kSearchName] ?? '';
  String get searchPhoneNumber => attributes[kSearchPhoneNumber] ?? '';
  String get searchPhoneNumberE164 => attributes[kSearchPhoneNumberE164] ?? '';
  String get searchNameOrEmail => attributes[kSearchNameOrEmail] ?? '';
  String get searchNameOrEmailOrPhoneNumber => attributes[kSearchNameOrEmailOrPhoneNumber] ?? '';


  set givenName(String s) => attributes[kGivenName] = s;
  set firstName(String s) => attributes[kFirstName] = s;
  set nickname(String s) => attributes[kNickname] = s;
  set middleName(String s) => attributes[kMiddleName] = s;
  set lastName(String s) => attributes[kLastName] = s;
  set birthdate(String s) => attributes[kBirthdate] = s;
  set anniversary(String s) => attributes[kAnniversary] = s;
  set gender(String s) => attributes[kGender] = s;
  set grade(int n) => attributes[kGrade] = n;
  set isChild(bool b) => attributes[kChild] = b;
  set graduationYear(int n) => attributes[kGraduationYear] = n;
  set isSiteAdministrator(bool b) => attributes[kSiteAdministrator] = b;
  set isAccountingAdministrator(bool b) => attributes[kAccountingAdministrator] = b;
  set peoplePermissions(String s) => attributes[kPeoplePermissions] = s;
  set membership(String s) => attributes[kMembership] = s;
  set inactivatedAt(DateTime d) => attributes[kInactivatedAt] = d.toIso8601String();
  set status(String s) => attributes[kStatus] = s;
  set medicalNotes(String s) => attributes[kMedicalNotes] = s;
  set avatar(String s) => attributes[kAvatar] = s;
  set remoteId(int n) => attributes[kRemoteId] = n;


  PcoPeoplePerson() : super(kPcoApplication, kTypeString);
  PcoPeoplePerson.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions/1/created_by;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromListAndRuleAndConditionAndCreatedBy(String listId,String ruleId,String conditionId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/rules/$ruleId/conditions/$conditionId/created_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/emails/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromEmail(String emailId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/emails/$emailId/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromFieldData(String fieldDataId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/field_data/$fieldDataId/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromFormAndFormSubmission(String formId,String formSubmissionId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/forms/$formId/form_submissions/$formSubmissionId/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromHouseholdAndHouseholdMembership(String householdId,String householdMembershipId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/households/$householdId/household_memberships/$householdMembershipId/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/people;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromHouseholdAndPeople(String householdId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/households/$householdId/people';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/created_by;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromListAndCreatedBy(String listId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/created_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/people;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromListAndPeople(String listId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/people';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/shares/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromListAndShare(String listId,String shareId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/shares/$shareId/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/updated_by;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromListAndUpdatedBy(String listId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/updated_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/from;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromMessageGroupAndFrom(String messageGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/message_groups/$messageGroupId/from';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/messages/1/to;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromMessageAndTo(String messageId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/messages/$messageId/to';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/subscribers;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromNoteCategoryAndSubscriber(String noteCategoryId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/note_categories/$noteCategoryId/subscribers';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/created_by;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromNoteAndCreatedBy(String noteId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/notes/$noteId/created_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromNote(String noteId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/notes/$noteId/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people;
  static Future<PcoCollection<PcoPeoplePerson>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromPeopleImportAndHistory(String peopleImportId,String historyId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people_imports/$peopleImportId/histories/$historyId/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/reports/1/created_by;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromReportAndCreatedBy(String reportId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/reports/$reportId/created_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/reports/1/updated_by;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromReportAndUpdatedBy(String reportId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/reports/$reportId/updated_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/social_profiles/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromSocialProfile(String socialProfileId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/social_profiles/$socialProfileId/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/assignee;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromPeopleAndWorkflowCardAndAssignee(String peopleId,String workflowCardId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/assignee';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromPeopleAndWorkflowCard(String peopleId,String workflowCardId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromPeopleAndWorkflowShare(String peopleId,String workflowShareId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people/$peopleId/workflow_shares/$workflowShareId/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/shared_people;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromWorkflowAndSharedPeople(String workflowId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/workflows/$workflowId/shared_people';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromWorkflowAndStepAndAssigneeSummary(String workflowId,String stepId,String assigneeSummaryId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries/$assigneeSummaryId/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/default_assignee;
  static Future<PcoCollection<PcoPeoplePerson>> getManyFromWorkflowAndStepAndDefaultAssignee(String workflowId,String stepId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/default_assignee';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions/1/created_by;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromListAndRuleAndConditionAndCreatedBy(String listId,String ruleId,String conditionId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/rules/$ruleId/conditions/$conditionId/created_by' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/emails/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromEmail(String emailId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/emails/$emailId/person' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromFieldData(String fieldDataId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/field_data/$fieldDataId/person' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromFormAndFormSubmission(String formId,String formSubmissionId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/forms/$formId/form_submissions/$formSubmissionId/person' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromHouseholdAndHouseholdMembership(String householdId,String householdMembershipId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/households/$householdId/household_memberships/$householdMembershipId/person' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/people;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromHouseholdAndPeople(String householdId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/households/$householdId/people' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/created_by;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromListAndCreatedBy(String listId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/created_by' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/people;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromListAndPeople(String listId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/people' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/shares/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromListAndShare(String listId,String shareId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/shares/$shareId/person' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/updated_by;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromListAndUpdatedBy(String listId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/updated_by' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/from;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromMessageGroupAndFrom(String messageGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/message_groups/$messageGroupId/from' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/messages/1/to;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromMessageAndTo(String messageId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/messages/$messageId/to' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/subscribers;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromNoteCategoryAndSubscriber(String noteCategoryId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/note_categories/$noteCategoryId/subscribers' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/created_by;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromNoteAndCreatedBy(String noteId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/notes/$noteId/created_by' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromNote(String noteId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/notes/$noteId/person' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people;
  static Future<PcoCollection<PcoPeoplePerson>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromPeopleImportAndHistory(String peopleImportId,String historyId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people_imports/$peopleImportId/histories/$historyId/person' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/reports/1/created_by;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromReportAndCreatedBy(String reportId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/reports/$reportId/created_by' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/reports/1/updated_by;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromReportAndUpdatedBy(String reportId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/reports/$reportId/updated_by' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/social_profiles/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromSocialProfile(String socialProfileId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/social_profiles/$socialProfileId/person' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/assignee;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromPeopleAndWorkflowCardAndAssignee(String peopleId,String workflowCardId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/assignee' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromPeopleAndWorkflowCard(String peopleId,String workflowCardId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/person' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromPeopleAndWorkflowShare(String peopleId,String workflowShareId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people/$peopleId/workflow_shares/$workflowShareId/person' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/shared_people;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromWorkflowAndSharedPeople(String workflowId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/workflows/$workflowId/shared_people' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromWorkflowAndStepAndAssigneeSummary(String workflowId,String stepId,String assigneeSummaryId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries/$assigneeSummaryId/person' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/default_assignee;
  static Future<PcoCollection<PcoPeoplePerson>> getSingleFromWorkflowAndStepAndDefaultAssignee(String workflowId,String stepId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/default_assignee' + '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoPeopleAddres objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/addresses
Future<PcoCollection<PcoPeopleAddres>> getAddresAddresses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleAddres.canInclude;
  var url = '$apiEndpoint/addresses';
  return PcoCollection.fromApiCall<PcoPeopleAddres>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleApp objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/apps
Future<PcoCollection<PcoPeopleApp>> getApps({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleApp.canInclude;
  var url = '$apiEndpoint/apps';
  return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleConnectedPerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/connected_people
Future<PcoCollection<PcoPeopleConnectedPerson>> getConnectedPersonsConnectedPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleConnectedPerson.canInclude;
  var url = '$apiEndpoint/connected_people';
  return PcoCollection.fromApiCall<PcoPeopleConnectedPerson>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleEmail objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/emails
Future<PcoCollection<PcoPeopleEmail>> getEmails({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleEmail.canInclude;
  var url = '$apiEndpoint/emails';
  return PcoCollection.fromApiCall<PcoPeopleEmail>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleFieldDatum objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/field_data
Future<PcoCollection<PcoPeopleFieldDatum>> getFieldDatumsFieldData({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleFieldDatum.canInclude;
  var url = '$apiEndpoint/field_data';
  return PcoCollection.fromApiCall<PcoPeopleFieldDatum>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleHouseholdMembership objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/household_memberships
Future<PcoCollection<PcoPeopleHouseholdMembership>> getHouseholdMemberships({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleHouseholdMembership.canInclude;
  var url = '$apiEndpoint/household_memberships';
  return PcoCollection.fromApiCall<PcoPeopleHouseholdMembership>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleHousehold objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/households
Future<PcoCollection<PcoPeopleHousehold>> getHouseholds({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
  var url = '$apiEndpoint/households';
  return PcoCollection.fromApiCall<PcoPeopleHousehold>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleInactiveReason objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/inactive_reason
Future<PcoCollection<PcoPeopleInactiveReason>> getInactiveReasons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleInactiveReason.canInclude;
  var url = '$apiEndpoint/inactive_reason';
  return PcoCollection.fromApiCall<PcoPeopleInactiveReason>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleMaritalStatu objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/marital_status
Future<PcoCollection<PcoPeopleMaritalStatu>> getMaritalStatus({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleMaritalStatu.canInclude;
  var url = '$apiEndpoint/marital_status';
  return PcoCollection.fromApiCall<PcoPeopleMaritalStatu>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleMessageGroup objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/message_groups
Future<PcoCollection<PcoPeopleMessageGroup>> getMessageGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
  var url = '$apiEndpoint/message_groups';
  return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleMessage objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/messages
Future<PcoCollection<PcoPeopleMessage>> getMessages({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleMessage.canInclude;
  var url = '$apiEndpoint/messages';
  return PcoCollection.fromApiCall<PcoPeopleMessage>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleNamePrefix objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/name_prefix
Future<PcoCollection<PcoPeopleNamePrefix>> getNamePrefixes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNamePrefix.canInclude;
  var url = '$apiEndpoint/name_prefix';
  return PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleNameSuffix objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/name_suffix
Future<PcoCollection<PcoPeopleNameSuffix>> getNameSuffixes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNameSuffix.canInclude;
  var url = '$apiEndpoint/name_suffix';
  return PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleNote objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/notes
Future<PcoCollection<PcoPeopleNote>> getNotes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNote.canInclude;
  var url = '$apiEndpoint/notes';
  return PcoCollection.fromApiCall<PcoPeopleNote>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleOrganization objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/organization
Future<PcoCollection<PcoPeopleOrganization>> getOrganizations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleOrganization.canInclude;
  var url = '$apiEndpoint/organization';
  return PcoCollection.fromApiCall<PcoPeopleOrganization>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeoplePersonApp objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/person_apps
Future<PcoCollection<PcoPeoplePersonApp>> getPersonApps({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePersonApp.canInclude;
  var url = '$apiEndpoint/person_apps';
  return PcoCollection.fromApiCall<PcoPeoplePersonApp>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeoplePhoneNumber objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/phone_numbers
Future<PcoCollection<PcoPeoplePhoneNumber>> getPhoneNumbers({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePhoneNumber.canInclude;
  var url = '$apiEndpoint/phone_numbers';
  return PcoCollection.fromApiCall<PcoPeoplePhoneNumber>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeoplePlatformNotification objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/platform_notifications
Future<PcoCollection<PcoPeoplePlatformNotification>> getPlatformNotifications({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePlatformNotification.canInclude;
  var url = '$apiEndpoint/platform_notifications';
  return PcoCollection.fromApiCall<PcoPeoplePlatformNotification>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleCampus objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/primary_campus
Future<PcoCollection<PcoPeopleCampus>> getCampusesPrimaryCampus({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleCampus.canInclude;
  var url = '$apiEndpoint/primary_campus';
  return PcoCollection.fromApiCall<PcoPeopleCampus>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleSchoolOption objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/school
Future<PcoCollection<PcoPeopleSchoolOption>> getSchoolOptionsSchool({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
  var url = '$apiEndpoint/school';
  return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleSocialProfile objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/social_profiles
Future<PcoCollection<PcoPeopleSocialProfile>> getSocialProfiles({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleSocialProfile.canInclude;
  var url = '$apiEndpoint/social_profiles';
  return PcoCollection.fromApiCall<PcoPeopleSocialProfile>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleWorkflowCard objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards
Future<PcoCollection<PcoPeopleWorkflowCard>> getWorkflowCards({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleWorkflowCard.canInclude;
  var url = '$apiEndpoint/workflow_cards';
  return PcoCollection.fromApiCall<PcoPeopleWorkflowCard>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleWorkflowShare objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares
Future<PcoCollection<PcoPeopleWorkflowShare>> getWorkflowShares({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleWorkflowShare.canInclude;
  var url = '$apiEndpoint/workflow_shares';
  return PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url, query: query, apiVersion:apiVersion);
}
    


}
