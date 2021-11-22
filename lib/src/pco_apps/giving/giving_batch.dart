/// This file was generated on 2021-11-22T16:57:41.815212


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
/// possible includes with parameter ?include=a,b
/// @batch_group: include associated batch_group 
/// @owner: include associated owner 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoGivingBatch extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Batch';
  static const String kTypeId = 'batch';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'batch-organization-batches';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/batches';

  /// possible includes with parameter ?include=a,b
  /// @batch_group: include associated batch_group 
  /// @owner: include associated owner 
  static List<String> get canInclude => ['batch_group','owner'];

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


  PcoGivingBatch() : super(kPcoApplication, kTypeString);
  PcoGivingBatch.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGivingBatch Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups/1/batches;
  static Future<List<PcoGivingBatch>> getManyFromBatchGroupAndBatcheIds(String batchGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingBatch> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatch.canInclude;
    var url = '/giving/v2/batch_groups/$batchGroupId/batches';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingBatch.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingBatch Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batches;
  static Future<List<PcoGivingBatch>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingBatch> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatch.canInclude;
    var url = '/giving/v2/batches';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingBatch.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingBatch Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/batches;
  static Future<List<PcoGivingBatch>> getManyFromPeopleAndBatcheIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingBatch> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatch.canInclude;
    var url = '/giving/v2/people/$peopleId/batches';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingBatch.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingBatch Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups/1/batches;
  static Future<PcoGivingBatch?> getSingleFromBatchGroupAndBatcheIds(String batchGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingBatch?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatch.canInclude;
    var url = '/giving/v2/batch_groups/$batchGroupId/batches' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingBatch.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingBatch Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batches;
  static Future<PcoGivingBatch?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingBatch?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatch.canInclude;
    var url = '/giving/v2/batches' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingBatch.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingBatch Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/batches;
  static Future<PcoGivingBatch?> getSingleFromPeopleAndBatcheIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingBatch?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatch.canInclude;
    var url = '/giving/v2/people/$peopleId/batches' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingBatch.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoGivingBatchGroup objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/batch_group
Future<List<PcoGivingBatchGroup>> getBatchGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
  List<PcoGivingBatchGroup> retval = [];
  var url = '$apiEndpoint/batch_group';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingBatchGroup.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/donations
Future<List<PcoGivingDonation>> getDonations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingDonation.canInclude;
  List<PcoGivingDonation> retval = [];
  var url = '$apiEndpoint/donations';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingDonation.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingPerson objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/owner
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
    

/// ACTION: commit
/// Used to commit an in progress batch.
/// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/commit
/// 
/// Details:
/// This action takes an uncommitted Batch and commits it.
/// It will respond with `unprocessable_entity` if the Batch cannot be committed.
/// It does not expect a body.
/// Committing a Batch happens asyncronously, so initially the Batch's `status` will be `updating`.
/// You can poll that Batch's endpoint to see whether it's changed from `updating` to `committed`.
/// 
Future<PlanningCenterApiResponse> commit(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/commit';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
}
