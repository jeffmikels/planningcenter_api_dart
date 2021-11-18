/// This file was generated on 2021-11-18T13:57:10.164926


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
class PcoGivingBatchGroup extends PcoResource {
  static const String pcoApplication = 'giving';
  static const String typeString = 'BatchGroup';
  static const String typeId = 'batch_group';
  static const String apiVersion = '2019-10-18';
  static const String shortestEdgeId = 'batchgroup-organization-batch_groups';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/batch_groups';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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


  PcoGivingBatchGroup() : super(pcoApplication, typeString);
  PcoGivingBatchGroup.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGivingBatchGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/batch_group;
  static Future<List<PcoGivingBatchGroup>> getManyFromBatcheAndBatchGroupIds(String batcheId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingBatchGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/batches/$batcheId/batch_group';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingBatchGroup.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGivingBatchGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups;
  static Future<List<PcoGivingBatchGroup>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoGivingBatchGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/batch_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingBatchGroup.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGivingBatchGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/batch_groups;
  static Future<List<PcoGivingBatchGroup>> getManyFromPeopleAndBatchGroupIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingBatchGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/people/$peopleId/batch_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingBatchGroup.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingBatchGroup Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/batch_group;
  static Future<PcoGivingBatchGroup?> getSingleFromBatcheAndBatchGroupIds(String batcheId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingBatchGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/batches/$batcheId/batch_group' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingBatchGroup.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGivingBatchGroup Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups;
  static Future<PcoGivingBatchGroup?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingBatchGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/batch_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingBatchGroup.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGivingBatchGroup Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/batch_groups;
  static Future<PcoGivingBatchGroup?> getSingleFromPeopleAndBatchGroupIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingBatchGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/people/$peopleId/batch_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingBatchGroup.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGivingBatch objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups/1/batches
Future<List<PcoGivingBatch>> getBatchsBatches({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingBatch> retval = [];
  var url = '$apiEndpoint/batches';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingBatch.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGivingPerson objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups/1/owner
Future<List<PcoGivingPerson>> getPersonsOwner({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingPerson> retval = [];
  var url = '$apiEndpoint/owner';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingPerson.fromJson(itemData));
    }
  }
  return retval;
}
    

}
