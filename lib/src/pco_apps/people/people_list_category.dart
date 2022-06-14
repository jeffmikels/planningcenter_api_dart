/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.467725
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People ListCategory Object
///
/// - Application:        people
/// - Id:                 list_category
/// - Type:               ListCategory
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/list_categories
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/list_categories
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleListCategory()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleListCategory.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
/// ## Description
/// A List Category
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (rw) -> PCO: `name`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `organizationId` (ro) -> PCO: `organization_id`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `lists`: include associated lists
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `organization_id`: (URLParameter), query on a specific organization_id, example: ?where[organization_id]=primary_key
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `organization_id`: (URLParameter), prefix with a hyphen (-organization_id) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `list-listcategory-lists`: https://api.planningcenteronline.com/people/v2/list_categories/1/lists
///
/// Inbound Edges:
/// - `listcategory-list-category`: https://api.planningcenteronline.com/people/v2/lists/1/category
/// - `listcategory-organization-list_categories`: https://api.planningcenteronline.com/people/v2/list_categories
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoPeopleListCategory extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'ListCategory';
  static const String kTypeId = 'list_category';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/list_categories';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/list_categories';

  /// possible includes with parameter ?include=a,b
  /// - `lists`: include associated lists
  static List<String> get canInclude => ['lists'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `organization_id`: (URLParameter), query on a specific organization_id, example: ?where[organization_id]=primary_key
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery =>
      ['created_at', 'name', 'organization_id', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `organization_id`: (URLParameter), prefix with a hyphen (-organization_id) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy =>
      ['created_at', 'name', 'organization_id', 'updated_at'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get createPathTemplate => kCreatePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kName = 'name';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kOrganizationId = 'organization_id';

  // getters and setters
  @override
  List<String> get createAllowed => ['name'];

  @override
  List<String> get updateAllowed => ['name'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  String get organizationId => _attributes[kOrganizationId] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  // typed getters for each relationship

  List<PcoPeopleList> get includedLists =>
      (relationships['lists'] as List?)?.cast<PcoPeopleList>() ?? [];

  // Class Constructors
  PcoPeopleListCategory.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleListCategory.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleListCategory] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/list_categories`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleListCategory({String? name}) {
    var obj = PcoPeopleListCategory.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/list_categories';
    if (name != null) obj.name = name;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeopleListCategory] objects (expecting many)
  /// using a path like this: `/people/v2/list_categories`
  static Future<PcoCollection<PcoPeopleListCategory>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeLists = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeLists) query.include.add('lists');
    var url = '/people/v2/list_categories';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleListCategory>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleListCategory] objects (expecting one)
  /// using a path like this: `/people/v2/lists/$listId/category`
  static Future<PcoCollection<PcoPeopleListCategory>> getCategoryFromList(
    String listId, {
    PlanningCenterApiQuery? query,
    bool includeLists = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeLists) query.include.add('lists');
    var url = '/people/v2/lists/$listId/category';

    return PcoCollection.fromApiCall<PcoPeopleListCategory>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleList] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/list_categories/1/lists`
  Future<PcoCollection<PcoPeopleList>> getLists({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCampus = false,
    bool includeCategory = false,
    bool includeCreatedBy = false,
    bool includeMailchimpSyncStatus = false,
    bool includePeople = false,
    bool includeRules = false,
    bool includeShares = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleListCategory.canInclude);
    if (includeCampus) query.include.add('campus');
    if (includeCategory) query.include.add('category');
    if (includeCreatedBy) query.include.add('created_by');
    if (includeMailchimpSyncStatus) query.include.add('mailchimp_sync_status');
    if (includePeople) query.include.add('people');
    if (includeRules) query.include.add('rules');
    if (includeShares) query.include.add('shares');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '$apiEndpoint/lists';
    return PcoCollection.fromApiCall<PcoPeopleList>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
