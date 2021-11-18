/// This file was generated on 2021-11-18T15:28:02.059949


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
class PcoPeopleOrganization extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

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
  PcoPeopleOrganization.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleOrganization Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/organization;
  static Future<List<PcoPeopleOrganization>> getManyFromPeopleAndOrganizationIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleOrganization> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/organization';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleOrganization.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleOrganization Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/organization;
  static Future<PcoPeopleOrganization?> getSingleFromPeopleAndOrganizationIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleOrganization?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/organization' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleOrganization.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleAddres objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/addresses
Future<List<PcoPeopleAddres>> getAddresAddresses({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleAddres> retval = [];
  var url = '$apiEndpoint/addresses';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleAddres.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleAnniversaryCouple objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/anniversary_couples
Future<List<PcoPeopleAnniversaryCouple>> getAnniversaryCouples({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleAnniversaryCouple> retval = [];
  var url = '$apiEndpoint/anniversary_couples';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleAnniversaryCouple.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleApp objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/apps
Future<List<PcoPeopleApp>> getApps({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleApp> retval = [];
  var url = '$apiEndpoint/apps';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleApp.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleBirthdayPeople objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/birthday_people
Future<List<PcoPeopleBirthdayPeople>> getBirthdayPeoples({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleBirthdayPeople> retval = [];
  var url = '$apiEndpoint/birthday_people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleBirthdayPeople.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleCampu objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/campuses
Future<List<PcoPeopleCampu>> getCampusCampuses({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleCampu> retval = [];
  var url = '$apiEndpoint/campuses';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleCampu.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleCarrier objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/carriers
Future<List<PcoPeopleCarrier>> getCarriers({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleCarrier> retval = [];
  var url = '$apiEndpoint/carriers';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleCarrier.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleEmail objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/emails
Future<List<PcoPeopleEmail>> getEmails({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleEmail> retval = [];
  var url = '$apiEndpoint/emails';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleEmail.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleFieldDatum objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_data
Future<List<PcoPeopleFieldDatum>> getFieldDatumsFieldData({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleFieldDatum> retval = [];
  var url = '$apiEndpoint/field_data';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFieldDatum.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleFieldDefinition objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions
Future<List<PcoPeopleFieldDefinition>> getFieldDefinitions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleFieldDefinition> retval = [];
  var url = '$apiEndpoint/field_definitions';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFieldDefinition.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleForm objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms
Future<List<PcoPeopleForm>> getForms({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleForm> retval = [];
  var url = '$apiEndpoint/forms';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleForm.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleHousehold objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/households
Future<List<PcoPeopleHousehold>> getHouseholds({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleHousehold> retval = [];
  var url = '$apiEndpoint/households';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleHousehold.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleInactiveReason objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/inactive_reasons
Future<List<PcoPeopleInactiveReason>> getInactiveReasons({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleInactiveReason> retval = [];
  var url = '$apiEndpoint/inactive_reasons';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleInactiveReason.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleListCategory objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/list_categories
Future<List<PcoPeopleListCategory>> getListCategories({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleListCategory> retval = [];
  var url = '$apiEndpoint/list_categories';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleListCategory.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleList objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists
Future<List<PcoPeopleList>> getLists({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleList> retval = [];
  var url = '$apiEndpoint/lists';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleList.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleMaritalStatu objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/marital_statuses
Future<List<PcoPeopleMaritalStatu>> getMaritalStatusMaritalStatuses({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleMaritalStatu> retval = [];
  var url = '$apiEndpoint/marital_statuses';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleMaritalStatu.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleMessageGroup objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups
Future<List<PcoPeopleMessageGroup>> getMessageGroups({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleMessageGroup> retval = [];
  var url = '$apiEndpoint/message_groups';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleMessageGroup.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleMessage objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/messages
Future<List<PcoPeopleMessage>> getMessages({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleMessage> retval = [];
  var url = '$apiEndpoint/messages';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleMessage.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNamePrefix objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/name_prefixes
Future<List<PcoPeopleNamePrefix>> getNamePrefixes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleNamePrefix> retval = [];
  var url = '$apiEndpoint/name_prefixes';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNamePrefix.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNameSuffix objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/name_suffixes
Future<List<PcoPeopleNameSuffix>> getNameSuffixes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleNameSuffix> retval = [];
  var url = '$apiEndpoint/name_suffixes';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNameSuffix.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNoteCategory objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories
Future<List<PcoPeopleNoteCategory>> getNoteCategories({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleNoteCategory> retval = [];
  var url = '$apiEndpoint/note_categories';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNoteCategory.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNoteCategorySubscription objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/note_category_subscriptions
Future<List<PcoPeopleNoteCategorySubscription>> getNoteCategorySubscriptions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleNoteCategorySubscription> retval = [];
  var url = '$apiEndpoint/note_category_subscriptions';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNoteCategorySubscription.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNote objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/notes
Future<List<PcoPeopleNote>> getNotes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleNote> retval = [];
  var url = '$apiEndpoint/notes';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNote.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people
Future<List<PcoPeoplePerson>> getPersonsPeople({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePeopleImport objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports
Future<List<PcoPeoplePeopleImport>> getPeopleImports({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePeopleImport> retval = [];
  var url = '$apiEndpoint/people_imports';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePeopleImport.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePersonMerger objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/person_mergers
Future<List<PcoPeoplePersonMerger>> getPersonMergers({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePersonMerger> retval = [];
  var url = '$apiEndpoint/person_mergers';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePersonMerger.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleReport objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/reports
Future<List<PcoPeopleReport>> getReports({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleReport> retval = [];
  var url = '$apiEndpoint/reports';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleReport.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleSchoolOption objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/school_options
Future<List<PcoPeopleSchoolOption>> getSchoolOptions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleSchoolOption> retval = [];
  var url = '$apiEndpoint/school_options';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleSchoolOption.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleSocialProfile objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/social_profiles
Future<List<PcoPeopleSocialProfile>> getSocialProfiles({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleSocialProfile> retval = [];
  var url = '$apiEndpoint/social_profiles';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleSocialProfile.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleOrganizationStatistic objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/stats
Future<List<PcoPeopleOrganizationStatistic>> getOrganizationStatisticsStats({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleOrganizationStatistic> retval = [];
  var url = '$apiEndpoint/stats';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleOrganizationStatistic.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleTab objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/tabs
Future<List<PcoPeopleTab>> getTabs({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleTab> retval = [];
  var url = '$apiEndpoint/tabs';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleTab.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflow objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows
Future<List<PcoPeopleWorkflow>> getWorkflows({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleWorkflow> retval = [];
  var url = '$apiEndpoint/workflows';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflow.fromJson(itemData));
    }
  }
  return retval;
}
    

}
