/// This file was generated on 2021-11-17T23:59:27.150626


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
class PcoServicesTextSetting extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'TextSetting';
  static const String typeId = 'text_setting';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'textsetting-person-text_settings';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/text_settings';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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


  PcoServicesTextSetting() : super(pcoApplication, typeString);
  PcoServicesTextSetting.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesTextSetting Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/text_settings;
  static Future<List<PcoServicesTextSetting>> getManyFromPeopleAndTextSettingIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTextSetting> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/text_settings';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTextSetting.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesTextSetting Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/text_settings;
  static Future<PcoServicesTextSetting?> getSingleFromPeopleAndTextSettingIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTextSetting?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/text_settings' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTextSetting.fromJson(res.data);
    }
    return retval;
  }




}
