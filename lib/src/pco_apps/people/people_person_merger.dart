/// This file was generated on 2021-11-22T16:37:09.163255


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @person_to_keep_id (URLParameter), query on a specific person_to_keep_id, example: ?where[person_to_keep_id]=primary_key
/// @person_to_remove_id (URLParameter), query on a specific person_to_remove_id, example: ?where[person_to_remove_id]=primary_key
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
///
class PcoPeoplePersonMerger extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PersonMerger';
  static const String kTypeId = 'person_merger';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'personmerger-organization-person_mergers';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/person_mergers';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @person_to_keep_id (URLParameter), query on a specific person_to_keep_id, example: ?where[person_to_keep_id]=primary_key
  /// @person_to_remove_id (URLParameter), query on a specific person_to_remove_id, example: ?where[person_to_remove_id]=primary_key
  static List<String> get canQuery => ['created_at','person_to_keep_id','person_to_remove_id'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static List<String> get canOrderBy => ['created_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  PcoPeoplePersonMerger.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeoplePersonMerger Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/person_mergers;
  static Future<List<PcoPeoplePersonMerger>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePersonMerger> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePersonMerger.canInclude;
    var url = '/people/v2/person_mergers';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePersonMerger.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeoplePersonMerger Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/person_mergers;
  static Future<PcoPeoplePersonMerger?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePersonMerger?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePersonMerger.canInclude;
    var url = '/people/v2/person_mergers' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePersonMerger.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
