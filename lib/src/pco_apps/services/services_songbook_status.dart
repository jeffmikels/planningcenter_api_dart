/// This file was generated on 2021-11-25T00:07:20.288254


import '../../pco.dart';

/// This class represents a PCO Services SongbookStatus Object
/// 
/// Application: services
/// Id:          songbook_status
/// Type:        SongbookStatus
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// Used to get the status of an in progress songbook action. When FINISHED, will contain the url of the songbook.
/// 
/// Example:
/// 
/// {"type":"SongbookStatus","id":"1","attributes":{"status":"string","status_code":"string","status_token":"string","url":"string"},"relationships":{}}
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
class PcoServicesSongbookStatu extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SongbookStatus';
  static const String kTypeId = 'songbook_status';
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
  static const kStatus = 'status';
  static const kStatusCode = 'status_code';
  static const kStatusToken = 'status_token';
  static const kUrl = 'url';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get status => attributes[kStatus] ?? '';
  String get statusCode => attributes[kStatusCode] ?? '';
  String get statusToken => attributes[kStatusToken] ?? '';
  String get url => attributes[kUrl] ?? '';




  PcoServicesSongbookStatu() : super(kPcoApplication, kTypeString);
  PcoServicesSongbookStatu.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);








}
