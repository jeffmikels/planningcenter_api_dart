/// This file was generated on 2021-11-22T16:37:09.141757


import '../../pco.dart';

/// This class represents a PCO People OrganizationStatistics Object
/// 
/// Application: people
/// Id:          organization_statistics
/// Type:        OrganizationStatistics
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// Returns statistics for the organization.
/// 
/// Example:
/// 
/// {"type":"OrganizationStatistics","id":"1","attributes":{},"relationships":{}}
/// 
/// Collection Only: true
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/organization_statistics
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoPeopleOrganizationStatistic extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'OrganizationStatistics';
  static const String kTypeId = 'organization_statistics';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'organizationstatistics-organization-stats';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/stats';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];





  PcoPeopleOrganizationStatistic() : super(kPcoApplication, kTypeString);
  PcoPeopleOrganizationStatistic.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleOrganizationStatistic Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/stats;
  static Future<List<PcoPeopleOrganizationStatistic>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleOrganizationStatistic> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleOrganizationStatistic.canInclude;
    var url = '/people/v2/stats';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleOrganizationStatistic.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleOrganizationStatistic Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/stats;
  static Future<PcoPeopleOrganizationStatistic?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleOrganizationStatistic?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleOrganizationStatistic.canInclude;
    var url = '/people/v2/stats' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleOrganizationStatistic.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
