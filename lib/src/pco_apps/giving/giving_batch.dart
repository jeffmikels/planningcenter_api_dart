/// This file was generated on 2022-03-04T20:00:53.906293


import '../../pco.dart';

/// This class represents a PCO Giving Batch Object
/// 
/// - Application:        giving
/// - Id:                 batch
/// - Type:               Batch
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/batches
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Batch",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "committed_at": "2000-01-01T12:00:00Z",
///     "description": "string",
///     "total_cents": 1,
///     "total_currency": "string",
///     "status": "string"
///   },
///   "relationships": {
///     "batch_group": {
///       "data": {
///         "type": "BatchGroup",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - batch_group: include associated batch_group 
/// - owner: include associated owner 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `batchgroup-batch-batch_group`: https://api.planningcenteronline.com/giving/v2/batches/1/batch_group
/// - `donation-batch-donations`: https://api.planningcenteronline.com/giving/v2/batches/1/donations
/// - `person-batch-owner`: https://api.planningcenteronline.com/giving/v2/batches/1/owner
/// 
/// All Inbound Edges:
/// - `batch-batchgroup-batches`: https://api.planningcenteronline.com/giving/v2/batch_groups/1/batches
/// - `batch-organization-batches`: https://api.planningcenteronline.com/giving/v2/batches
/// - `batch-person-batches`: https://api.planningcenteronline.com/giving/v2/people/1/batches
/// 
/// All Actions:
/// - `commit`: https://api.planningcenteronline.com/giving/v2/batches/1/commit
///
class PcoGivingBatch extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Batch';
  static const String kTypeId = 'batch';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'batch-organization-batches';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/batches';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/batches';

  /// possible includes with parameter ?include=a,b
  /// - `batch_group`: include associated batch_group 
  /// - `owner`: include associated owner 
  static List<String> get canInclude => ['batch_group','owner'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
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

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  DateTime get committedAt => DateTime.parse(attributes[kCommittedAt] ?? '');
  String get description => attributes[kDescription] ?? '';
  int get donationsCount => attributes[kDonationsCount] ?? 0;
  int get totalCents => attributes[kTotalCents] ?? 0;
  String get totalCurrency => attributes[kTotalCurrency] ?? '';
  String get status => attributes[kStatus] ?? '';
  

  // setters for object attributes

  set description(String s) => attributes[kDescription] = s;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoGivingBatch() : super(kPcoApplication, kTypeString);
  PcoGivingBatch.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoGivingBatch] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/giving/v2/batches`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoGivingBatch.create() {
    return PcoGivingBatch()
      .._apiPathOverride = 'https://api.planningcenteronline.com/giving/v2/batches';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoGivingBatch] objects (expecting many)
  /// using a path like this: `/giving/v2/batches`
  /// 
  /// Available Query Filters:
  /// - `committed`
  /// - `in_progress`
  static Future<PcoCollection<PcoGivingBatch>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatch.canInclude;
    var url = '/giving/v2/batches';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingBatch>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGivingBatch] objects (expecting one)
  /// using a path like this: `/giving/v2/batch_groups/$batchGroupId/batches`
  /// 
  /// Available Query Filters:
  /// - `committed`
  /// - `in_progress`
  static Future<PcoCollection<PcoGivingBatch>> getBatchesFromBatchGroup(String batchGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatch.canInclude;
    var url = '/giving/v2/batch_groups/$batchGroupId/batches';
    
    return PcoCollection.fromApiCall<PcoGivingBatch>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGivingBatch] objects (expecting one)
  /// using a path like this: `/giving/v2/people/$peopleId/batches`
  /// 
  /// Available Query Filters:
  /// - `committed`
  /// - `in_progress`
  static Future<PcoCollection<PcoGivingBatch>> getBatchesFromPeople(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatch.canInclude;
    var url = '/giving/v2/people/$peopleId/batches';
    
    return PcoCollection.fromApiCall<PcoGivingBatch>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingBatchGroup] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/batches/1/batch_group`
  Future<PcoCollection<PcoGivingBatchGroup>> getBatchGroup({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
    var url = '$apiEndpoint/batch_group';
    return PcoCollection.fromApiCall<PcoGivingBatchGroup>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/batches/1/donations`
  Future<PcoCollection<PcoGivingDonation>> getDonations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '$apiEndpoint/donations';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/batches/1/owner`
  Future<PcoCollection<PcoGivingPerson>> getOwner({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '$apiEndpoint/owner';
    return PcoCollection.fromApiCall<PcoGivingPerson>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `commit`
  /// 
  /// Used to commit an in progress batch.
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/batches/1/commit`
  /// 
  /// Details:
  /// This action takes an uncommitted Batch and commits it.
  /// It will respond with `unprocessable_entity` if the Batch cannot be committed.
  /// 
  /// It does not expect a body.
  /// 
  /// Committing a Batch happens asyncronously, so initially the Batch's `status` will be `updating`.
  /// You can poll that Batch's endpoint to see whether it's changed from `updating` to `committed`.
  Future<PlanningCenterApiResponse> commit(Map<String, dynamic> data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/commit';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }


}
