/// This file was generated on 2021-11-18T15:28:02.024544


import '../../pco.dart';

/// This class represents a PCO People AnniversaryCouples Object
/// 
/// Application: people
/// Id:          anniversary_couples
/// Type:        AnniversaryCouples
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// Returns upcoming anniversary couples for the organization.
/// 
/// Example:
/// 
/// {"type":"AnniversaryCouples","id":"1","attributes":{},"relationships":{}}
/// 
/// Collection Only: true
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/anniversary_couples
/// 
class PcoPeopleAnniversaryCouple extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'AnniversaryCouples';
  static const String kTypeId = 'anniversary_couples';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'anniversarycouples-organization-anniversary_couples';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/anniversary_couples';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];





  PcoPeopleAnniversaryCouple() : super(kPcoApplication, kTypeString);
  PcoPeopleAnniversaryCouple.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleAnniversaryCouple Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/anniversary_couples;
  static Future<List<PcoPeopleAnniversaryCouple>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleAnniversaryCouple> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/anniversary_couples';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleAnniversaryCouple.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleAnniversaryCouple Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/anniversary_couples;
  static Future<PcoPeopleAnniversaryCouple?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleAnniversaryCouple?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/anniversary_couples' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleAnniversaryCouple.fromJson(res.data);
    }
    return retval;
  }




}
