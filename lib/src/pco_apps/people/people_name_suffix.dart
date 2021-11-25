/// This file was generated on 2021-11-25T00:07:20.568931


import '../../pco.dart';

/// This class represents a PCO People NameSuffix Object
/// 
/// Application: people
/// Id:          name_suffix
/// Type:        NameSuffix
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A name suffix is one of Sr., Jr., etc.
/// 
/// Example:
/// 
/// {"type":"NameSuffix","id":"1","attributes":{"value":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/name_suffixes
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @value (URLParameter), query on a specific value, example: ?where[value]=string
/// possible orderings with parameter ?order=
/// @value (URLParameter), prefix with a hyphen (-value) to reverse the order
///
class PcoPeopleNameSuffix extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'NameSuffix';
  static const String kTypeId = 'name_suffix';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'namesuffix-organization-name_suffixes';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/name_suffixes';

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


  PcoPeopleNameSuffix() : super(kPcoApplication, kTypeString);
  PcoPeopleNameSuffix.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleNameSuffix Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/name_suffixes;
  static Future<PcoCollection<PcoPeopleNameSuffix>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNameSuffix.canInclude;
    var url = '/people/v2/name_suffixes';
    return PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleNameSuffix Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/name_suffix;
  static Future<PcoCollection<PcoPeopleNameSuffix>> getManyFromPeople(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNameSuffix.canInclude;
    var url = '/people/v2/people/$peopleId/name_suffix';
    return PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeopleNameSuffix Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/name_suffixes;
  static Future<PcoCollection<PcoPeopleNameSuffix>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNameSuffix.canInclude;
    var url = '/people/v2/name_suffixes' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleNameSuffix.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleNameSuffix Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/name_suffix;
  static Future<PcoCollection<PcoPeopleNameSuffix>> getSingleFromPeople(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNameSuffix.canInclude;
    var url = '/people/v2/people/$peopleId/name_suffix' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleNameSuffix.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }





}
