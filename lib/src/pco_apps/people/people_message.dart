/// This file was generated on 2021-11-18T13:57:09.994220


import '../../pco.dart';

/// This class represents a PCO People Message Object
/// 
/// Application: people
/// Id:          message
/// Type:        Message
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A message is an individual email or sms text sent to a member. Every message has a parent message group.
/// 
/// Example:
/// 
/// {"type":"Message","id":"1","attributes":{"kind":"value","to_addresses":"string","subject":"string","file":"string","delivery_status":"string","reject_reason":"string","created_at":"2000-01-01T12:00:00Z","sent_at":"2000-01-01T12:00:00Z","bounced_at":"2000-01-01T12:00:00Z","rejection_notification_sent_at":"2000-01-01T12:00:00Z","from_name":"string","from_address":"string","read_at":"2000-01-01T12:00:00Z","app_name":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/messages
/// 
class PcoPeopleMessage extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'Message';
  static const String typeId = 'message';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'message-organization-messages';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/messages';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kKind = 'kind';
  static const kToAddresses = 'to_addresses';
  static const kSubject = 'subject';
  static const kFile = 'file';
  static const kDeliveryStatus = 'delivery_status';
  static const kRejectReason = 'reject_reason';
  static const kSentAt = 'sent_at';
  static const kBouncedAt = 'bounced_at';
  static const kRejectionNotificationSentAt = 'rejection_notification_sent_at';
  static const kFromName = 'from_name';
  static const kFromAddress = 'from_address';
  static const kReadAt = 'read_at';
  static const kAppName = 'app_name';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// Possible values: `email`, `sms`, or `church_center_message`
  String get kind => attributes[kKind] ?? '';
  String get toAddresses => attributes[kToAddresses] ?? '';
  String get subject => attributes[kSubject] ?? '';
  String get file => attributes[kFile] ?? '';
  String get deliveryStatus => attributes[kDeliveryStatus] ?? '';
  String get rejectReason => attributes[kRejectReason] ?? '';
  DateTime get sentAt => DateTime.parse(attributes[kSentAt] ?? '');
  DateTime get bouncedAt => DateTime.parse(attributes[kBouncedAt] ?? '');
  DateTime get rejectionNotificationSentAt => DateTime.parse(attributes[kRejectionNotificationSentAt] ?? '');
  String get fromName => attributes[kFromName] ?? '';
  String get fromAddress => attributes[kFromAddress] ?? '';
  DateTime get readAt => DateTime.parse(attributes[kReadAt] ?? '');
  String get appName => attributes[kAppName] ?? '';




  PcoPeopleMessage() : super(pcoApplication, typeString);
  PcoPeopleMessage.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleMessage Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/messages;
  static Future<List<PcoPeopleMessage>> getManyFromMessageGroupAndMessageIds(String messageGroupId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleMessage> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/message_groups/$messageGroupId/messages';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleMessage.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleMessage Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/messages;
  static Future<List<PcoPeopleMessage>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleMessage> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/messages';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleMessage.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleMessage Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/messages;
  static Future<List<PcoPeopleMessage>> getManyFromPeopleAndMessageIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleMessage> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/messages';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleMessage.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleMessage Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/messages;
  static Future<PcoPeopleMessage?> getSingleFromMessageGroupAndMessageIds(String messageGroupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleMessage?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/message_groups/$messageGroupId/messages' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMessage.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleMessage Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/messages;
  static Future<PcoPeopleMessage?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleMessage?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/messages' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMessage.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleMessage Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/messages;
  static Future<PcoPeopleMessage?> getSingleFromPeopleAndMessageIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleMessage?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/messages' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMessage.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleMessageGroup objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/messages/1/message_group
Future<List<PcoPeopleMessageGroup>> getMessageGroups({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleMessageGroup> retval = [];
  var url = '$apiEndpoint/message_group';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleMessageGroup.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/messages/1/to
Future<List<PcoPeoplePerson>> getPersonsTo({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/to';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    

}
