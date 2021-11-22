/// This file was generated on 2021-11-22T16:37:08.857771


import '../../pco.dart';

/// This class represents a PCO Services TextSetting Object
/// 
/// Application: services
/// Id:          text_setting
/// Type:        TextSetting
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"TextSetting","id":"1","attributes":{"scheduling_requests_enabled":true,"general_emails_enabled":true,"scheduling_replies_enabled":true,"reminders_enabled":true,"carrier":"string","display_number":"string","normalized_number":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/people/1/text_settings
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesTextSetting extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'TextSetting';
  static const String kTypeId = 'text_setting';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'textsetting-person-text_settings';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/text_settings';

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
  static const kSchedulingRequestsEnabled = 'scheduling_requests_enabled';
  static const kGeneralEmailsEnabled = 'general_emails_enabled';
  static const kSchedulingRepliesEnabled = 'scheduling_replies_enabled';
  static const kRemindersEnabled = 'reminders_enabled';
  static const kCarrier = 'carrier';
  static const kDisplayNumber = 'display_number';
  static const kNormalizedNumber = 'normalized_number';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => ['general_emails_enabled','reminders_enabled','scheduling_replies_enabled','scheduling_requests_enabled'];

  bool get isSchedulingRequestsEnabled => attributes[kSchedulingRequestsEnabled] == true;
  bool get isGeneralEmailsEnabled => attributes[kGeneralEmailsEnabled] == true;
  bool get isSchedulingRepliesEnabled => attributes[kSchedulingRepliesEnabled] == true;
  bool get isRemindersEnabled => attributes[kRemindersEnabled] == true;
  String get carrier => attributes[kCarrier] ?? '';
  String get displayNumber => attributes[kDisplayNumber] ?? '';
  String get normalizedNumber => attributes[kNormalizedNumber] ?? '';


  set isSchedulingRequestsEnabled(bool b) => attributes[kSchedulingRequestsEnabled] = b;
  set isGeneralEmailsEnabled(bool b) => attributes[kGeneralEmailsEnabled] = b;
  set isSchedulingRepliesEnabled(bool b) => attributes[kSchedulingRepliesEnabled] = b;
  set isRemindersEnabled(bool b) => attributes[kRemindersEnabled] = b;


  PcoServicesTextSetting() : super(kPcoApplication, kTypeString);
  PcoServicesTextSetting.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesTextSetting Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/text_settings;
  static Future<List<PcoServicesTextSetting>> getManyFromPeopleAndTextSettingIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesTextSetting> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTextSetting.canInclude;
    var url = '/services/v2/people/$peopleId/text_settings';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTextSetting.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesTextSetting Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/text_settings;
  static Future<PcoServicesTextSetting?> getSingleFromPeopleAndTextSettingIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesTextSetting?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTextSetting.canInclude;
    var url = '/services/v2/people/$peopleId/text_settings' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTextSetting.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
