/// This file was generated on 2021-11-25T00:07:20.353819


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
/// possible includes with parameter ?include=a,b
/// @person: include associated person 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @code (URLParameter), query on a specific code, example: ?where[code]=string
/// possible orderings with parameter ?order=

///
class PcoCheckInsPas extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Pass';
  static const String kTypeId = 'pass';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'pass-organization-passes';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/passes';

  /// possible includes with parameter ?include=a,b
  /// @person: include associated person 
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @code (URLParameter), query on a specific code, example: ?where[code]=string
  static List<String> get canQuery => ['code'];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoCheckInsPas() : super(kPcoApplication, kTypeString);
  PcoCheckInsPas.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsPas Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/passes;
  static Future<PcoCollection<PcoCheckInsPas>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPas.canInclude;
    var url = '/check-ins/v2/passes';
    return PcoCollection.fromApiCall<PcoCheckInsPas>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsPas Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/passes;
  static Future<PcoCollection<PcoCheckInsPas>> getManyFromPeopleAndPas(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPas.canInclude;
    var url = '/check-ins/v2/people/$peopleId/passes';
    return PcoCollection.fromApiCall<PcoCheckInsPas>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoCheckInsPas Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/passes;
  static Future<PcoCollection<PcoCheckInsPas>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPas.canInclude;
    var url = '/check-ins/v2/passes' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPas>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsPas.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsPas Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/passes;
  static Future<PcoCollection<PcoCheckInsPas>> getSingleFromPeopleAndPas(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPas.canInclude;
    var url = '/check-ins/v2/people/$peopleId/passes' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPas>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsPas.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoCheckInsPerson objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/passes/1/person
Future<PcoCollection<PcoCheckInsPerson>> getPersons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
  var url = '$apiEndpoint/person';
  return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:apiVersion);
}
    


}
