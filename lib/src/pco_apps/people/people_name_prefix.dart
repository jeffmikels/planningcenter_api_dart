/// This file was generated on 2021-11-18T15:28:02.050336


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
class PcoPeopleNamePrefix extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'NamePrefix';
  static const String kTypeId = 'name_prefix';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'nameprefix-organization-name_prefixes';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/name_prefixes';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

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
  PcoPeopleNamePrefix.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleNamePrefix Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/name_prefixes;
  static Future<List<PcoPeopleNamePrefix>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleNamePrefix> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/name_prefixes';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleNamePrefix.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleNamePrefix Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/name_prefix;
  static Future<List<PcoPeopleNamePrefix>> getManyFromPeopleAndNamePrefixIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleNamePrefix> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/name_prefix';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleNamePrefix.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleNamePrefix Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/name_prefixes;
  static Future<PcoPeopleNamePrefix?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleNamePrefix?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/name_prefixes' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleNamePrefix.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleNamePrefix Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/name_prefix;
  static Future<PcoPeopleNamePrefix?> getSingleFromPeopleAndNamePrefixIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleNamePrefix?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/name_prefix' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleNamePrefix.fromJson(res.data);
    }
    return retval;
  }




}
