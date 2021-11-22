/// This file was generated on 2021-11-22T16:57:41.218522


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesSkippedAttachment extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SkippedAttachment';
  static const String kTypeId = 'skipped_attachment';
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
  static const kSkipped = 'skipped';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  bool get isSkipped => attributes[kSkipped] == true;




  PcoServicesSkippedAttachment() : super(kPcoApplication, kTypeString);
  PcoServicesSkippedAttachment.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);








}
