/// This file was generated on 2021-11-19T12:10:42.092316


import '../../pco.dart';

/// This class represents a PCO Services Person Object
/// 
/// Application: services
/// Id:          person
/// Type:        Person
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A person added to Planning Center Services.
/// 
/// Example:
/// 
/// {"type":"Person","id":"1","attributes":{"photo_url":"string","photo_thumbnail_url":"string","preferred_app":"string","assigned_to_rehearsal_team":true,"archived_at":"2000-01-01T12:00:00Z","created_at":"2000-01-01T12:00:00Z","first_name":"string","last_name":"string","name_prefix":"string","name_suffix":"string","updated_at":"2000-01-01T12:00:00Z","facebook_id":"primary_key","legacy_id":"primary_key","full_name":"string","max_permissions":"string","permissions":"string","status":"string","anniversary":"2000-01-01T12:00:00Z","birthdate":"2000-01-01T12:00:00Z","given_name":"string","middle_name":"string","nickname":"string","access_media_attachments":true,"access_plan_attachments":true,"access_song_attachments":true,"archived":true,"site_administrator":true,"logged_in_at":"2000-01-01T12:00:00Z","notes":"string","passed_background_check":true,"ical_code":"string","praise_charts_enabled":true,"me_tab":"string","plans_tab":"string","songs_tab":"string","media_tab":"string","people_tab":"string","can_edit_all_people":true,"can_view_all_people":true,"onboardings":[]},"relationships":{"created_by":{"data":{"type":"Person","id":"1"}},"updated_by":{"data":{"type":"Person","id":"1"}},"current_folder":{"data":{"type":"Folder","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/people
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @assigned_to_rehearsal_team (URLParameter), query on a specific assigned_to_rehearsal_team, example: ?where[assigned_to_rehearsal_team]=true
/// @legacy_id (URLParameter), query on a specific legacy_id, example: ?where[legacy_id]=primary_key
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoServicesPerson extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Person';
  static const String kTypeId = 'person';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'person-organization-people';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @assigned_to_rehearsal_team (URLParameter), query on a specific assigned_to_rehearsal_team, example: ?where[assigned_to_rehearsal_team]=true
  /// @legacy_id (URLParameter), query on a specific legacy_id, example: ?where[legacy_id]=primary_key
  static List<String> get canQuery => ['assigned_to_rehearsal_team','legacy_id'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','first_name','last_name','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kPhotoUrl = 'photo_url';
  static const kPhotoThumbnailUrl = 'photo_thumbnail_url';
  static const kPreferredApp = 'preferred_app';
  static const kAssignedToRehearsalTeam = 'assigned_to_rehearsal_team';
  static const kArchivedAt = 'archived_at';
  static const kFirstName = 'first_name';
  static const kLastName = 'last_name';
  static const kNamePrefix = 'name_prefix';
  static const kNameSuffix = 'name_suffix';
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


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => ['preferred_app','onboardings','access_media_attachments','access_plan_attachments','access_song_attachments','current_folder_id','permissions'];

  String get photoUrl => attributes[kPhotoUrl] ?? '';
  String get photoThumbnailUrl => attributes[kPhotoThumbnailUrl] ?? '';
  String get preferredApp => attributes[kPreferredApp] ?? '';
  bool get isAssignedToRehearsalTeam => attributes[kAssignedToRehearsalTeam] == true;
  DateTime get archivedAt => DateTime.parse(attributes[kArchivedAt] ?? '');
  String get firstName => attributes[kFirstName] ?? '';
  String get lastName => attributes[kLastName] ?? '';
  String get namePrefix => attributes[kNamePrefix] ?? '';
  String get nameSuffix => attributes[kNameSuffix] ?? '';

  /// DEPRECATED: this attribute will be removed in the next release and will return the string "DEPRECATED" in this version
  String get facebookId => attributes[kFacebookId] ?? '';

  /// If you've used Person.id from API v1 this attribute can be used to map from those old IDs to the new IDs used in API v2
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


  set preferredApp(String s) => attributes[kPreferredApp] = s;
  set permissions(String s) => attributes[kPermissions] = s;
  set isAccessMediaAttachments(bool b) => attributes[kAccessMediaAttachments] = b;
  set isAccessPlanAttachments(bool b) => attributes[kAccessPlanAttachments] = b;
  set isAccessSongAttachments(bool b) => attributes[kAccessSongAttachments] = b;
  set onboardings(List a) => attributes[kOnboardings] = a;


  PcoServicesPerson() : super(kPcoApplication, kTypeString);
  PcoServicesPerson.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/controller;
  static Future<List<PcoServicesPerson>> getManyFromPeopleAndRecentPlanAndLiveAndControllerIds(String peopleId,String recentPlanId,String liveId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/controller';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people;
  static Future<List<PcoServicesPerson>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/person;
  static Future<List<PcoServicesPerson>> getManyFromServiceTypeAndTeamPositionAndPersonTeamPositionAssignmentAndPersonIds(String serviceTypeId,String teamPositionId,String personTeamPositionAssignmentId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments/$personTeamPositionAssignmentId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/person;
  static Future<List<PcoServicesPerson>> getManyFromPeopleAndPlanPeopleAndPersonIds(String peopleId,String planPeopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/respond_to;
  static Future<List<PcoServicesPerson>> getManyFromPeopleAndScheduleAndRespondToIds(String peopleId,String scheduleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/people/$peopleId/schedules/$scheduleId/respond_to';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/people;
  static Future<List<PcoServicesPerson>> getManyFromPeopleAndAssignedTeamLeaderAndPeopleIds(String peopleId,String assignedTeamLeaderId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/people/$peopleId/assigned_team_leaders/$assignedTeamLeaderId/people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/people;
  static Future<List<PcoServicesPerson>> getManyFromTeamAndPeopleIds(String teamId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/teams/$teamId/people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesPerson Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/controller;
  static Future<PcoServicesPerson?> getSingleFromPeopleAndRecentPlanAndLiveAndControllerIds(String peopleId,String recentPlanId,String liveId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/controller' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesPerson Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people;
  static Future<PcoServicesPerson?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesPerson Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/person;
  static Future<PcoServicesPerson?> getSingleFromServiceTypeAndTeamPositionAndPersonTeamPositionAssignmentAndPersonIds(String serviceTypeId,String teamPositionId,String personTeamPositionAssignmentId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments/$personTeamPositionAssignmentId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesPerson Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/person;
  static Future<PcoServicesPerson?> getSingleFromPeopleAndPlanPeopleAndPersonIds(String peopleId,String planPeopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesPerson Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/respond_to;
  static Future<PcoServicesPerson?> getSingleFromPeopleAndScheduleAndRespondToIds(String peopleId,String scheduleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/people/$peopleId/schedules/$scheduleId/respond_to' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesPerson Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/people;
  static Future<PcoServicesPerson?> getSingleFromPeopleAndAssignedTeamLeaderAndPeopleIds(String peopleId,String assignedTeamLeaderId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/people/$peopleId/assigned_team_leaders/$assignedTeamLeaderId/people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesPerson Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/people;
  static Future<PcoServicesPerson?> getSingleFromTeamAndPeopleIds(String teamId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '/services/v2/teams/$teamId/people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesAvailableSignup objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups
Future<List<PcoServicesAvailableSignup>> getAvailableSignups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesAvailableSignup.canInclude;
  List<PcoServicesAvailableSignup> retval = [];
  var url = '$apiEndpoint/available_signups';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesAvailableSignup.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesBlockout objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/blockouts
Future<List<PcoServicesBlockout>> getBlockouts({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesBlockout.canInclude;
  List<PcoServicesBlockout> retval = [];
  var url = '$apiEndpoint/blockouts';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesBlockout.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPersonTeamPositionAssignment objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/person_team_position_assignments
Future<List<PcoServicesPersonTeamPositionAssignment>> getPersonTeamPositionAssignments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
  List<PcoServicesPersonTeamPositionAssignment> retval = [];
  var url = '$apiEndpoint/person_team_position_assignments';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPersonTeamPositionAssignment.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlanPerson objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people
Future<List<PcoServicesPlanPerson>> getPlanPersonsPlanPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPlanPerson.canInclude;
  List<PcoServicesPlanPerson> retval = [];
  var url = '$apiEndpoint/plan_people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlanPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesSchedule objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules
Future<List<PcoServicesSchedule>> getSchedules({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesSchedule.canInclude;
  List<PcoServicesSchedule> retval = [];
  var url = '$apiEndpoint/schedules';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesSchedule.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTag objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/tags
Future<List<PcoServicesTag>> getTags({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTag.canInclude;
  List<PcoServicesTag> retval = [];
  var url = '$apiEndpoint/tags';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTag.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTeamLeader objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/team_leaders
Future<List<PcoServicesTeamLeader>> getTeamLeaders({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTeamLeader.canInclude;
  List<PcoServicesTeamLeader> retval = [];
  var url = '$apiEndpoint/team_leaders';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTeamLeader.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTextSetting objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/text_settings
Future<List<PcoServicesTextSetting>> getTextSettings({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTextSetting.canInclude;
  List<PcoServicesTextSetting> retval = [];
  var url = '$apiEndpoint/text_settings';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTextSetting.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
