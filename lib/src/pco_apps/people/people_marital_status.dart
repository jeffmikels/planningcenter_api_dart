/// This file was generated on 2021-11-18T15:28:02.047621


import '../../pco.dart';

/// This class represents a PCO People MaritalStatus Object
/// 
/// Application: people
/// Id:          marital_status
/// Type:        MaritalStatus
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A martial status represents a member's current status, e.g. married, single, etc.
/// 
/// Example:
/// 
/// {"type":"MaritalStatus","id":"1","attributes":{"value":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/marital_statuses
/// 
class PcoPeopleMaritalStatu extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'MaritalStatus';
  static const String kTypeId = 'marital_status';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'maritalstatus-organization-marital_statuses';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/marital_statuses';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kValue = 'value';


  // getters and setters
  @override
  List<String> get createAllowed => ['value'];
  @override
  List<String> get updateAllowed => ['value'];

  String get value => attributes[kValue] ?? '';


  set value(String s) => attributes[kValue] = s;


  PcoPeopleMaritalStatu() : super(kPcoApplication, kTypeString);
  PcoPeopleMaritalStatu.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleMaritalStatu Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/marital_statuses;
  static Future<List<PcoPeopleMaritalStatu>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleMaritalStatu> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/marital_statuses';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleMaritalStatu.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleMaritalStatu Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/marital_status;
  static Future<List<PcoPeopleMaritalStatu>> getManyFromPeopleAndMaritalStatuIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleMaritalStatu> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/marital_status';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleMaritalStatu.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleMaritalStatu Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/marital_statuses;
  static Future<PcoPeopleMaritalStatu?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleMaritalStatu?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/marital_statuses' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMaritalStatu.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleMaritalStatu Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/marital_status;
  static Future<PcoPeopleMaritalStatu?> getSingleFromPeopleAndMaritalStatuIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleMaritalStatu?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/marital_status' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMaritalStatu.fromJson(res.data);
    }
    return retval;
  }




}
