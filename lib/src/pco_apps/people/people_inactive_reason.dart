/// This file was generated on 2021-11-22T16:57:41.538840


import '../../pco.dart';

/// This class represents a PCO People InactiveReason Object
/// 
/// Application: people
/// Id:          inactive_reason
/// Type:        InactiveReason
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// An inactive reason is a small bit of text indicating why a member is no longer active.
/// 
/// Example:
/// 
/// {"type":"InactiveReason","id":"1","attributes":{"value":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/inactive_reasons
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @value (URLParameter), query on a specific value, example: ?where[value]=string
/// possible orderings with parameter ?order=
/// @value (URLParameter), prefix with a hyphen (-value) to reverse the order
///
class PcoPeopleInactiveReason extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'InactiveReason';
  static const String kTypeId = 'inactive_reason';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'inactivereason-organization-inactive_reasons';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/inactive_reasons';

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


  PcoPeopleInactiveReason() : super(kPcoApplication, kTypeString);
  PcoPeopleInactiveReason.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleInactiveReason Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/inactive_reasons;
  static Future<List<PcoPeopleInactiveReason>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleInactiveReason> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleInactiveReason.canInclude;
    var url = '/people/v2/inactive_reasons';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleInactiveReason.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleInactiveReason Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/inactive_reason;
  static Future<List<PcoPeopleInactiveReason>> getManyFromPeopleAndInactiveReasonIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleInactiveReason> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleInactiveReason.canInclude;
    var url = '/people/v2/people/$peopleId/inactive_reason';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleInactiveReason.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleInactiveReason Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/inactive_reasons;
  static Future<PcoPeopleInactiveReason?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleInactiveReason?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleInactiveReason.canInclude;
    var url = '/people/v2/inactive_reasons' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleInactiveReason.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleInactiveReason Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/inactive_reason;
  static Future<PcoPeopleInactiveReason?> getSingleFromPeopleAndInactiveReasonIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleInactiveReason?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleInactiveReason.canInclude;
    var url = '/people/v2/people/$peopleId/inactive_reason' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleInactiveReason.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
