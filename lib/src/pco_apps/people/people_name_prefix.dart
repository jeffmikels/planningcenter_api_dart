/// This file was generated on 2021-11-25T00:07:20.568040


import '../../pco.dart';

/// This class represents a PCO People NamePrefix Object
/// 
/// Application: people
/// Id:          name_prefix
/// Type:        NamePrefix
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A name prefix is one of Mr., Mrs., etc.
/// 
/// Example:
/// 
/// {"type":"NamePrefix","id":"1","attributes":{"value":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/name_prefixes
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @value (URLParameter), query on a specific value, example: ?where[value]=string
/// possible orderings with parameter ?order=
/// @value (URLParameter), prefix with a hyphen (-value) to reverse the order
///
class PcoPeopleNamePrefix extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'NamePrefix';
  static const String kTypeId = 'name_prefix';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'nameprefix-organization-name_prefixes';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/name_prefixes';

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


  PcoPeopleNamePrefix() : super(kPcoApplication, kTypeString);
  PcoPeopleNamePrefix.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleNamePrefix Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/name_prefixes;
  static Future<PcoCollection<PcoPeopleNamePrefix>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNamePrefix.canInclude;
    var url = '/people/v2/name_prefixes';
    return PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleNamePrefix Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/name_prefix;
  static Future<PcoCollection<PcoPeopleNamePrefix>> getManyFromPeople(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNamePrefix.canInclude;
    var url = '/people/v2/people/$peopleId/name_prefix';
    return PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeopleNamePrefix Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/name_prefixes;
  static Future<PcoCollection<PcoPeopleNamePrefix>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNamePrefix.canInclude;
    var url = '/people/v2/name_prefixes' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleNamePrefix.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleNamePrefix Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/name_prefix;
  static Future<PcoCollection<PcoPeopleNamePrefix>> getSingleFromPeople(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNamePrefix.canInclude;
    var url = '/people/v2/people/$peopleId/name_prefix' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleNamePrefix.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }





}
