/// This file was generated on 2021-11-17T23:59:29.910672


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
class PcoPeoplePerson extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'Person';
  static const String typeId = 'person';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'person-organization-people';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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


  PcoPeoplePerson() : super(pcoApplication, typeString);
  PcoPeoplePerson.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions/1/created_by;
  static Future<List<PcoPeoplePerson>> getManyFromListAndRuleAndConditionAndCreatedByIds(String listId,String ruleId,String conditionId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/rules/$ruleId/conditions/$conditionId/created_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/emails/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromEmailAndPersonIds(String emailId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/emails/$emailId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromFieldDataAndPersonIds(String fieldDataId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/field_data/$fieldDataId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromFormAndFormSubmissionAndPersonIds(String formId,String formSubmissionId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/forms/$formId/form_submissions/$formSubmissionId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromHouseholdAndHouseholdMembershipAndPersonIds(String householdId,String householdMembershipId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/households/$householdId/household_memberships/$householdMembershipId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/people;
  static Future<List<PcoPeoplePerson>> getManyFromHouseholdAndPeopleIds(String householdId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/households/$householdId/people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/created_by;
  static Future<List<PcoPeoplePerson>> getManyFromListAndCreatedByIds(String listId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/created_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/people;
  static Future<List<PcoPeoplePerson>> getManyFromListAndPeopleIds(String listId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/shares/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromListAndShareAndPersonIds(String listId,String shareId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/shares/$shareId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/updated_by;
  static Future<List<PcoPeoplePerson>> getManyFromListAndUpdatedByIds(String listId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/updated_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/from;
  static Future<List<PcoPeoplePerson>> getManyFromMessageGroupAndFromIds(String messageGroupId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/message_groups/$messageGroupId/from';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/messages/1/to;
  static Future<List<PcoPeoplePerson>> getManyFromMessageAndToIds(String messageId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/messages/$messageId/to';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/subscribers;
  static Future<List<PcoPeoplePerson>> getManyFromNoteCategoryAndSubscriberIds(String noteCategoryId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/note_categories/$noteCategoryId/subscribers';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/created_by;
  static Future<List<PcoPeoplePerson>> getManyFromNoteAndCreatedByIds(String noteId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/notes/$noteId/created_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromNoteAndPersonIds(String noteId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/notes/$noteId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people;
  static Future<List<PcoPeoplePerson>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromPeopleImportAndHistoryAndPersonIds(String peopleImportId,String historyId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people_imports/$peopleImportId/histories/$historyId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/reports/1/created_by;
  static Future<List<PcoPeoplePerson>> getManyFromReportAndCreatedByIds(String reportId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/reports/$reportId/created_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/reports/1/updated_by;
  static Future<List<PcoPeoplePerson>> getManyFromReportAndUpdatedByIds(String reportId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/reports/$reportId/updated_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/social_profiles/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromSocialProfileAndPersonIds(String socialProfileId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/social_profiles/$socialProfileId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/assignee;
  static Future<List<PcoPeoplePerson>> getManyFromPeopleAndWorkflowCardAndAssigneeIds(String peopleId,String workflowCardId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/assignee';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromPeopleAndWorkflowCardAndPersonIds(String peopleId,String workflowCardId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromPeopleAndWorkflowShareAndPersonIds(String peopleId,String workflowShareId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/workflow_shares/$workflowShareId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/shared_people;
  static Future<List<PcoPeoplePerson>> getManyFromWorkflowAndSharedPeopleIds(String workflowId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows/$workflowId/shared_people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person;
  static Future<List<PcoPeoplePerson>> getManyFromWorkflowAndStepAndAssigneeSummaryAndPersonIds(String workflowId,String stepId,String assigneeSummaryId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries/$assigneeSummaryId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeoplePerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/default_assignee;
  static Future<List<PcoPeoplePerson>> getManyFromWorkflowAndStepAndDefaultAssigneeIds(String workflowId,String stepId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/default_assignee';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePerson.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions/1/created_by;
  static Future<PcoPeoplePerson?> getSingleFromListAndRuleAndConditionAndCreatedByIds(String listId,String ruleId,String conditionId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/rules/$ruleId/conditions/$conditionId/created_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/emails/1/person;
  static Future<PcoPeoplePerson?> getSingleFromEmailAndPersonIds(String emailId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/emails/$emailId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/person;
  static Future<PcoPeoplePerson?> getSingleFromFieldDataAndPersonIds(String fieldDataId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/field_data/$fieldDataId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/person;
  static Future<PcoPeoplePerson?> getSingleFromFormAndFormSubmissionAndPersonIds(String formId,String formSubmissionId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/forms/$formId/form_submissions/$formSubmissionId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/person;
  static Future<PcoPeoplePerson?> getSingleFromHouseholdAndHouseholdMembershipAndPersonIds(String householdId,String householdMembershipId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/households/$householdId/household_memberships/$householdMembershipId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/people;
  static Future<PcoPeoplePerson?> getSingleFromHouseholdAndPeopleIds(String householdId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/households/$householdId/people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/created_by;
  static Future<PcoPeoplePerson?> getSingleFromListAndCreatedByIds(String listId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/created_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/people;
  static Future<PcoPeoplePerson?> getSingleFromListAndPeopleIds(String listId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/shares/1/person;
  static Future<PcoPeoplePerson?> getSingleFromListAndShareAndPersonIds(String listId,String shareId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/shares/$shareId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/updated_by;
  static Future<PcoPeoplePerson?> getSingleFromListAndUpdatedByIds(String listId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/updated_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/from;
  static Future<PcoPeoplePerson?> getSingleFromMessageGroupAndFromIds(String messageGroupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/message_groups/$messageGroupId/from' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/messages/1/to;
  static Future<PcoPeoplePerson?> getSingleFromMessageAndToIds(String messageId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/messages/$messageId/to' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/subscribers;
  static Future<PcoPeoplePerson?> getSingleFromNoteCategoryAndSubscriberIds(String noteCategoryId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/note_categories/$noteCategoryId/subscribers' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/created_by;
  static Future<PcoPeoplePerson?> getSingleFromNoteAndCreatedByIds(String noteId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/notes/$noteId/created_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/notes/1/person;
  static Future<PcoPeoplePerson?> getSingleFromNoteAndPersonIds(String noteId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/notes/$noteId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people;
  static Future<PcoPeoplePerson?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/person;
  static Future<PcoPeoplePerson?> getSingleFromPeopleImportAndHistoryAndPersonIds(String peopleImportId,String historyId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people_imports/$peopleImportId/histories/$historyId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/reports/1/created_by;
  static Future<PcoPeoplePerson?> getSingleFromReportAndCreatedByIds(String reportId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/reports/$reportId/created_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/reports/1/updated_by;
  static Future<PcoPeoplePerson?> getSingleFromReportAndUpdatedByIds(String reportId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/reports/$reportId/updated_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/social_profiles/1/person;
  static Future<PcoPeoplePerson?> getSingleFromSocialProfileAndPersonIds(String socialProfileId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/social_profiles/$socialProfileId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/assignee;
  static Future<PcoPeoplePerson?> getSingleFromPeopleAndWorkflowCardAndAssigneeIds(String peopleId,String workflowCardId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/assignee' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/person;
  static Future<PcoPeoplePerson?> getSingleFromPeopleAndWorkflowCardAndPersonIds(String peopleId,String workflowCardId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares/1/person;
  static Future<PcoPeoplePerson?> getSingleFromPeopleAndWorkflowShareAndPersonIds(String peopleId,String workflowShareId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/workflow_shares/$workflowShareId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/shared_people;
  static Future<PcoPeoplePerson?> getSingleFromWorkflowAndSharedPeopleIds(String workflowId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows/$workflowId/shared_people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person;
  static Future<PcoPeoplePerson?> getSingleFromWorkflowAndStepAndAssigneeSummaryAndPersonIds(String workflowId,String stepId,String assigneeSummaryId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries/$assigneeSummaryId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeoplePerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/default_assignee;
  static Future<PcoPeoplePerson?> getSingleFromWorkflowAndStepAndDefaultAssigneeIds(String workflowId,String stepId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/default_assignee' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePerson.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleAddres objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/addresses
Future<List<PcoPeopleAddres>> getAddresAddresses({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleAddres> retval = [];
  var url = '$apiEndpoint/addresses';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleAddres.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleApp objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/apps
Future<List<PcoPeopleApp>> getApps({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleApp> retval = [];
  var url = '$apiEndpoint/apps';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleApp.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleConnectedPerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/connected_people
Future<List<PcoPeopleConnectedPerson>> getConnectedPersonsConnectedPeople({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleConnectedPerson> retval = [];
  var url = '$apiEndpoint/connected_people';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleConnectedPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleEmail objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/emails
Future<List<PcoPeopleEmail>> getEmails({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleEmail> retval = [];
  var url = '$apiEndpoint/emails';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleEmail.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleFieldDatum objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/field_data
Future<List<PcoPeopleFieldDatum>> getFieldDatumsFieldData({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleFieldDatum> retval = [];
  var url = '$apiEndpoint/field_data';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFieldDatum.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleHouseholdMembership objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/household_memberships
Future<List<PcoPeopleHouseholdMembership>> getHouseholdMemberships({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleHouseholdMembership> retval = [];
  var url = '$apiEndpoint/household_memberships';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleHouseholdMembership.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleHousehold objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/households
Future<List<PcoPeopleHousehold>> getHouseholds({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleHousehold> retval = [];
  var url = '$apiEndpoint/households';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleHousehold.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleInactiveReason objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/inactive_reason
Future<List<PcoPeopleInactiveReason>> getInactiveReasons({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleInactiveReason> retval = [];
  var url = '$apiEndpoint/inactive_reason';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleInactiveReason.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleMaritalStatu objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/marital_status
Future<List<PcoPeopleMaritalStatu>> getMaritalStatus({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleMaritalStatu> retval = [];
  var url = '$apiEndpoint/marital_status';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleMaritalStatu.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleMessageGroup objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/message_groups
Future<List<PcoPeopleMessageGroup>> getMessageGroups({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleMessageGroup> retval = [];
  var url = '$apiEndpoint/message_groups';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleMessageGroup.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleMessage objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/messages
Future<List<PcoPeopleMessage>> getMessages({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleMessage> retval = [];
  var url = '$apiEndpoint/messages';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleMessage.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNamePrefix objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/name_prefix
Future<List<PcoPeopleNamePrefix>> getNamePrefixes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleNamePrefix> retval = [];
  var url = '$apiEndpoint/name_prefix';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNamePrefix.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNameSuffix objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/name_suffix
Future<List<PcoPeopleNameSuffix>> getNameSuffixes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleNameSuffix> retval = [];
  var url = '$apiEndpoint/name_suffix';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNameSuffix.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNote objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/notes
Future<List<PcoPeopleNote>> getNotes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleNote> retval = [];
  var url = '$apiEndpoint/notes';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNote.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleOrganization objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/organization
Future<List<PcoPeopleOrganization>> getOrganizations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleOrganization> retval = [];
  var url = '$apiEndpoint/organization';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleOrganization.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePersonApp objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/person_apps
Future<List<PcoPeoplePersonApp>> getPersonApps({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePersonApp> retval = [];
  var url = '$apiEndpoint/person_apps';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePersonApp.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePhoneNumber objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/phone_numbers
Future<List<PcoPeoplePhoneNumber>> getPhoneNumbers({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePhoneNumber> retval = [];
  var url = '$apiEndpoint/phone_numbers';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePhoneNumber.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePlatformNotification objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/platform_notifications
Future<List<PcoPeoplePlatformNotification>> getPlatformNotifications({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePlatformNotification> retval = [];
  var url = '$apiEndpoint/platform_notifications';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePlatformNotification.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleCampu objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/primary_campus
Future<List<PcoPeopleCampu>> getCampusPrimaryCampus({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleCampu> retval = [];
  var url = '$apiEndpoint/primary_campus';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleCampu.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleSchoolOption objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/school
Future<List<PcoPeopleSchoolOption>> getSchoolOptionsSchool({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleSchoolOption> retval = [];
  var url = '$apiEndpoint/school';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleSchoolOption.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleSocialProfile objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/social_profiles
Future<List<PcoPeopleSocialProfile>> getSocialProfiles({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleSocialProfile> retval = [];
  var url = '$apiEndpoint/social_profiles';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleSocialProfile.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflowCard objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards
Future<List<PcoPeopleWorkflowCard>> getWorkflowCards({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleWorkflowCard> retval = [];
  var url = '$apiEndpoint/workflow_cards';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowCard.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflowShare objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares
Future<List<PcoPeopleWorkflowShare>> getWorkflowShares({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleWorkflowShare> retval = [];
  var url = '$apiEndpoint/workflow_shares';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowShare.fromJson(itemData));
    }
  }
  return retval;
}
    

}
