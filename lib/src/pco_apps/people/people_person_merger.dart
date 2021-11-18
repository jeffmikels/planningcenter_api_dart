/// This file was generated on 2021-11-18T15:28:02.071874


import '../../pco.dart';

/// This class represents a PCO People PersonMerger Object
/// 
/// Application: people
/// Id:          person_merger
/// Type:        PersonMerger
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A Person Merger is the history of profiles that were merged into other profiles.
/// 
/// Example:
/// 
/// {"type":"PersonMerger","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","person_to_keep_id":"primary_key","person_to_remove_id":"primary_key"},"relationships":{"person_to_keep":{"data":{"type":"Person","id":"1"}},"person_to_remove":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/person_mergers
/// 
class PcoPeoplePersonMerger extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PersonMerger';
  static const String kTypeId = 'person_merger';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'personmerger-organization-person_mergers';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/person_mergers';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kPersonToKeepId = 'person_to_keep_id';
  static const kPersonToRemoveId = 'person_to_remove_id';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get personToKeepId => attributes[kPersonToKeepId] ?? '';
  String get personToRemoveId => attributes[kPersonToRemoveId] ?? '';




  PcoPeoplePersonMerger() : super(kPcoApplication, kTypeString);
  PcoPeoplePersonMerger.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeoplePersonMerger Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/person_mergers;
  static Future<List<PcoPeoplePersonMerger>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePersonMerger> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/person_mergers';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePersonMerger.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeoplePersonMerger Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/person_mergers;
  static Future<PcoPeoplePersonMerger?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePersonMerger?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/person_mergers' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePersonMerger.fromJson(res.data);
    }
    return retval;
  }




}
