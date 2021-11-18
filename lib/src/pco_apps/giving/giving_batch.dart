/// This file was generated on 2021-11-18T13:57:10.164026


import '../../pco.dart';

/// This class represents a PCO Giving Batch Object
/// 
/// Application: giving
/// Id:          batch
/// Type:        Batch
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Batch","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","committed_at":"2000-01-01T12:00:00Z","description":"string","total_cents":1,"total_currency":"string","status":"string"},"relationships":{"batch_group":{"data":{"type":"BatchGroup","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2/batches
/// 
class PcoGivingBatch extends PcoResource {
  static const String pcoApplication = 'giving';
  static const String typeString = 'Batch';
  static const String typeId = 'batch';
  static const String apiVersion = '2019-10-18';
  static const String shortestEdgeId = 'batch-organization-batches';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/batches';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kCommittedAt = 'committed_at';
  static const kDescription = 'description';
  static const kDonationsCount = 'donations_count';
  static const kTotalCents = 'total_cents';
  static const kTotalCurrency = 'total_currency';
  static const kStatus = 'status';


  // getters and setters
  @override
  List<String> get createAllowed => ['description'];
  @override
  List<String> get updateAllowed => ['description'];


  /// The datetime that a batch was committed. If it's `null`, the batch is still in progress or updating.
  DateTime get committedAt => DateTime.parse(attributes[kCommittedAt] ?? '');
  String get description => attributes[kDescription] ?? '';

  /// Only available when requested with the `?fields` param
  int get donationsCount => attributes[kDonationsCount] ?? 0;
  int get totalCents => attributes[kTotalCents] ?? 0;
  String get totalCurrency => attributes[kTotalCurrency] ?? '';

  /// One of `in_progress`, `updating`, or `committed`.The `updating` state is temporary and describe's a Batch that is currently being changed in some way (e.g. moving from `in_progress` to `committed`).Certain changes to Batches in this state (or their Donations) will be restricted until the Batch has finished updating.
  String get status => attributes[kStatus] ?? '';


  set description(String s) => attributes[kDescription] = s;


  PcoGivingBatch() : super(pcoApplication, typeString);
  PcoGivingBatch.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGivingBatch Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups/1/batches;
  static Future<List<PcoGivingBatch>> getManyFromBatchGroupAndBatcheIds(String batchGroupId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingBatch> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/batch_groups/$batchGroupId/batches';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingBatch.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGivingBatch Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batches;
  static Future<List<PcoGivingBatch>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoGivingBatch> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/batches';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingBatch.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGivingBatch Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/batches;
  static Future<List<PcoGivingBatch>> getManyFromPeopleAndBatcheIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingBatch> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/people/$peopleId/batches';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingBatch.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingBatch Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups/1/batches;
  static Future<PcoGivingBatch?> getSingleFromBatchGroupAndBatcheIds(String batchGroupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingBatch?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/batch_groups/$batchGroupId/batches' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingBatch.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGivingBatch Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batches;
  static Future<PcoGivingBatch?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingBatch?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/batches' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingBatch.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGivingBatch Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/batches;
  static Future<PcoGivingBatch?> getSingleFromPeopleAndBatcheIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingBatch?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/people/$peopleId/batches' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingBatch.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGivingBatchGroup objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/batch_group
Future<List<PcoGivingBatchGroup>> getBatchGroups({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingBatchGroup> retval = [];
  var url = '$apiEndpoint/batch_group';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingBatchGroup.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGivingDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/donations
Future<List<PcoGivingDonation>> getDonations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingDonation> retval = [];
  var url = '$apiEndpoint/donations';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingDonation.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGivingPerson objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/owner
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
