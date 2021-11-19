/// This file was generated on 2021-11-19T12:10:42.552214


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
/// possible includes with parameter ?include=a,b
/// @app: include associated app 
/// @from: include associated from 
/// @messages: include associated messages 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @from_address (URLParameter), query on a specific from_address, example: ?where[from_address]=string
/// @message_count (URLParameter), query on a specific message_count, example: ?where[message_count]=1
/// @message_type (URLParameter), query on a specific message_type, example: ?where[message_type]=string
/// @subject (URLParameter), query on a specific subject, example: ?where[subject]=string
/// @system_message (URLParameter), query on a specific system_message, example: ?where[system_message]=true
/// @uuid (URLParameter), query on a specific uuid, example: ?where[uuid]=string
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @from_address (URLParameter), prefix with a hyphen (-from_address) to reverse the order
/// @message_count (URLParameter), prefix with a hyphen (-message_count) to reverse the order
/// @message_type (URLParameter), prefix with a hyphen (-message_type) to reverse the order
/// @subject (URLParameter), prefix with a hyphen (-subject) to reverse the order
/// @system_message (URLParameter), prefix with a hyphen (-system_message) to reverse the order
/// @uuid (URLParameter), prefix with a hyphen (-uuid) to reverse the order
///
class PcoPeopleMessageGroup extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'MessageGroup';
  static const String kTypeId = 'message_group';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'messagegroup-organization-message_groups';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/message_groups';

  /// possible includes with parameter ?include=a,b
  /// @app: include associated app 
  /// @from: include associated from 
  /// @messages: include associated messages 
  static List<String> get canInclude => ['app','from','messages'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @from_address (URLParameter), query on a specific from_address, example: ?where[from_address]=string
  /// @message_count (URLParameter), query on a specific message_count, example: ?where[message_count]=1
  /// @message_type (URLParameter), query on a specific message_type, example: ?where[message_type]=string
  /// @subject (URLParameter), query on a specific subject, example: ?where[subject]=string
  /// @system_message (URLParameter), query on a specific system_message, example: ?where[system_message]=true
  /// @uuid (URLParameter), query on a specific uuid, example: ?where[uuid]=string
  static List<String> get canQuery => ['created_at','from_address','message_count','message_type','subject','system_message','uuid'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @from_address (URLParameter), prefix with a hyphen (-from_address) to reverse the order
  /// @message_count (URLParameter), prefix with a hyphen (-message_count) to reverse the order
  /// @message_type (URLParameter), prefix with a hyphen (-message_type) to reverse the order
  /// @subject (URLParameter), prefix with a hyphen (-subject) to reverse the order
  /// @system_message (URLParameter), prefix with a hyphen (-system_message) to reverse the order
  /// @uuid (URLParameter), prefix with a hyphen (-uuid) to reverse the order
  static List<String> get canOrderBy => ['created_at','from_address','message_count','message_type','subject','system_message','uuid'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoPeopleMessageGroup() : super(kPcoApplication, kTypeString);
  PcoPeopleMessageGroup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleMessageGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/messages/1/message_group;
  static Future<List<PcoPeopleMessageGroup>> getManyFromMessageAndMessageGroupIds(String messageId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleMessageGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
    var url = '/people/v2/messages/$messageId/message_group';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleMessageGroup.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleMessageGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups;
  static Future<List<PcoPeopleMessageGroup>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleMessageGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
    var url = '/people/v2/message_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleMessageGroup.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleMessageGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/message_groups;
  static Future<List<PcoPeopleMessageGroup>> getManyFromPeopleAndMessageGroupIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleMessageGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
    var url = '/people/v2/people/$peopleId/message_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleMessageGroup.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleMessageGroup Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/messages/1/message_group;
  static Future<PcoPeopleMessageGroup?> getSingleFromMessageAndMessageGroupIds(String messageId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleMessageGroup?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
    var url = '/people/v2/messages/$messageId/message_group' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMessageGroup.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleMessageGroup Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups;
  static Future<PcoPeopleMessageGroup?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleMessageGroup?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
    var url = '/people/v2/message_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMessageGroup.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleMessageGroup Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/message_groups;
  static Future<PcoPeopleMessageGroup?> getSingleFromPeopleAndMessageGroupIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleMessageGroup?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
    var url = '/people/v2/people/$peopleId/message_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMessageGroup.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleApp objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/app
Future<List<PcoPeopleApp>> getApps({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleApp.canInclude;
  List<PcoPeopleApp> retval = [];
  var url = '$apiEndpoint/app';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleApp.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/from
Future<List<PcoPeoplePerson>> getPersonsFrom({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/from';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleMessage objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/messages
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
    

}
