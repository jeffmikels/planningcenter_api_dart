/// This file was generated on 2021-11-18T15:28:01.678602


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
class PcoServicesAttachmentActivity extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'AttachmentActivity';
  static const String kTypeId = 'attachment_activity';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

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
  PcoServicesAttachmentActivity.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);







}
