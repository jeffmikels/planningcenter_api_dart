/// This file was generated on 2021-11-22T16:57:41.615817


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
  static Future<List<PcoPeoplePerson>> getManyFromListAndRuleAndConditionAndCreatedByIds(String listId,String ruleId,String conditionId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/rules/$ruleId/conditions/$conditionId/created_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/emails/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromEmailAndPersonIds(String emailId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/emails/$emailId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromFieldDataAndPersonIds(String fieldDataId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/field_data/$fieldDataId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromFormAndFormSubmissionAndPersonIds(String formId,String formSubmissionId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/forms/$formId/form_submissions/$formSubmissionId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromHouseholdAndHouseholdMembershipAndPersonIds(String householdId,String householdMembershipId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/households/$householdId/household_memberships/$householdMembershipId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/people;
  static Future<List<PcoPeoplePerson>> getManyFromHouseholdAndPeopleIds(String householdId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/households/$householdId/people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/created_by;
  static Future<List<PcoPeoplePerson>> getManyFromListAndCreatedByIds(String listId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/created_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/people;
  static Future<List<PcoPeoplePerson>> getManyFromListAndPeopleIds(String listId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/shares/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromListAndShareAndPersonIds(String listId,String shareId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/shares/$shareId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/updated_by;
  static Future<List<PcoPeoplePerson>> getManyFromListAndUpdatedByIds(String listId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/updated_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/from;
  static Future<List<PcoPeoplePerson>> getManyFromMessageGroupAndFromIds(String messageGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/message_groups/$messageGroupId/from';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/messages/1/to;
  static Future<List<PcoPeoplePerson>> getManyFromMessageAndToIds(String messageId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/messages/$messageId/to';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/subscribers;
  static Future<List<PcoPeoplePerson>> getManyFromNoteCategoryAndSubscriberIds(String noteCategoryId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/note_categories/$noteCategoryId/subscribers';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/created_by;
  static Future<List<PcoPeoplePerson>> getManyFromNoteAndCreatedByIds(String noteId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/notes/$noteId/created_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromNoteAndPersonIds(String noteId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/notes/$noteId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people;
  static Future<List<PcoPeoplePerson>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromPeopleImportAndHistoryAndPersonIds(String peopleImportId,String historyId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people_imports/$peopleImportId/histories/$historyId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/reports/1/created_by;
  static Future<List<PcoPeoplePerson>> getManyFromReportAndCreatedByIds(String reportId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/reports/$reportId/created_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/reports/1/updated_by;
  static Future<List<PcoPeoplePerson>> getManyFromReportAndUpdatedByIds(String reportId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/reports/$reportId/updated_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/social_profiles/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromSocialProfileAndPersonIds(String socialProfileId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/social_profiles/$socialProfileId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/assignee;
  static Future<List<PcoPeoplePerson>> getManyFromPeopleAndWorkflowCardAndAssigneeIds(String peopleId,String workflowCardId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/assignee';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromPeopleAndWorkflowCardAndPersonIds(String peopleId,String workflowCardId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromPeopleAndWorkflowShareAndPersonIds(String peopleId,String workflowShareId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people/$peopleId/workflow_shares/$workflowShareId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/shared_people;
  static Future<List<PcoPeoplePerson>> getManyFromWorkflowAndSharedPeopleIds(String workflowId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/workflows/$workflowId/shared_people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromWorkflowAndStepAndAssigneeSummaryAndPersonIds(String workflowId,String stepId,String assigneeSummaryId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries/$assigneeSummaryId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/default_assignee;
  static Future<List<PcoPeoplePerson>> getManyFromWorkflowAndStepAndDefaultAssigneeIds(String workflowId,String stepId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/default_assignee';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions/1/created_by;
  static Future<PcoPeoplePerson?> getSingleFromListAndRuleAndConditionAndCreatedByIds(String listId,String ruleId,String conditionId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/rules/$ruleId/conditions/$conditionId/created_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/emails/1/person;
  static Future<PcoPeoplePerson?> getSingleFromEmailAndPersonIds(String emailId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/emails/$emailId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/person;
  static Future<PcoPeoplePerson?> getSingleFromFieldDataAndPersonIds(String fieldDataId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/field_data/$fieldDataId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/person;
  static Future<PcoPeoplePerson?> getSingleFromFormAndFormSubmissionAndPersonIds(String formId,String formSubmissionId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/forms/$formId/form_submissions/$formSubmissionId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/person;
  static Future<PcoPeoplePerson?> getSingleFromHouseholdAndHouseholdMembershipAndPersonIds(String householdId,String householdMembershipId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/households/$householdId/household_memberships/$householdMembershipId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/people;
  static Future<PcoPeoplePerson?> getSingleFromHouseholdAndPeopleIds(String householdId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/households/$householdId/people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/created_by;
  static Future<PcoPeoplePerson?> getSingleFromListAndCreatedByIds(String listId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/created_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/people;
  static Future<PcoPeoplePerson?> getSingleFromListAndPeopleIds(String listId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/shares/1/person;
  static Future<PcoPeoplePerson?> getSingleFromListAndShareAndPersonIds(String listId,String shareId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/shares/$shareId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/updated_by;
  static Future<PcoPeoplePerson?> getSingleFromListAndUpdatedByIds(String listId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/lists/$listId/updated_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/from;
  static Future<PcoPeoplePerson?> getSingleFromMessageGroupAndFromIds(String messageGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/message_groups/$messageGroupId/from' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/messages/1/to;
  static Future<PcoPeoplePerson?> getSingleFromMessageAndToIds(String messageId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/messages/$messageId/to' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/subscribers;
  static Future<PcoPeoplePerson?> getSingleFromNoteCategoryAndSubscriberIds(String noteCategoryId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/note_categories/$noteCategoryId/subscribers' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/created_by;
  static Future<PcoPeoplePerson?> getSingleFromNoteAndCreatedByIds(String noteId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/notes/$noteId/created_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/person;
  static Future<PcoPeoplePerson?> getSingleFromNoteAndPersonIds(String noteId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/notes/$noteId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people;
  static Future<PcoPeoplePerson?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/person;
  static Future<PcoPeoplePerson?> getSingleFromPeopleImportAndHistoryAndPersonIds(String peopleImportId,String historyId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people_imports/$peopleImportId/histories/$historyId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/reports/1/created_by;
  static Future<PcoPeoplePerson?> getSingleFromReportAndCreatedByIds(String reportId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/reports/$reportId/created_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/reports/1/updated_by;
  static Future<PcoPeoplePerson?> getSingleFromReportAndUpdatedByIds(String reportId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/reports/$reportId/updated_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/social_profiles/1/person;
  static Future<PcoPeoplePerson?> getSingleFromSocialProfileAndPersonIds(String socialProfileId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/social_profiles/$socialProfileId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/assignee;
  static Future<PcoPeoplePerson?> getSingleFromPeopleAndWorkflowCardAndAssigneeIds(String peopleId,String workflowCardId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/assignee' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/person;
  static Future<PcoPeoplePerson?> getSingleFromPeopleAndWorkflowCardAndPersonIds(String peopleId,String workflowCardId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares/1/person;
  static Future<PcoPeoplePerson?> getSingleFromPeopleAndWorkflowShareAndPersonIds(String peopleId,String workflowShareId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/people/$peopleId/workflow_shares/$workflowShareId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/shared_people;
  static Future<PcoPeoplePerson?> getSingleFromWorkflowAndSharedPeopleIds(String workflowId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/workflows/$workflowId/shared_people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person;
  static Future<PcoPeoplePerson?> getSingleFromWorkflowAndStepAndAssigneeSummaryAndPersonIds(String workflowId,String stepId,String assigneeSummaryId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries/$assigneeSummaryId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/default_assignee;
  static Future<PcoPeoplePerson?> getSingleFromWorkflowAndStepAndDefaultAssigneeIds(String workflowId,String stepId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/default_assignee' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleAddres objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/addresses
Future<List<PcoPeopleAddres>> getAddresAddresses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleAddres.canInclude;
  List<PcoPeopleAddres> retval = [];
  var url = '$apiEndpoint/addresses';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleAddres.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleApp objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/apps
Future<List<PcoPeopleApp>> getApps({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleApp.canInclude;
  List<PcoPeopleApp> retval = [];
  var url = '$apiEndpoint/apps';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleApp.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleConnectedPerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/connected_people
Future<List<PcoPeopleConnectedPerson>> getConnectedPersonsConnectedPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleConnectedPerson.canInclude;
  List<PcoPeopleConnectedPerson> retval = [];
  var url = '$apiEndpoint/connected_people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleConnectedPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleEmail objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/emails
Future<List<PcoPeopleEmail>> getEmails({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleEmail.canInclude;
  List<PcoPeopleEmail> retval = [];
  var url = '$apiEndpoint/emails';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleEmail.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleFieldDatum objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/field_data
Future<List<PcoPeopleFieldDatum>> getFieldDatumsFieldData({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleFieldDatum.canInclude;
  List<PcoPeopleFieldDatum> retval = [];
  var url = '$apiEndpoint/field_data';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFieldDatum.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleHouseholdMembership objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/household_memberships
Future<List<PcoPeopleHouseholdMembership>> getHouseholdMemberships({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleHouseholdMembership.canInclude;
  List<PcoPeopleHouseholdMembership> retval = [];
  var url = '$apiEndpoint/household_memberships';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleHouseholdMembership.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleHousehold objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/households
Future<List<PcoPeopleHousehold>> getHouseholds({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
  List<PcoPeopleHousehold> retval = [];
  var url = '$apiEndpoint/households';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleHousehold.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleInactiveReason objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/inactive_reason
Future<List<PcoPeopleInactiveReason>> getInactiveReasons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleInactiveReason.canInclude;
  List<PcoPeopleInactiveReason> retval = [];
  var url = '$apiEndpoint/inactive_reason';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleInactiveReason.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleMaritalStatu objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/marital_status
Future<List<PcoPeopleMaritalStatu>> getMaritalStatus({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleMaritalStatu.canInclude;
  List<PcoPeopleMaritalStatu> retval = [];
  var url = '$apiEndpoint/marital_status';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleMaritalStatu.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleMessageGroup objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/message_groups
Future<List<PcoPeopleMessageGroup>> getMessageGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
  List<PcoPeopleMessageGroup> retval = [];
  var url = '$apiEndpoint/message_groups';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleMessageGroup.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleMessage objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/messages
Future<List<PcoPeopleMessage>> getMessages({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleMessage.canInclude;
  List<PcoPeopleMessage> retval = [];
  var url = '$apiEndpoint/messages';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleMessage.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNamePrefix objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/name_prefix
Future<List<PcoPeopleNamePrefix>> getNamePrefixes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNamePrefix.canInclude;
  List<PcoPeopleNamePrefix> retval = [];
  var url = '$apiEndpoint/name_prefix';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNamePrefix.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNameSuffix objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/name_suffix
Future<List<PcoPeopleNameSuffix>> getNameSuffixes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNameSuffix.canInclude;
  List<PcoPeopleNameSuffix> retval = [];
  var url = '$apiEndpoint/name_suffix';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNameSuffix.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNote objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/notes
Future<List<PcoPeopleNote>> getNotes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNote.canInclude;
  List<PcoPeopleNote> retval = [];
  var url = '$apiEndpoint/notes';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNote.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleOrganization objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/organization
Future<List<PcoPeopleOrganization>> getOrganizations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleOrganization.canInclude;
  List<PcoPeopleOrganization> retval = [];
  var url = '$apiEndpoint/organization';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleOrganization.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePersonApp objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/person_apps
Future<List<PcoPeoplePersonApp>> getPersonApps({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePersonApp.canInclude;
  List<PcoPeoplePersonApp> retval = [];
  var url = '$apiEndpoint/person_apps';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePersonApp.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePhoneNumber objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/phone_numbers
Future<List<PcoPeoplePhoneNumber>> getPhoneNumbers({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePhoneNumber.canInclude;
  List<PcoPeoplePhoneNumber> retval = [];
  var url = '$apiEndpoint/phone_numbers';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePhoneNumber.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePlatformNotification objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/platform_notifications
Future<List<PcoPeoplePlatformNotification>> getPlatformNotifications({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePlatformNotification.canInclude;
  List<PcoPeoplePlatformNotification> retval = [];
  var url = '$apiEndpoint/platform_notifications';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePlatformNotification.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleCampus objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/primary_campus
Future<List<PcoPeopleCampus>> getCampusesPrimaryCampus({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleCampus.canInclude;
  List<PcoPeopleCampus> retval = [];
  var url = '$apiEndpoint/primary_campus';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleCampus.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleSchoolOption objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/school
Future<List<PcoPeopleSchoolOption>> getSchoolOptionsSchool({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
  List<PcoPeopleSchoolOption> retval = [];
  var url = '$apiEndpoint/school';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleSchoolOption.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleSocialProfile objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/social_profiles
Future<List<PcoPeopleSocialProfile>> getSocialProfiles({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleSocialProfile.canInclude;
  List<PcoPeopleSocialProfile> retval = [];
  var url = '$apiEndpoint/social_profiles';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleSocialProfile.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflowCard objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards
Future<List<PcoPeopleWorkflowCard>> getWorkflowCards({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleWorkflowCard.canInclude;
  List<PcoPeopleWorkflowCard> retval = [];
  var url = '$apiEndpoint/workflow_cards';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowCard.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflowShare objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares
Future<List<PcoPeopleWorkflowShare>> getWorkflowShares({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleWorkflowShare.canInclude;
  List<PcoPeopleWorkflowShare> retval = [];
  var url = '$apiEndpoint/workflow_shares';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowShare.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
