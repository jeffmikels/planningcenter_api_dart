/// This file was generated on 2021-11-18T13:57:09.755509


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
class PcoServicesSongbookStatu extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'SongbookStatus';
  static const String typeId = 'songbook_status';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoServicesSongbookStatu() : super(pcoApplication, typeString);
  PcoServicesSongbookStatu.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);







}
