/// This file was generated on 2021-11-17T23:59:29.894355


import '../../pco.dart';

/// This class represents a PCO People MessageGroup Object
/// 
/// Application: people
/// Id:          message_group
/// Type:        MessageGroup
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A message group represents one or more emails or text messages sent from one of the Planning Center apps. The message group indicates the from person, app, etc.
/// 
/// Example:
/// 
/// {"type":"MessageGroup","id":"1","attributes":{"uuid":"string","message_type":"string","from_address":"string","subject":"string","message_count":1,"system_message":true,"created_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/message_groups
/// 
class PcoPeopleMessageGroup extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'MessageGroup';
  static const String typeId = 'message_group';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'messagegroup-organization-message_groups';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/message_groups';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kUuid = 'uuid';
  static const kMessageType = 'message_type';
  static const kFromAddress = 'from_address';
  static const kSubject = 'subject';
  static const kMessageCount = 'message_count';
  static const kSystemMessage = 'system_message';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get uuid => attributes[kUuid] ?? '';
  String get messageType => attributes[kMessageType] ?? '';
  String get fromAddress => attributes[kFromAddress] ?? '';
  String get subject => attributes[kSubject] ?? '';
  int get messageCount => attributes[kMessageCount] ?? 0;
  bool get isSystemMessage => attributes[kSystemMessage] == true;




  PcoPeopleMessageGroup() : super(pcoApplication, typeString);
  PcoPeopleMessageGroup.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleMessageGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/messages/1/message_group;
  static Future<List<PcoPeopleMessageGroup>> getManyFromMessageAndMessageGroupIds(String messageId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleMessageGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/messages/$messageId/message_group';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleMessageGroup.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleMessageGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups;
  static Future<List<PcoPeopleMessageGroup>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleMessageGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/message_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleMessageGroup.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleMessageGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/message_groups;
  static Future<List<PcoPeopleMessageGroup>> getManyFromPeopleAndMessageGroupIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleMessageGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/message_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleMessageGroup.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleMessageGroup Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/messages/1/message_group;
  static Future<PcoPeopleMessageGroup?> getSingleFromMessageAndMessageGroupIds(String messageId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleMessageGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/messages/$messageId/message_group' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMessageGroup.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleMessageGroup Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups;
  static Future<PcoPeopleMessageGroup?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleMessageGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/message_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMessageGroup.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleMessageGroup Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/message_groups;
  static Future<PcoPeopleMessageGroup?> getSingleFromPeopleAndMessageGroupIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleMessageGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/message_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMessageGroup.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleApp objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/app
Future<List<PcoPeopleApp>> getApps({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleApp> retval = [];
  var url = '$apiEndpoint/app';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleApp.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/from
Future<List<PcoPeoplePerson>> getPersonsFrom({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/from';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleMessage objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/messages
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
    

}
