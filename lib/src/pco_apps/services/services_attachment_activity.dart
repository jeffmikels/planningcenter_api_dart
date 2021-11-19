/// This file was generated on 2021-11-19T12:10:42.005546


import '../../pco.dart';

/// This class represents a PCO Services AttachmentActivity Object
/// 
/// Application: services
/// Id:          attachment_activity
/// Type:        AttachmentActivity
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// Returned from the `open` attachment action.
/// 
/// Example:
/// 
/// {"type":"AttachmentActivity","id":"1","attributes":{"date":"2000-01-01","attachment_url":"string","activity_type":"string"},"relationships":{"attachment":{"data":{"type":"Attachment","id":"1"}}}}
/// 
/// Collection Only: true
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
class PcoServicesAttachmentActivity extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'AttachmentActivity';
  static const String kTypeId = 'attachment_activity';
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
  static const kDate = 'date';
  static const kAttachmentUrl = 'attachment_url';
  static const kActivityType = 'activity_type';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get date => attributes[kDate] ?? '';
  String get attachmentUrl => attributes[kAttachmentUrl] ?? '';
  String get activityType => attributes[kActivityType] ?? '';




  PcoServicesAttachmentActivity() : super(kPcoApplication, kTypeString);
  PcoServicesAttachmentActivity.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);







}
