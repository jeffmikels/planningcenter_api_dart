/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.258346
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

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
export class PcoGivingBatch extends PcoResource {
  static kPcoApplication = 'giving';
  static kTypeString = 'Batch';
  static kTypeId = 'batch';
  static kApiVersion = '2019-10-18';
  static kShortestEdgeId = 'batch-organization-batches';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/batches';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/batches';

  /// possible includes with parameter ?include=a,b
  /// - `batch_group`: include associated batch_group 
  /// - `owner`: include associated owner 
  static get canInclude() { return ['batch_group','owner'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGivingBatch.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGivingBatch.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGivingBatch.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kCommittedAt() { return 'committed_at' }
  static get kDescription() { return 'description' }
  static get kDonationsCount() { return 'donations_count' }
  static get kTotalCents() { return 'total_cents' }
  static get kTotalCurrency() { return 'total_currency' }
  static get kStatus() { return 'status' }


  // getters and setters
  // @override
  get createAllowed() { return ['description']; }

  // @override
  get updateAllowed() { return ['description']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get committedAt() { return Date.parse(attributes[this.constructor.kCommittedAt] ?? 0); }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get donationsCount() { return attributes[this.constructor.kDonationsCount] ?? 0; }
  get totalCents() { return attributes[this.constructor.kTotalCents] ?? 0; }
  get totalCurrency() { return attributes[this.constructor.kTotalCurrency] ?? ''; }
  get status() { return attributes[this.constructor.kStatus] ?? ''; }
  

  // setters for object attributes

  set description(s) {attributes[this.constructor.kDescription] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoGivingBatch._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGivingBatch({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoGivingBatch] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/giving/v2/batches`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoGivingBatch.kPcoApplication, PcoGivingBatch.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/giving/v2/batches`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingBatch] objects (expecting many)
  /// using a path like this: `/giving/v2/batches`
  /// 
  /// Available Query Filters:
  /// - `committed`
  /// - `in_progress`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingBatch.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/batches`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingBatch] objects (expecting one)
  /// using a path like this: `/giving/v2/batch_groups/${batchGroupId}/batches`
  /// 
  /// Available Query Filters:
  /// - `committed`
  /// - `in_progress`
  static getBatchesFromBatchGroup(batchGroupId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingBatch.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/batch_groups/${batchGroupId}/batches`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingBatch] objects (expecting one)
  /// using a path like this: `/giving/v2/people/${peopleId}/batches`
  /// 
  /// Available Query Filters:
  /// - `committed`
  /// - `in_progress`
  static getBatchesFromPeople(peopleId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingBatch.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/people/${peopleId}/batches`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingBatchGroup] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/batches/1/batch_group`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getBatchGroup({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
    let url = `${apiEndpoint}/batch_group`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/batches/1/donations`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getDonations({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    let url = `${apiEndpoint}/donations`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/batches/1/owner`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getOwner({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    let url = `${apiEndpoint}/owner`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
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
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  commit(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/commit`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
