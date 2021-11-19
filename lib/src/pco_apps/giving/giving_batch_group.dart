/// This file was generated on 2021-11-19T12:10:42.771745


import '../../pco.dart';

/// This class represents a PCO Giving BatchGroup Object
/// 
/// Application: giving
/// Id:          batch_group
/// Type:        BatchGroup
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"BatchGroup","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","description":"string","committed":true,"total_cents":1,"total_currency":"string","status":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2/batch_groups
/// 
/// possible includes with parameter ?include=a,b
/// @owner: include associated owner 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoGivingBatchGroup extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'BatchGroup';
  static const String kTypeId = 'batch_group';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'batchgroup-organization-batch_groups';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/batch_groups';

  /// possible includes with parameter ?include=a,b
  /// @owner: include associated owner 
  static List<String> get canInclude => ['owner'];

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
  static const kDescription = 'description';
  static const kCommitted = 'committed';
  static const kTotalCents = 'total_cents';
  static const kTotalCurrency = 'total_currency';
  static const kStatus = 'status';


  // getters and setters
  @override
  List<String> get createAllowed => ['description'];
  @override
  List<String> get updateAllowed => ['description'];

  String get description => attributes[kDescription] ?? '';
  bool get isCommitted => attributes[kCommitted] == true;
  int get totalCents => attributes[kTotalCents] ?? 0;
  String get totalCurrency => attributes[kTotalCurrency] ?? '';

  /// One of `in_progress`, `updating`, or `committed`.The `updating` state is temporary and describe's a BatchGroup that is currently being changed in some way (e.g. moving from `in_progress` to `committed`).Certain changes to BatchGroups in this state (or their Batches or Donations) will be restricted until the BatchGroup has finished updating.
  String get status => attributes[kStatus] ?? '';


  set description(String s) => attributes[kDescription] = s;


  PcoGivingBatchGroup() : super(kPcoApplication, kTypeString);
  PcoGivingBatchGroup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGivingBatchGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/batch_group;
  static Future<List<PcoGivingBatchGroup>> getManyFromBatcheAndBatchGroupIds(String batcheId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingBatchGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
    var url = '/giving/v2/batches/$batcheId/batch_group';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingBatchGroup.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingBatchGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups;
  static Future<List<PcoGivingBatchGroup>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingBatchGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
    var url = '/giving/v2/batch_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingBatchGroup.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingBatchGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/batch_groups;
  static Future<List<PcoGivingBatchGroup>> getManyFromPeopleAndBatchGroupIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingBatchGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
    var url = '/giving/v2/people/$peopleId/batch_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingBatchGroup.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingBatchGroup Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/batch_group;
  static Future<PcoGivingBatchGroup?> getSingleFromBatcheAndBatchGroupIds(String batcheId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingBatchGroup?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
    var url = '/giving/v2/batches/$batcheId/batch_group' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingBatchGroup.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingBatchGroup Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups;
  static Future<PcoGivingBatchGroup?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingBatchGroup?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
    var url = '/giving/v2/batch_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingBatchGroup.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingBatchGroup Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/batch_groups;
  static Future<PcoGivingBatchGroup?> getSingleFromPeopleAndBatchGroupIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingBatchGroup?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
    var url = '/giving/v2/people/$peopleId/batch_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingBatchGroup.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoGivingBatch objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups/1/batches
Future<List<PcoGivingBatch>> getBatchsBatches({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingBatch.canInclude;
  List<PcoGivingBatch> retval = [];
  var url = '$apiEndpoint/batches';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingBatch.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingPerson objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups/1/owner
Future<List<PcoGivingPerson>> getPersonsOwner({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingPerson.canInclude;
  List<PcoGivingPerson> retval = [];
  var url = '$apiEndpoint/owner';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
