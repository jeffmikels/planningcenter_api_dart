/// This file was generated on 2021-11-22T16:57:41.132589


import '../../pco.dart';

/// This class represents a PCO Services Organization Object
/// 
/// Application: services
/// Id:          organization
/// Type:        Organization
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// The root level of an organization where account-level settings are applied.
/// 
/// Example:
/// 
/// {"type":"Organization","id":"1","attributes":{"ccli":"string","created_at":"2000-01-01T12:00:00Z","date_format":1,"music_stand_enabled":true,"name":"string","projector_enabled":true,"time_zone":"string","twenty_four_hour_time":true,"updated_at":"2000-01-01T12:00:00Z","owner_name":"string","required_to_set_download_permission":"string","secret":"string","allow_mp3_download":true,"calendar_starts_on_sunday":true,"ccli_connected":true,"ccli_reporting_enabled":true,"extra_file_storage_allowed":true,"file_storage_exceeded":true,"file_storage_size":true,"file_storage_size_used":true,"file_storage_extra_enabled":true,"rehearsal_mix_enabled":true,"legacy_id":"primary_key","file_storage_extra_charges":1,"people_allowed":1,"people_remaining":1,"beta":true},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesOrganization extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2';

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
  static const kCcli = 'ccli';
  static const kDateFormat = 'date_format';
  static const kMusicStandEnabled = 'music_stand_enabled';
  static const kName = 'name';
  static const kProjectorEnabled = 'projector_enabled';
  static const kTimeZone = 'time_zone';
  static const kTwentyFourHourTime = 'twenty_four_hour_time';
  static const kOwnerName = 'owner_name';
  static const kRequiredToSetDownloadPermission = 'required_to_set_download_permission';
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

  String get ccli => attributes[kCcli] ?? '';

  /// Two possible values, `US` `EU`
  int get dateFormat => attributes[kDateFormat] ?? 0;
  bool get isMusicStandEnabled => attributes[kMusicStandEnabled] == true;
  String get name => attributes[kName] ?? '';
  bool get isProjectorEnabled => attributes[kProjectorEnabled] == true;
  String get timeZone => attributes[kTimeZone] ?? '';
  bool get isTwentyFourHourTime => attributes[kTwentyFourHourTime] == true;
  String get ownerName => attributes[kOwnerName] ?? '';

  /// Possible values: `editor`, `administrator`, `site_administrator`
  String get requiredToSetDownloadPermission => attributes[kRequiredToSetDownloadPermission] ?? '';
  String get secret => attributes[kSecret] ?? '';
  bool get isAllowMp3Download => attributes[kAllowMp3Download] == true;
  bool get isCalendarStartsOnSunday => attributes[kCalendarStartsOnSunday] == true;
  bool get isCcliConnected => attributes[kCcliConnected] == true;
  bool get isCcliReportingEnabled => attributes[kCcliReportingEnabled] == true;
  bool get isExtraFileStorageAllowed => attributes[kExtraFileStorageAllowed] == true;
  bool get isFileStorageExceeded => attributes[kFileStorageExceeded] == true;
  bool get isFileStorageSize => attributes[kFileStorageSize] == true;
  bool get isFileStorageSizeUsed => attributes[kFileStorageSizeUsed] == true;
  bool get isFileStorageExtraEnabled => attributes[kFileStorageExtraEnabled] == true;
  bool get isRehearsalMixEnabled => attributes[kRehearsalMixEnabled] == true;
  String get legacyId => attributes[kLegacyId] ?? '';
  int get fileStorageExtraCharges => attributes[kFileStorageExtraCharges] ?? 0;
  int get peopleAllowed => attributes[kPeopleAllowed] ?? 0;
  int get peopleRemaining => attributes[kPeopleRemaining] ?? 0;
  bool get isBeta => attributes[kBeta] == true;




  PcoServicesOrganization() : super(kPcoApplication, kTypeString);
  PcoServicesOrganization.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesOrganization Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/plans;
  static Future<List<PcoServicesOrganization>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesOrganization> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesOrganization.canInclude;
    var url = '/services/v2/plans';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesOrganization.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesOrganization Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/plans;
  static Future<PcoServicesOrganization?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesOrganization?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesOrganization.canInclude;
    var url = '/services/v2/plans' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesOrganization.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesAttachmentType objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/attachment_types
Future<List<PcoServicesAttachmentType>> getAttachmentTypes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesAttachmentType.canInclude;
  List<PcoServicesAttachmentType> retval = [];
  var url = '$apiEndpoint/attachment_types';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesAttachmentType.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesEmailTemplate objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/email_templates
Future<List<PcoServicesEmailTemplate>> getEmailTemplates({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesEmailTemplate.canInclude;
  List<PcoServicesEmailTemplate> retval = [];
  var url = '$apiEndpoint/email_templates';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesEmailTemplate.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesFolder objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/folders
Future<List<PcoServicesFolder>> getFolders({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesFolder.canInclude;
  List<PcoServicesFolder> retval = [];
  var url = '$apiEndpoint/folders';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesFolder.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesMedia objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/media
Future<List<PcoServicesMedia>> getMedias({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesMedia.canInclude;
  List<PcoServicesMedia> retval = [];
  var url = '$apiEndpoint/media';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesMedia.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPerson objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people
Future<List<PcoServicesPerson>> getPersonsPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPerson.canInclude;
  List<PcoServicesPerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesOrganization objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/plans
Future<List<PcoServicesOrganization>> getOrganizationsPlans({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesOrganization.canInclude;
  List<PcoServicesOrganization> retval = [];
  var url = '$apiEndpoint/plans';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesOrganization.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesReportTemplate objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/report_templates
Future<List<PcoServicesReportTemplate>> getReportTemplates({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesReportTemplate.canInclude;
  List<PcoServicesReportTemplate> retval = [];
  var url = '$apiEndpoint/report_templates';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesReportTemplate.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesSeries objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/series
Future<List<PcoServicesSeries>> getSeries({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesSeries.canInclude;
  List<PcoServicesSeries> retval = [];
  var url = '$apiEndpoint/series';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesSeries.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesServiceType objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types
Future<List<PcoServicesServiceType>> getServiceTypes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesServiceType.canInclude;
  List<PcoServicesServiceType> retval = [];
  var url = '$apiEndpoint/service_types';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesServiceType.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesSong objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs
Future<List<PcoServicesSong>> getSongs({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesSong.canInclude;
  List<PcoServicesSong> retval = [];
  var url = '$apiEndpoint/songs';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesSong.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTagGroup objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups
Future<List<PcoServicesTagGroup>> getTagGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTagGroup.canInclude;
  List<PcoServicesTagGroup> retval = [];
  var url = '$apiEndpoint/tag_groups';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTagGroup.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTeam objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/teams
Future<List<PcoServicesTeam>> getTeams({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTeam.canInclude;
  List<PcoServicesTeam> retval = [];
  var url = '$apiEndpoint/teams';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTeam.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
