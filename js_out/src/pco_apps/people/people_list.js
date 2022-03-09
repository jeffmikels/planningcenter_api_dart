/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.841273
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People List Object
/// 
/// - Application:        people
/// - Id:                 list
/// - Type:               List
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/lists
/// 
/// Description:
/// A list is a powerful tool for finding and grouping people together using any criteria imaginable.
/// 
/// Example:
/// ```json
/// {
///   "type": "List",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "auto_refresh": true,
///     "status": "string",
///     "has_inactive_results": true,
///     "include_inactive": true,
///     "returns": "string",
///     "return_original_if_none": true,
///     "subset": "string",
///     "automations_active": true,
///     "automations_count": 1,
///     "description": "string",
///     "invalid": true,
///     "name_or_description": "string",
///     "recently_viewed": true,
///     "refreshed_at": "2000-01-01T12:00:00Z",
///     "starred": true,
///     "total_people": 1,
///     "batch_completed_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - campus: include associated campus 
/// - category: include associated category 
/// - created_by: include associated created_by 
/// - mailchimp_sync_status: include associated mailchimp_sync_status 
/// - people: include associated people 
/// - rules: include associated rules 
/// - shares: include associated shares 
/// - updated_by: include associated updated_by 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `batch_completed_at`: (URLParameter), query on a specific batch_completed_at, example: ?where[batch_completed_at]=2000-01-01T12:00:00Z
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `batch_completed_at`: (URLParameter), prefix with a hyphen (-batch_completed_at) to reverse the order
/// - `campus_id`: (URLParameter), prefix with a hyphen (-campus_id) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `list_category_id`: (URLParameter), prefix with a hyphen (-list_category_id) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `name_or_description`: (URLParameter), prefix with a hyphen (-name_or_description) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `campus-list-campus`: https://api.planningcenteronline.com/people/v2/lists/1/campus
/// - `listcategory-list-category`: https://api.planningcenteronline.com/people/v2/lists/1/category
/// - `person-list-created_by`: https://api.planningcenteronline.com/people/v2/lists/1/created_by
/// - `listresult-list-list_results`: https://api.planningcenteronline.com/people/v2/lists/1/list_results
/// - `mailchimpsyncstatus-list-mailchimp_sync_status`: https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status
/// - `person-list-people`: https://api.planningcenteronline.com/people/v2/lists/1/people
/// - `rule-list-rules`: https://api.planningcenteronline.com/people/v2/lists/1/rules
/// - `listshare-list-shares`: https://api.planningcenteronline.com/people/v2/lists/1/shares
/// - `liststar-list-star`: https://api.planningcenteronline.com/people/v2/lists/1/star
/// - `person-list-updated_by`: https://api.planningcenteronline.com/people/v2/lists/1/updated_by
/// 
/// All Inbound Edges:
/// - `list-campus-lists`: https://api.planningcenteronline.com/people/v2/campuses/1/lists
/// - `list-listcategory-lists`: https://api.planningcenteronline.com/people/v2/list_categories/1/lists
/// - `list-organization-lists`: https://api.planningcenteronline.com/people/v2/lists
/// 
/// All Actions:
/// - `mailchimp_sync`: https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync
/// - `run`: https://api.planningcenteronline.com/people/v2/lists/1/run
///
export class PcoPeopleList extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'List';
  static kTypeId = 'list';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'list-organization-lists';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/lists';

  /// possible includes with parameter ?include=a,b
  /// - `campus`: include associated campus 
  /// - `category`: include associated category 
  /// - `created_by`: include associated created_by 
  /// - `mailchimp_sync_status`: include associated mailchimp_sync_status 
  /// - `people`: include associated people 
  /// - `rules`: include associated rules 
  /// - `shares`: include associated shares 
  /// - `updated_by`: include associated updated_by 
  static get canInclude() { return ['campus','category','created_by','mailchimp_sync_status','people','rules','shares','updated_by'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `batch_completed_at`: (URLParameter), query on a specific batch_completed_at, example: ?where[batch_completed_at]=2000-01-01T12:00:00Z
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['batch_completed_at','created_at','id','name','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `batch_completed_at`: (URLParameter), prefix with a hyphen (-batch_completed_at) to reverse the order
  /// - `campus_id`: (URLParameter), prefix with a hyphen (-campus_id) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `list_category_id`: (URLParameter), prefix with a hyphen (-list_category_id) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `name_or_description`: (URLParameter), prefix with a hyphen (-name_or_description) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['batch_completed_at','campus_id','created_at','list_category_id','name','name_or_description','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleList.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleList.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleList.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kAutoRefresh() { return 'auto_refresh' }
  static get kStatus() { return 'status' }
  static get kHasInactiveResults() { return 'has_inactive_results' }
  static get kIncludeInactive() { return 'include_inactive' }
  static get kReturns() { return 'returns' }
  static get kReturnOriginalIfNone() { return 'return_original_if_none' }
  static get kSubset() { return 'subset' }
  static get kAutomationsActive() { return 'automations_active' }
  static get kAutomationsCount() { return 'automations_count' }
  static get kDescription() { return 'description' }
  static get kInvalid() { return 'invalid' }
  static get kNameOrDescription() { return 'name_or_description' }
  static get kRecentlyViewed() { return 'recently_viewed' }
  static get kRefreshedAt() { return 'refreshed_at' }
  static get kStarred() { return 'starred' }
  static get kTotalPeople() { return 'total_people' }
  static get kBatchCompletedAt() { return 'batch_completed_at' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }


  // getters and setters
  // @override
  get createAllowed() { return []; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return false; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get isAutoRefresh() { return attributes[this.constructor.kAutoRefresh] == true; }
  get status() { return attributes[this.constructor.kStatus] ?? ''; }
  get isHasInactiveResults() { return attributes[this.constructor.kHasInactiveResults] == true; }
  get isIncludeInactive() { return attributes[this.constructor.kIncludeInactive] == true; }
  get returns() { return attributes[this.constructor.kReturns] ?? ''; }
  get isReturnOriginalIfNone() { return attributes[this.constructor.kReturnOriginalIfNone] == true; }
  get subset() { return attributes[this.constructor.kSubset] ?? ''; }
  get isAutomationsActive() { return attributes[this.constructor.kAutomationsActive] == true; }
  get automationsCount() { return attributes[this.constructor.kAutomationsCount] ?? 0; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get isInvalid() { return attributes[this.constructor.kInvalid] == true; }
  get nameOrDescription() { return attributes[this.constructor.kNameOrDescription] ?? ''; }
  get isRecentlyViewed() { return attributes[this.constructor.kRecentlyViewed] == true; }
  get refreshedAt() { return Date.parse(attributes[this.constructor.kRefreshedAt] ?? 0); }
  get isStarred() { return attributes[this.constructor.kStarred] == true; }
  get totalPeople() { return attributes[this.constructor.kTotalPeople] ?? 0; }
  get batchCompletedAt() { return Date.parse(attributes[this.constructor.kBatchCompletedAt] ?? 0); }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleList._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleList({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleList] objects (expecting many)
  /// using a path like this: `/people/v2/lists`
  /// 
  /// Available Query Filters:
  /// - `can_manage`
  /// - `recently_viewed`
  /// - `starred`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleList.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/lists`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleList] objects (expecting many)
  /// using a path like this: `/people/v2/campuses/${campusId}/lists`
  static getFromCampus(campusId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleList.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/campuses/${campusId}/lists`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleList] objects (expecting many)
  /// using a path like this: `/people/v2/list_categories/${listCategoryId}/lists`
  static getFromListCategory(listCategoryId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleList.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/list_categories/${listCategoryId}/lists`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleCampus] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/campus`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCampus({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    let url = `${apiEndpoint}/campus`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleListCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/category`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCategory({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleListCategory.canInclude;
    let url = `${apiEndpoint}/category`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/created_by`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCreatedBy({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/created_by`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleListResult] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/list_results`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getListResults({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleListResult.canInclude;
    let url = `${apiEndpoint}/list_results`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleMailchimpSyncStatu] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getMailchimpSyncStatus({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleMailchimpSyncStatu.canInclude;
    let url = `${apiEndpoint}/mailchimp_sync_status`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/people`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPeople({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/people`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleRule] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/rules`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getRules({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleRule.canInclude;
    let url = `${apiEndpoint}/rules`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleListShare] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/shares`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getShares({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleListShare.canInclude;
    let url = `${apiEndpoint}/shares`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleListStar] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/star`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getStar({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleListStar.canInclude;
    let url = `${apiEndpoint}/star`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/updated_by`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getUpdatedBy({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/updated_by`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `mailchimp_sync`
  /// 
  /// Sync a List to Mailchimp. (Mailchimp integration must already be configured for this organization.)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  mailchimpSync(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/mailchimp_sync`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `run`
  /// 
  /// Run a List to update its results.
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/run`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  run(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/run`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
