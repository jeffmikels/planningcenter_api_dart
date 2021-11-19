/// This file was generated on 2021-11-19T12:10:42.572634


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
  static Future<List<PcoPeopleOrganization>> getManyFromPeopleAndOrganizationIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleOrganization> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleOrganization.canInclude;
    var url = '/people/v2/people/$peopleId/organization';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleOrganization.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleOrganization Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/organization;
  static Future<PcoPeopleOrganization?> getSingleFromPeopleAndOrganizationIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleOrganization?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleOrganization.canInclude;
    var url = '/people/v2/people/$peopleId/organization' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleOrganization.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleAddres objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/addresses
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
    
/// will get many PcoPeopleAnniversaryCouple objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/anniversary_couples
Future<List<PcoPeopleAnniversaryCouple>> getAnniversaryCouples({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleAnniversaryCouple.canInclude;
  List<PcoPeopleAnniversaryCouple> retval = [];
  var url = '$apiEndpoint/anniversary_couples';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleAnniversaryCouple.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleApp objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/apps
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
    
/// will get many PcoPeopleBirthdayPeople objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/birthday_people
Future<List<PcoPeopleBirthdayPeople>> getBirthdayPeoples({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleBirthdayPeople.canInclude;
  List<PcoPeopleBirthdayPeople> retval = [];
  var url = '$apiEndpoint/birthday_people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleBirthdayPeople.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleCampus objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/campuses
Future<List<PcoPeopleCampus>> getCampuses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleCampus.canInclude;
  List<PcoPeopleCampus> retval = [];
  var url = '$apiEndpoint/campuses';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleCampus.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleCarrier objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/carriers
Future<List<PcoPeopleCarrier>> getCarriers({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleCarrier.canInclude;
  List<PcoPeopleCarrier> retval = [];
  var url = '$apiEndpoint/carriers';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleCarrier.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleEmail objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/emails
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
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_data
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
    
/// will get many PcoPeopleFieldDefinition objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions
Future<List<PcoPeopleFieldDefinition>> getFieldDefinitions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
  List<PcoPeopleFieldDefinition> retval = [];
  var url = '$apiEndpoint/field_definitions';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFieldDefinition.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleForm objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms
Future<List<PcoPeopleForm>> getForms({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleForm.canInclude;
  List<PcoPeopleForm> retval = [];
  var url = '$apiEndpoint/forms';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleForm.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleHousehold objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/households
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
/// using a path like this: https://api.planningcenteronline.com/people/v2/inactive_reasons
Future<List<PcoPeopleInactiveReason>> getInactiveReasons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleInactiveReason.canInclude;
  List<PcoPeopleInactiveReason> retval = [];
  var url = '$apiEndpoint/inactive_reasons';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleInactiveReason.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleListCategory objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/list_categories
Future<List<PcoPeopleListCategory>> getListCategories({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleListCategory.canInclude;
  List<PcoPeopleListCategory> retval = [];
  var url = '$apiEndpoint/list_categories';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleListCategory.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleList objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists
Future<List<PcoPeopleList>> getLists({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleList.canInclude;
  List<PcoPeopleList> retval = [];
  var url = '$apiEndpoint/lists';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleList.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleMaritalStatu objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/marital_statuses
Future<List<PcoPeopleMaritalStatu>> getMaritalStatusMaritalStatuses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleMaritalStatu.canInclude;
  List<PcoPeopleMaritalStatu> retval = [];
  var url = '$apiEndpoint/marital_statuses';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleMaritalStatu.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleMessageGroup objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups
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
/// using a path like this: https://api.planningcenteronline.com/people/v2/messages
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
/// using a path like this: https://api.planningcenteronline.com/people/v2/name_prefixes
Future<List<PcoPeopleNamePrefix>> getNamePrefixes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNamePrefix.canInclude;
  List<PcoPeopleNamePrefix> retval = [];
  var url = '$apiEndpoint/name_prefixes';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNamePrefix.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNameSuffix objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/name_suffixes
Future<List<PcoPeopleNameSuffix>> getNameSuffixes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNameSuffix.canInclude;
  List<PcoPeopleNameSuffix> retval = [];
  var url = '$apiEndpoint/name_suffixes';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNameSuffix.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNoteCategory objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories
Future<List<PcoPeopleNoteCategory>> getNoteCategories({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNoteCategory.canInclude;
  List<PcoPeopleNoteCategory> retval = [];
  var url = '$apiEndpoint/note_categories';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNoteCategory.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNoteCategorySubscription objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/note_category_subscriptions
Future<List<PcoPeopleNoteCategorySubscription>> getNoteCategorySubscriptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleNoteCategorySubscription.canInclude;
  List<PcoPeopleNoteCategorySubscription> retval = [];
  var url = '$apiEndpoint/note_category_subscriptions';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleNoteCategorySubscription.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleNote objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/notes
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
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people
Future<List<PcoPeoplePerson>> getPersonsPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePeopleImport objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports
Future<List<PcoPeoplePeopleImport>> getPeopleImports({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePeopleImport.canInclude;
  List<PcoPeoplePeopleImport> retval = [];
  var url = '$apiEndpoint/people_imports';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePeopleImport.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePersonMerger objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/person_mergers
Future<List<PcoPeoplePersonMerger>> getPersonMergers({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePersonMerger.canInclude;
  List<PcoPeoplePersonMerger> retval = [];
  var url = '$apiEndpoint/person_mergers';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePersonMerger.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleReport objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/reports
Future<List<PcoPeopleReport>> getReports({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleReport.canInclude;
  List<PcoPeopleReport> retval = [];
  var url = '$apiEndpoint/reports';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleReport.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleSchoolOption objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/school_options
Future<List<PcoPeopleSchoolOption>> getSchoolOptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
  List<PcoPeopleSchoolOption> retval = [];
  var url = '$apiEndpoint/school_options';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleSchoolOption.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleSocialProfile objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/social_profiles
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
    
/// will get many PcoPeopleOrganizationStatistic objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/stats
Future<List<PcoPeopleOrganizationStatistic>> getOrganizationStatisticsStats({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleOrganizationStatistic.canInclude;
  List<PcoPeopleOrganizationStatistic> retval = [];
  var url = '$apiEndpoint/stats';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleOrganizationStatistic.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleTab objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/tabs
Future<List<PcoPeopleTab>> getTabs({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleTab.canInclude;
  List<PcoPeopleTab> retval = [];
  var url = '$apiEndpoint/tabs';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleTab.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflow objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows
Future<List<PcoPeopleWorkflow>> getWorkflows({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleWorkflow.canInclude;
  List<PcoPeopleWorkflow> retval = [];
  var url = '$apiEndpoint/workflows';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflow.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
