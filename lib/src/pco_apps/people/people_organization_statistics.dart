/// This file was generated on 2021-11-18T13:57:10.009823


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
class PcoPeopleOrganizationStatistic extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'OrganizationStatistics';
  static const String typeId = 'organization_statistics';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'organizationstatistics-organization-stats';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/stats';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];





  PcoPeopleOrganizationStatistic() : super(pcoApplication, typeString);
  PcoPeopleOrganizationStatistic.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleOrganizationStatistic Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/stats;
  static Future<List<PcoPeopleOrganizationStatistic>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleOrganizationStatistic> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/stats';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleOrganizationStatistic.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleOrganizationStatistic Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/stats;
  static Future<PcoPeopleOrganizationStatistic?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleOrganizationStatistic?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/stats' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleOrganizationStatistic.fromJson(res.data);
    }
    return retval;
  }




}
