/// This file was generated on 2021-11-25T00:07:20.565904


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @value (URLParameter), query on a specific value, example: ?where[value]=string
/// possible orderings with parameter ?order=
/// @value (URLParameter), prefix with a hyphen (-value) to reverse the order
///
class PcoPeopleMaritalStatu extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'MaritalStatus';
  static const String kTypeId = 'marital_status';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'maritalstatus-organization-marital_statuses';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/marital_statuses';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @value (URLParameter), query on a specific value, example: ?where[value]=string
  static List<String> get canQuery => ['value'];

  /// possible orderings with parameter ?order=
  /// @value (URLParameter), prefix with a hyphen (-value) to reverse the order
  static List<String> get canOrderBy => ['value'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  PcoPeopleMaritalStatu.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleMaritalStatu Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/marital_statuses;
  static Future<PcoCollection<PcoPeopleMaritalStatu>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMaritalStatu.canInclude;
    var url = '/people/v2/marital_statuses';
    return PcoCollection.fromApiCall<PcoPeopleMaritalStatu>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleMaritalStatu Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/marital_status;
  static Future<PcoCollection<PcoPeopleMaritalStatu>> getManyFromPeople(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMaritalStatu.canInclude;
    var url = '/people/v2/people/$peopleId/marital_status';
    return PcoCollection.fromApiCall<PcoPeopleMaritalStatu>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeopleMaritalStatu Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/marital_statuses;
  static Future<PcoCollection<PcoPeopleMaritalStatu>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMaritalStatu.canInclude;
    var url = '/people/v2/marital_statuses' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMaritalStatu>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleMaritalStatu.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleMaritalStatu Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/marital_status;
  static Future<PcoCollection<PcoPeopleMaritalStatu>> getSingleFromPeople(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMaritalStatu.canInclude;
    var url = '/people/v2/people/$peopleId/marital_status' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMaritalStatu>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleMaritalStatu.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }





}
