/// This file was generated on 2021-11-18T15:28:01.686265


import '../../pco.dart';

/// This class represents a PCO Services BlockoutException Object
/// 
/// Application: services
/// Id:          blockout_exception
/// Type:        BlockoutException
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A single exception for the dates generated from the blockout
/// 
/// Example:
/// 
/// {"type":"BlockoutException","id":"1","attributes":{"date":"2000-01-01","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{"blockout":{"data":{"type":"Blockout","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions
/// 
class PcoServicesBlockoutException extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'BlockoutException';
  static const String kTypeId = 'blockout_exception';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'blockoutexception-blockout-blockout_exceptions';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kDate = 'date';


  // getters and setters
  @override
  List<String> get createAllowed => ['date'];
  @override
  List<String> get updateAllowed => [];

  String get date => attributes[kDate] ?? '';


  set date(String s) => attributes[kDate] = s;


  PcoServicesBlockoutException() : super(kPcoApplication, kTypeString);
  PcoServicesBlockoutException.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoServicesBlockoutException Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions;
  static Future<List<PcoServicesBlockoutException>> getManyFromPeopleAndBlockoutAndBlockoutExceptionIds(String peopleId,String blockoutId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesBlockoutException> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/blockouts/$blockoutId/blockout_exceptions';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesBlockoutException.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesBlockoutException Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions;
  static Future<PcoServicesBlockoutException?> getSingleFromPeopleAndBlockoutAndBlockoutExceptionIds(String peopleId,String blockoutId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesBlockoutException?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/blockouts/$blockoutId/blockout_exceptions' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesBlockoutException.fromJson(res.data);
    }
    return retval;
  }




}
