/// This file was generated on 2021-11-22T16:37:09.118911


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
/// possible includes with parameter ?include=a,b
/// @message_group: include associated message_group 
/// @to: include associated to 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @app_name (URLParameter), query on a specific app_name, example: ?where[app_name]=string
/// @bounced_at (URLParameter), query on a specific bounced_at, example: ?where[bounced_at]=2000-01-01T12:00:00Z
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @delivery_status (URLParameter), query on a specific delivery_status, example: ?where[delivery_status]=string
/// @file (URLParameter), query on a specific file, example: ?where[file]=string
/// @from_address (URLParameter), query on a specific from_address, example: ?where[from_address]=string
/// @kind (URLParameter), query on a specific kind, example: ?where[kind]=value
/// @reject_reason (URLParameter), query on a specific reject_reason, example: ?where[reject_reason]=string
/// @rejection_notification_sent_at (URLParameter), query on a specific rejection_notification_sent_at, example: ?where[rejection_notification_sent_at]=2000-01-01T12:00:00Z
/// @sent_at (URLParameter), query on a specific sent_at, example: ?where[sent_at]=2000-01-01T12:00:00Z
/// @subject (URLParameter), query on a specific subject, example: ?where[subject]=string
/// @to_addresses (URLParameter), query on a specific to_addresses, example: ?where[to_addresses]=string
/// possible orderings with parameter ?order=
/// @app_name (URLParameter), prefix with a hyphen (-app_name) to reverse the order
/// @bounced_at (URLParameter), prefix with a hyphen (-bounced_at) to reverse the order
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @delivery_status (URLParameter), prefix with a hyphen (-delivery_status) to reverse the order
/// @file (URLParameter), prefix with a hyphen (-file) to reverse the order
/// @from_address (URLParameter), prefix with a hyphen (-from_address) to reverse the order
/// @from_name (URLParameter), prefix with a hyphen (-from_name) to reverse the order
/// @kind (URLParameter), prefix with a hyphen (-kind) to reverse the order
/// @reject_reason (URLParameter), prefix with a hyphen (-reject_reason) to reverse the order
/// @rejection_notification_sent_at (URLParameter), prefix with a hyphen (-rejection_notification_sent_at) to reverse the order
/// @sent_at (URLParameter), prefix with a hyphen (-sent_at) to reverse the order
/// @subject (URLParameter), prefix with a hyphen (-subject) to reverse the order
/// @to_addresses (URLParameter), prefix with a hyphen (-to_addresses) to reverse the order
///
class PcoPeopleMessage extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Message';
  static const String kTypeId = 'message';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'message-organization-messages';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/messages';

  /// possible includes with parameter ?include=a,b
  /// @message_group: include associated message_group 
  /// @to: include associated to 
  static List<String> get canInclude => ['message_group','to'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @app_name (URLParameter), query on a specific app_name, example: ?where[app_name]=string
  /// @bounced_at (URLParameter), query on a specific bounced_at, example: ?where[bounced_at]=2000-01-01T12:00:00Z
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @delivery_status (URLParameter), query on a specific delivery_status, example: ?where[delivery_status]=string
  /// @file (URLParameter), query on a specific file, example: ?where[file]=string
  /// @from_address (URLParameter), query on a specific from_address, example: ?where[from_address]=string
  /// @kind (URLParameter), query on a specific kind, example: ?where[kind]=value
  /// @reject_reason (URLParameter), query on a specific reject_reason, example: ?where[reject_reason]=string
  /// @rejection_notification_sent_at (URLParameter), query on a specific rejection_notification_sent_at, example: ?where[rejection_notification_sent_at]=2000-01-01T12:00:00Z
  /// @sent_at (URLParameter), query on a specific sent_at, example: ?where[sent_at]=2000-01-01T12:00:00Z
  /// @subject (URLParameter), query on a specific subject, example: ?where[subject]=string
  /// @to_addresses (URLParameter), query on a specific to_addresses, example: ?where[to_addresses]=string
  static List<String> get canQuery => ['app_name','bounced_at','created_at','delivery_status','file','from_address','kind','reject_reason','rejection_notification_sent_at','sent_at','subject','to_addresses'];

  /// possible orderings with parameter ?order=
  /// @app_name (URLParameter), prefix with a hyphen (-app_name) to reverse the order
  /// @bounced_at (URLParameter), prefix with a hyphen (-bounced_at) to reverse the order
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @delivery_status (URLParameter), prefix with a hyphen (-delivery_status) to reverse the order
  /// @file (URLParameter), prefix with a hyphen (-file) to reverse the order
  /// @from_address (URLParameter), prefix with a hyphen (-from_address) to reverse the order
  /// @from_name (URLParameter), prefix with a hyphen (-from_name) to reverse the order
  /// @kind (URLParameter), prefix with a hyphen (-kind) to reverse the order
  /// @reject_reason (URLParameter), prefix with a hyphen (-reject_reason) to reverse the order
  /// @rejection_notification_sent_at (URLParameter), prefix with a hyphen (-rejection_notification_sent_at) to reverse the order
  /// @sent_at (URLParameter), prefix with a hyphen (-sent_at) to reverse the order
  /// @subject (URLParameter), prefix with a hyphen (-subject) to reverse the order
  /// @to_addresses (URLParameter), prefix with a hyphen (-to_addresses) to reverse the order
  static List<String> get canOrderBy => ['app_name','bounced_at','created_at','delivery_status','file','from_address','from_name','kind','reject_reason','rejection_notification_sent_at','sent_at','subject','to_addresses'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoPeopleMessage() : super(kPcoApplication, kTypeString);
  PcoPeopleMessage.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleMessage Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/messages;
  static Future<List<PcoPeopleMessage>> getManyFromMessageGroupAndMessageIds(String messageGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleMessage> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessage.canInclude;
    var url = '/people/v2/message_groups/$messageGroupId/messages';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleMessage.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleMessage Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/messages;
  static Future<List<PcoPeopleMessage>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleMessage> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessage.canInclude;
    var url = '/people/v2/messages';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleMessage.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleMessage Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/messages;
  static Future<List<PcoPeopleMessage>> getManyFromPeopleAndMessageIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleMessage> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessage.canInclude;
    var url = '/people/v2/people/$peopleId/messages';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleMessage.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleMessage Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/messages;
  static Future<PcoPeopleMessage?> getSingleFromMessageGroupAndMessageIds(String messageGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleMessage?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessage.canInclude;
    var url = '/people/v2/message_groups/$messageGroupId/messages' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMessage.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleMessage Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/messages;
  static Future<PcoPeopleMessage?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleMessage?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessage.canInclude;
    var url = '/people/v2/messages' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMessage.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleMessage Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/messages;
  static Future<PcoPeopleMessage?> getSingleFromPeopleAndMessageIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleMessage?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessage.canInclude;
    var url = '/people/v2/people/$peopleId/messages' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMessage.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleMessageGroup objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/messages/1/message_group
Future<List<PcoPeopleMessageGroup>> getMessageGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
  List<PcoPeopleMessageGroup> retval = [];
  var url = '$apiEndpoint/message_group';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleMessageGroup.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/messages/1/to
Future<List<PcoPeoplePerson>> getPersonsTo({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/to';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
