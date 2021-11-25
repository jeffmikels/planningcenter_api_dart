/// This file was generated on 2021-11-25T00:07:20.581475


import '../../pco.dart';

/// This class represents a PCO People Organization Object
/// 
/// Application: people
/// Id:          organization
/// Type:        Organization
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// The organization represents a single church. Every other resource is scoped to this record.
/// 
/// Example:
/// 
/// {"type":"Organization","id":"1","attributes":{"name":"string","country_code":"string","date_format":1,"time_zone":"string","contact_website":"string","avatar_url":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoPeopleOrganization extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kName = 'name';
  static const kCountryCode = 'country_code';
  static const kDateFormat = 'date_format';
  static const kTimeZone = 'time_zone';
  static const kContactWebsite = 'contact_website';
  static const kAvatarUrl = 'avatar_url';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';
  String get countryCode => attributes[kCountryCode] ?? '';
  int get dateFormat => attributes[kDateFormat] ?? 0;
  String get timeZone => attributes[kTimeZone] ?? '';
  String get contactWebsite => attributes[kContactWebsite] ?? '';
  String get avatarUrl => attributes[kAvatarUrl] ?? '';




  PcoPeopleOrganization() : super(kPcoApplication, kTypeString);
  PcoPeopleOrganization.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleOrganization Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/organization;
  static Future<PcoCollection<PcoPeopleOrganization>> getManyFromPeople(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleOrganization.canInclude;
    var url = '/people/v2/people/$peopleId/organization';
    return PcoCollection.fromApiCall<PcoPeopleOrganization>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeopleOrganization Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/organization;
  static Future<PcoCollection<PcoPeopleOrganization>> getSingleFromPeople(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleOrganization.canInclude;
    var url = '/people/v2/people/$peopleId/organization' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleOrganization>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleOrganization.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoPeopleAddres objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/addresses
Future<PcoCollection<PcoPeopleAddres>> getAddresAddresses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleAddres.canInclude;
  var url = '$apiEndpoint/addresses';
  return PcoCollection.fromApiCall<PcoPeopleAddres>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleAnniversaryCouple objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/anniversary_couples
Future<PcoCollection<PcoPeopleAnniversaryCouple>> getAnniversaryCouples({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleAnniversaryCouple.canInclude;
  var url = '$apiEndpoint/anniversary_couples';
  return PcoCollection.fromApiCall<PcoPeopleAnniversaryCouple>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleApp objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/apps
Future<PcoCollection<PcoPeopleApp>> getApps({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleApp.canInclude;
  var url = '$apiEndpoint/apps';
  return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleBirthdayPeople objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/birthday_people
Future<PcoCollection<PcoPeopleBirthdayPeople>> getBirthdayPeoples({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleBirthdayPeople.canInclude;
  var url = '$apiEndpoint/birthday_people';
  return PcoCollection.fromApiCall<PcoPeopleBirthdayPeople>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleCampus objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/campuses
Future<PcoCollection<PcoPeopleCampus>> getCampuses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleCampus.canInclude;
  var url = '$apiEndpoint/campuses';
  return PcoCollection.fromApiCall<PcoPeopleCampus>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleCarrier objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/carriers
Future<PcoCollection<PcoPeopleCarrier>> getCarriers({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleCarrier.canInclude;
  var url = '$apiEndpoint/carriers';
  return PcoCollection.fromApiCall<PcoPeopleCarrier>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleEmail objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/emails
Future<PcoCollection<PcoPeopleEmail>> getEmails({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleEmail.canInclude;
  var url = '$apiEndpoint/emails';
  return PcoCollection.fromApiCall<PcoPeopleEmail>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleFieldDatum objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_data
Future<PcoCollection<PcoPeopleFieldDatum>> getFieldDatumsFieldData({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleFieldDatum.canInclude;
  var url = '$apiEndpoint/field_data';
  return PcoCollection.fromApiCall<PcoPeopleFieldDatum>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleFieldDefinition objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions
Future<PcoCollection<PcoPeopleFieldDefinition>> getFieldDefinitions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
  var url = '$apiEndpoint/field_definitions';
  return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleForm objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms
Future<PcoCollection<PcoPeopleForm>> getForms({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleForm.canInclude;
  var url = '$apiEndpoint/forms';
  return PcoCollection.fromApiCall<PcoPeopleForm>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleHousehold objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/households
Future<PcoCollection<PcoPeopleHousehold>> getHouseholds({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
  var url = '$apiEndpoint/households';
  return PcoCollection.fromApiCall<PcoPeopleHousehold>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleInactiveReason objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/inactive_reasons
Future<PcoCollection<PcoPeopleInactiveReason>> getInactiveReasons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleInactiveReason.canInclude;
  var url = '$apiEndpoint/inactive_reasons';
  return PcoCollection.fromApiCall<PcoPeopleInactiveReason>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleListCategory objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/list_categories
Future<PcoCollection<PcoPeopleListCategory>> getListCategories({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleListCategory.canInclude;
  var url = '$apiEndpoint/list_categories';
  return PcoCollection.fromApiCall<PcoPeopleListCategory>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleList objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists
Future<PcoCollection<PcoPeopleList>> getLists({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleList.canInclude;
  var url = '$apiEndpoint/lists';
  return PcoCollection.fromApiCall<PcoPeopleList>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleMaritalStatu objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/marital_statuses
Future<PcoCollection<PcoPeopleMaritalStatu>> getMaritalStatusMaritalStatuses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleMaritalStatu.canInclude;
  var url = '$apiEndpoint/marital_statuses';
  return PcoCollection.fromApiCall<PcoPeopleMaritalStatu>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleMessageGroup objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups
Future<PcoCollection<PcoPeopleMessageGroup>> getMessageGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
  var url = '$apiEndpoint/message_groups';
  return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleMessage objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/messages
Future<PcoCollection<PcoPeopleMessage>> getMessages({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleMessage.canInclude;
  var url = '$apiEndpoint/messages';
  return PcoCollection.fromApiCall<PcoPeopleMessage>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleNamePrefix objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/name_prefixes
Future<PcoCollection<PcoPeopleNamePrefix>> getNamePrefixes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNamePrefix.canInclude;
  var url = '$apiEndpoint/name_prefixes';
  return PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleNameSuffix objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/name_suffixes
Future<PcoCollection<PcoPeopleNameSuffix>> getNameSuffixes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNameSuffix.canInclude;
  var url = '$apiEndpoint/name_suffixes';
  return PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleNoteCategory objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories
Future<PcoCollection<PcoPeopleNoteCategory>> getNoteCategories({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNoteCategory.canInclude;
  var url = '$apiEndpoint/note_categories';
  return PcoCollection.fromApiCall<PcoPeopleNoteCategory>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleNoteCategorySubscription objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/note_category_subscriptions
Future<PcoCollection<PcoPeopleNoteCategorySubscription>> getNoteCategorySubscriptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNoteCategorySubscription.canInclude;
  var url = '$apiEndpoint/note_category_subscriptions';
  return PcoCollection.fromApiCall<PcoPeopleNoteCategorySubscription>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleNote objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/notes
Future<PcoCollection<PcoPeopleNote>> getNotes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNote.canInclude;
  var url = '$apiEndpoint/notes';
  return PcoCollection.fromApiCall<PcoPeopleNote>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people
Future<PcoCollection<PcoPeoplePerson>> getPersonsPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  var url = '$apiEndpoint/people';
  return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeoplePeopleImport objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports
Future<PcoCollection<PcoPeoplePeopleImport>> getPeopleImports({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePeopleImport.canInclude;
  var url = '$apiEndpoint/people_imports';
  return PcoCollection.fromApiCall<PcoPeoplePeopleImport>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeoplePersonMerger objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/person_mergers
Future<PcoCollection<PcoPeoplePersonMerger>> getPersonMergers({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePersonMerger.canInclude;
  var url = '$apiEndpoint/person_mergers';
  return PcoCollection.fromApiCall<PcoPeoplePersonMerger>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleReport objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/reports
Future<PcoCollection<PcoPeopleReport>> getReports({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleReport.canInclude;
  var url = '$apiEndpoint/reports';
  return PcoCollection.fromApiCall<PcoPeopleReport>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleSchoolOption objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/school_options
Future<PcoCollection<PcoPeopleSchoolOption>> getSchoolOptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
  var url = '$apiEndpoint/school_options';
  return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleSocialProfile objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/social_profiles
Future<PcoCollection<PcoPeopleSocialProfile>> getSocialProfiles({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleSocialProfile.canInclude;
  var url = '$apiEndpoint/social_profiles';
  return PcoCollection.fromApiCall<PcoPeopleSocialProfile>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleOrganizationStatistic objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/stats
Future<PcoCollection<PcoPeopleOrganizationStatistic>> getOrganizationStatisticsStats({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleOrganizationStatistic.canInclude;
  var url = '$apiEndpoint/stats';
  return PcoCollection.fromApiCall<PcoPeopleOrganizationStatistic>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleTab objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/tabs
Future<PcoCollection<PcoPeopleTab>> getTabs({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleTab.canInclude;
  var url = '$apiEndpoint/tabs';
  return PcoCollection.fromApiCall<PcoPeopleTab>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleWorkflow objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows
Future<PcoCollection<PcoPeopleWorkflow>> getWorkflows({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleWorkflow.canInclude;
  var url = '$apiEndpoint/workflows';
  return PcoCollection.fromApiCall<PcoPeopleWorkflow>(url, query: query, apiVersion:apiVersion);
}
    


}
