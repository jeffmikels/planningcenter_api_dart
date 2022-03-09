/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.275765
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Giving Person Object
/// 
/// - Application:        giving
/// - Id:                 person
/// - Type:               Person
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/people
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Person",
///   "id": "1",
///   "attributes": {
///     "permissions": "string",
///     "email_addresses": [],
///     "addresses": [],
///     "phone_numbers": [],
///     "first_name": "string",
///     "last_name": "string",
///     "donor_number": 1
///   },
///   "relationships": {
///     "primary_campus": {
///       "data": {
///         "type": "Campus",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `first_name`: (URLParameter), query on a specific first_name, example: ?where[first_name]=string
/// - `last_name`: (URLParameter), query on a specific last_name, example: ?where[last_name]=string
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `batchgroup-person-batch_groups`: https://api.planningcenteronline.com/giving/v2/people/1/batch_groups
/// - `batch-person-batches`: https://api.planningcenteronline.com/giving/v2/people/1/batches
/// - `donation-person-donations`: https://api.planningcenteronline.com/giving/v2/people/1/donations
/// - `paymentmethod-person-payment_methods`: https://api.planningcenteronline.com/giving/v2/people/1/payment_methods
/// - `pledge-person-pledges`: https://api.planningcenteronline.com/giving/v2/people/1/pledges
/// - `campus-person-primary_campus`: https://api.planningcenteronline.com/giving/v2/people/1/primary_campus
/// - `recurringdonation-person-recurring_donations`: https://api.planningcenteronline.com/giving/v2/people/1/recurring_donations
/// 
/// All Inbound Edges:
/// - `person-batchgroup-owner`: https://api.planningcenteronline.com/giving/v2/batch_groups/1/owner
/// - `person-batch-owner`: https://api.planningcenteronline.com/giving/v2/batches/1/owner
/// - `person-organization-people`: https://api.planningcenteronline.com/giving/v2/people
/// - `person-pledge-joint_giver`: https://api.planningcenteronline.com/giving/v2/pledges/1/joint_giver
/// 
/// All Actions:
/// NONE
///
export class PcoGivingPerson extends PcoResource {
  static kPcoApplication = 'giving';
  static kTypeString = 'Person';
  static kTypeId = 'person';
  static kApiVersion = '2019-10-18';
  static kShortestEdgeId = 'person-organization-people';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/people';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/people';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `first_name`: (URLParameter), query on a specific first_name, example: ?where[first_name]=string
  /// - `last_name`: (URLParameter), query on a specific last_name, example: ?where[last_name]=string
  static get canQuery() { return ['first_name','last_name'] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGivingPerson.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGivingPerson.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGivingPerson.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kPermissions() { return 'permissions' }
  static get kEmailAddresses() { return 'email_addresses' }
  static get kAddresses() { return 'addresses' }
  static get kPhoneNumbers() { return 'phone_numbers' }
  static get kFirstName() { return 'first_name' }
  static get kLastName() { return 'last_name' }
  static get kDonorNumber() { return 'donor_number' }


  // getters and setters
  // @override
  get createAllowed() { return []; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return false; }

  // @override
  get canUpdate() { return false; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get permissions() { return attributes[this.constructor.kPermissions] ?? ''; }
  get emailAddresses() { return attributes[this.constructor.kEmailAddresses] ?? []; }
  get addresses() { return attributes[this.constructor.kAddresses] ?? []; }
  get phoneNumbers() { return attributes[this.constructor.kPhoneNumbers] ?? []; }
  get firstName() { return attributes[this.constructor.kFirstName] ?? ''; }
  get lastName() { return attributes[this.constructor.kLastName] ?? ''; }
  get donorNumber() { return attributes[this.constructor.kDonorNumber] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoGivingPerson._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGivingPerson({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingPerson] objects (expecting many)
  /// using a path like this: `/giving/v2/people`
  /// 
  /// Available Query Filters:
  /// - `has_donated`
  /// filter to people with at least one associated donation
  /// 
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/people`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingPerson] objects (expecting one)
  /// using a path like this: `/giving/v2/batch_groups/${batchGroupId}/owner`
  static getOwnerFromBatchGroup(batchGroupId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/batch_groups/${batchGroupId}/owner`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingPerson] objects (expecting one)
  /// using a path like this: `/giving/v2/batches/${batcheId}/owner`
  static getOwnerFromBatche(batcheId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/batches/${batcheId}/owner`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingPerson] objects (expecting one)
  /// using a path like this: `/giving/v2/pledges/${pledgeId}/joint_giver`
  static getJointGiverFromPledge(pledgeId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/pledges/${pledgeId}/joint_giver`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingBatchGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/batch_groups`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getBatchGroups({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
    let url = `${apiEndpoint}/batch_groups`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingBatch] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/batches`
  /// 
  /// Available Query Filters:
  /// - `committed`
  /// - `in_progress`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getBatches({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingBatch.canInclude;
    let url = `${apiEndpoint}/batches`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/donations`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getDonations({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    let url = `${apiEndpoint}/donations`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingPaymentMethod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/payment_methods`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPaymentMethods({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingPaymentMethod.canInclude;
    let url = `${apiEndpoint}/payment_methods`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingPledge] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/pledges`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPledges({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingPledge.canInclude;
    let url = `${apiEndpoint}/pledges`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingCampus] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/primary_campus`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPrimaryCampus({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    let url = `${apiEndpoint}/primary_campus`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/recurring_donations`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getRecurringDonations({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingRecurringDonation.canInclude;
    let url = `${apiEndpoint}/recurring_donations`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
