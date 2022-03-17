/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T16:19:10.184512
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Giving BatchGroup Object
/// 
/// - Application:        giving
/// - Id:                 batch_group
/// - Type:               BatchGroup
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/batch_groups
/// 
/// ## Description
/// 
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `description` (rw) -> PCO: `description`
/// - `isCommitted` (ro) -> PCO: `committed`
/// - `totalCents` (ro) -> PCO: `total_cents`
/// - `totalCurrency` (ro) -> PCO: `total_currency`
/// - `status` (ro) -> PCO: `status`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `owner`: include associated owner 
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// NONE
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// NONE
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `batch-batchgroup-batches`: https://api.planningcenteronline.com/giving/v2/batch_groups/1/batches
/// - `person-batchgroup-owner`: https://api.planningcenteronline.com/giving/v2/batch_groups/1/owner
/// 
/// Inbound Edges:
/// - `batchgroup-batch-batch_group`: https://api.planningcenteronline.com/giving/v2/batches/1/batch_group
/// - `batchgroup-organization-batch_groups`: https://api.planningcenteronline.com/giving/v2/batch_groups
/// - `batchgroup-person-batch_groups`: https://api.planningcenteronline.com/giving/v2/people/1/batch_groups
/// 
/// Actions:
/// - `commit`: https://api.planningcenteronline.com/giving/v2/batch_groups/1/commit
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "BatchGroup",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "description": "string",
///     "committed": true,
///     "total_cents": 1,
///     "total_currency": "string",
///     "status": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoGivingBatchGroup extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'BatchGroup';
  static const String kTypeId = 'batch_group';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'batchgroup-organization-batch_groups';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/batch_groups';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/batch_groups';

  /// possible includes with parameter ?include=a,b
  /// - `owner`: include associated owner 
  static List<String> get canInclude => ['owner'];

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

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get description => attributes[kDescription] ?? '';
  bool get isCommitted => attributes[kCommitted] == true;
  int get totalCents => attributes[kTotalCents] ?? 0;
  String get totalCurrency => attributes[kTotalCurrency] ?? '';
  String get status => attributes[kStatus] ?? '';
  

  // setters for object attributes

  set description(String s) => attributes[kDescription] = s;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoGivingBatchGroup._() : super(kPcoApplication, kTypeString);
  PcoGivingBatchGroup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoGivingBatchGroup] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/giving/v2/batch_groups`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoGivingBatchGroup() {
    return PcoGivingBatchGroup._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/giving/v2/batch_groups';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoGivingBatchGroup] objects (expecting many)
  /// using a path like this: `/giving/v2/batch_groups`
  static Future<PcoCollection<PcoGivingBatchGroup>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
    var url = '/giving/v2/batch_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingBatchGroup>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGivingBatchGroup] objects (expecting many)
  /// using a path like this: `/giving/v2/batches/$batcheId/batch_group`
  static Future<PcoCollection<PcoGivingBatchGroup>> getFromBatche(String batcheId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
    var url = '/giving/v2/batches/$batcheId/batch_group';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingBatchGroup>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGivingBatchGroup] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$peopleId/batch_groups`
  static Future<PcoCollection<PcoGivingBatchGroup>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
    var url = '/giving/v2/people/$peopleId/batch_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingBatchGroup>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingBatch] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/batch_groups/1/batches`
  /// 
  /// Available Query Filters:
  /// - `committed`
  /// - `in_progress`
  Future<PcoCollection<PcoGivingBatch>> getBatches({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatch.canInclude;
    var url = '$apiEndpoint/batches';
    return PcoCollection.fromApiCall<PcoGivingBatch>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/batch_groups/1/owner`
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
  /// Used to commit an in progress batch group.
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/batch_groups/1/commit`
  /// 
  /// Details:
  /// This action takes an uncommitted BatchGroup and commits it.
  /// It will respond with `unprocessable_entity` if the BatchGroup cannot be committed.
  /// 
  /// It does not expect a body.
  /// 
  /// Committing a BatchGroup happens asyncronously, so initially the BatchGroup's `status` will be `updating`.
  /// You can poll that BatchGroup's endpoint to see whether it's changed from `updating` to `committed`.
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
