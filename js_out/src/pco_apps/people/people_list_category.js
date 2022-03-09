/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.842356
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People ListCategory Object
/// 
/// - Application:        people
/// - Id:                 list_category
/// - Type:               ListCategory
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/list_categories
/// 
/// Description:
/// A List Category
/// 
/// Example:
/// ```json
/// {
///   "type": "ListCategory",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "organization_id": "primary_key"
///   },
///   "relationships": {
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - lists: include associated lists 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `organization_id`: (URLParameter), query on a specific organization_id, example: ?where[organization_id]=primary_key
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `organization_id`: (URLParameter), prefix with a hyphen (-organization_id) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `list-listcategory-lists`: https://api.planningcenteronline.com/people/v2/list_categories/1/lists
/// 
/// All Inbound Edges:
/// - `listcategory-list-category`: https://api.planningcenteronline.com/people/v2/lists/1/category
/// - `listcategory-organization-list_categories`: https://api.planningcenteronline.com/people/v2/list_categories
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleListCategory extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'ListCategory';
  static kTypeId = 'list_category';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'listcategory-organization-list_categories';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/list_categories';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/list_categories';

  /// possible includes with parameter ?include=a,b
  /// - `lists`: include associated lists 
  static get canInclude() { return ['lists'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `organization_id`: (URLParameter), query on a specific organization_id, example: ?where[organization_id]=primary_key
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','name','organization_id','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `organization_id`: (URLParameter), prefix with a hyphen (-organization_id) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','name','organization_id','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleListCategory.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleListCategory.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleListCategory.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kOrganizationId() { return 'organization_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['name']; }

  // @override
  get updateAllowed() { return ['name']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get organizationId() { return attributes[this.constructor.kOrganizationId] ?? ''; }
  

  // setters for object attributes

  set name(s) {attributes[this.constructor.kName] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleListCategory._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleListCategory({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleListCategory] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/list_categories`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeopleListCategory.kPcoApplication, PcoPeopleListCategory.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/list_categories`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleListCategory] objects (expecting many)
  /// using a path like this: `/people/v2/list_categories`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleListCategory.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/list_categories`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleListCategory] objects (expecting one)
  /// using a path like this: `/people/v2/lists/${listId}/category`
  static getCategoryFromList(listId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleListCategory.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/lists/${listId}/category`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleList] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/list_categories/1/lists`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLists({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleList.canInclude;
    let url = `${apiEndpoint}/lists`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
