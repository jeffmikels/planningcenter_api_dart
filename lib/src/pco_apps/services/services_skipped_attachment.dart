/// This file was generated on 2021-11-18T13:57:09.753311


import '../../pco.dart';

/// This class represents a PCO Services SkippedAttachment Object
/// 
/// Application: services
/// Id:          skipped_attachment
/// Type:        SkippedAttachment
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// a skipped attachment
/// 
/// Example:
/// 
/// {"type":"SkippedAttachment","id":"1","attributes":{"skipped":true},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"attachment":{"data":{"type":"Attachment","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2
/// 
class PcoServicesSkippedAttachment extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'SkippedAttachment';
  static const String typeId = 'skipped_attachment';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kSkipped = 'skipped';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  bool get isSkipped => attributes[kSkipped] == true;




  PcoServicesSkippedAttachment() : super(pcoApplication, typeString);
  PcoServicesSkippedAttachment.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);







}
