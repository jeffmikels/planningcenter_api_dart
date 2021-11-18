/// This file was generated on 2021-11-17T23:59:29.892180


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
  static const String pcoApplication = 'people';
  static const String typeString = 'MaritalStatus';
  static const String typeId = 'marital_status';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'maritalstatus-organization-marital_statuses';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/marital_statuses';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kValue = 'value';


  // getters and setters
  @override
  List<String> get createAllowed => ['value'];
  @override
  List<String> get updateAllowed => ['value'];

  String get value => attributes[kValue] ?? '';


  set value(String s) => attributes[kValue] = s;


  PcoPeopleMaritalStatu() : super(pcoApplication, typeString);
  PcoPeopleMaritalStatu.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleMaritalStatu Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/marital_statuses;
  static Future<List<PcoPeopleMaritalStatu>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleMaritalStatu> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/marital_statuses';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
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
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
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
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
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
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMaritalStatu.fromJson(res.data);
    }
    return retval;
  }




}
