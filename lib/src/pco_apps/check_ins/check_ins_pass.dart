/// This file was generated on 2021-11-17T23:59:27.203917


import '../../pco.dart';

/// This class represents a PCO CheckIns Pass Object
/// 
/// Application: check-ins
/// Id:          pass
/// Type:        Pass
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// Enables quick lookup of a person via barcode reader.\n
/// 
/// Example:
/// 
/// {"type":"Pass","id":"1","attributes":{"code":"string","kind":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/passes
/// 
class PcoCheckInsPas extends PcoResource {
  static const String pcoApplication = 'check-ins';
  static const String typeString = 'Pass';
  static const String typeId = 'pass';
  static const String apiVersion = '2019-07-17';
  static const String shortestEdgeId = 'pass-organization-passes';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/passes';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kCode = 'code';
  static const kKind = 'kind';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get code => attributes[kCode] ?? '';

  /// Possible values: `barcode` or `pkpass`.
  ///Using the `pkpass` value creates a mobile pass and sends an email to the associated person.
  String get kind => attributes[kKind] ?? '';




  PcoCheckInsPas() : super(pcoApplication, typeString);
  PcoCheckInsPas.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCheckInsPas Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/passes;
  static Future<List<PcoCheckInsPas>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsPas> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/passes';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsPas.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsPas Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/passes;
  static Future<List<PcoCheckInsPas>> getManyFromPeopleAndPasIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsPas> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/people/$peopleId/passes';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsPas.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsPas Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/passes;
  static Future<PcoCheckInsPas?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsPas?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/passes' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsPas.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsPas Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/passes;
  static Future<PcoCheckInsPas?> getSingleFromPeopleAndPasIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsPas?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/people/$peopleId/passes' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsPas.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsPerson objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/passes/1/person
Future<List<PcoCheckInsPerson>> getPersons({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsPerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsPerson.fromJson(itemData));
    }
  }
  return retval;
}
    

}
