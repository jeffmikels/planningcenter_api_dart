/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:11.960945
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `updatedAt` -> `?order=updated_at`
enum PcoServicesPlanNoteOrder { createdAt, updatedAt }

/// Filtering is not allowed when requesting this object.
enum PcoServicesPlanNoteFilter { none }

/// Creates a [PcoServicesPlanNoteQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
/// 
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includePlanNoteCategory`: include associated plan_note_category 
/// - `includeAll`: include all related objects
/// 
/// Alternatively, you may pass a list of strings to the `include` argument.
/// 
/// e.g. `PcoServicesPlanNoteQuery(includes: ['a', 'b'])`
/// 
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// 
/// [PcoServicesPlanNote] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
/// 
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoServicesPlanNoteOrder.createdAt` : will order by `created_at`
/// - `PcoServicesPlanNoteOrder.updatedAt` : will order by `updated_at`
/// 
/// To reverse the order, set `reverse` to true.
/// 
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// 
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesPlanNoteQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesPlanNoteOrder, String> _orderMap = {
    PcoServicesPlanNoteOrder.createdAt: 'created_at',
    PcoServicesPlanNoteOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoServicesPlanNoteOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesPlanNoteFilter, String> _filterMap = {
    
  };
  static String filterString(PcoServicesPlanNoteFilter filter) => _filterMap[filter]!;

  PcoServicesPlanNoteQuery({
    /// include associated plan_note_category
    /// when true, adds `?include=plan_note_category` to url
    bool includePlanNoteCategory = false,
    
    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,
    
    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    

    PcoServicesPlanNoteOrder? orderBy,


    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super() {
    if (includePlanNoteCategory) include.add('plan_note_category');
    
    if (whereCreatedAt != null) where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereUpdatedAt != null) where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));
        
    
    if (orderBy != null) order = orderString(orderBy, reverse: reverse);}
}

/// This class represents a PCO Services PlanNote Object
/// 
/// - Application:        services
/// - Id:                 plan_note
/// - Type:               PlanNote
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes
/// 
/// ## Instantiation
/// - Create a new instance using the `PcoServicesPlanNote()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesPlanNote.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
/// 
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
///   
/// ## Description
/// A specific plan note within a single plan.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `categoryName` (ro) -> PCO: `category_name`
/// - `content` (rw) -> PCO: `content`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `plannotecategory-plannote-plan_note_category`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes/1/plan_note_category
/// 
/// Inbound Edges:
/// - `plannote-plan-notes`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes
/// - `plannote-plantemplate-notes`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PlanNote",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "category_name": "string",
///     "content": "string"
///   },
///   "relationships": {
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "plan_note_category": {
///       "data": {
///         "type": "PlanNoteCategory",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesPlanNote extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PlanNote';
  static const String kTypeId = 'plan_note';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes';

  /// possible includes with parameter ?include=a,b
  /// - `plan_note_category`: include associated plan_note_category 
  static List<String> get canInclude => ['plan_note_category'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','updated_at'];

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
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kCategoryName = 'category_name';
  static const kContent = 'content';


  // getters and setters
  @override
  List<String> get createAllowed => ['content'];

  @override
  List<String> get updateAllowed => ['content'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get categoryName => _attributes[kCategoryName] ?? '';
  String get content => _attributes[kContent] ?? '';
  
  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set content(String? x) => (x == null) ? _attributes.remove(kContent) : _attributes[kContent] = x;
  
  // typed getters for each relationship
  
  PcoServicesPlanNoteCategory? get includedPlanNoteCategory => _firstOrNull<PcoServicesPlanNoteCategory>(relationships['plan_note_category']);

  // Class Constructors
  PcoServicesPlanNote.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  PcoServicesPlanNote.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesPlanNote] object using this endpoint: `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/notes`
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `content`
  /// - FIELDS USED WHEN UPDATING: `content`
  factory PcoServicesPlanNote({required String serviceTypeId, required String planId, String? id, DateTime? createdAt, DateTime? updatedAt, String? categoryName, String? content, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoServicesPlanNote.empty();
    obj._id = id;
    obj._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/notes';
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (categoryName != null) obj._attributes['category_name'] = categoryName;
    if (content != null) obj._attributes['content'] = content;

    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }

    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }

    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class



  /// Will get a collection of [PcoServicesPlanNote] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/notes`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPlanNote>> getNotesFromServiceTypeAndPlan(String serviceTypeId,String planId, {PcoServicesPlanNoteQuery? query, bool includePlanNoteCategory = false,}) async {
    query ??= PcoServicesPlanNoteQuery();
    
    if (includePlanNoteCategory) query.include.add('plan_note_category');
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/notes';
    
    return PcoCollection.fromApiCall<PcoServicesPlanNote>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPlanNote] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPlanNote>> getNotesFromServiceTypeAndPlanTemplate(String serviceTypeId,String planTemplateId, {PcoServicesPlanNoteQuery? query, bool includePlanNoteCategory = false,}) async {
    query ??= PcoServicesPlanNoteQuery();
    
    if (includePlanNoteCategory) query.include.add('plan_note_category');
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes';
    
    return PcoCollection.fromApiCall<PcoServicesPlanNote>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPlanNoteCategory] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes/1/plan_note_category`
  Future<PcoCollection<PcoServicesPlanNoteCategory>> getPlanNoteCategory({PcoServicesPlanNoteCategoryQuery? query}) async {
    query ??= PcoServicesPlanNoteCategoryQuery();
    var url = '$apiEndpoint/plan_note_category';
    return PcoCollection.fromApiCall<PcoServicesPlanNoteCategory>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
