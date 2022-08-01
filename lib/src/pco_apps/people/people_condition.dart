/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T15:11:03.887574
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `application` -> `?order=application`
/// - `comparison` -> `?order=comparison`
/// - `createdAt` -> `?order=created_at`
/// - `definitionClass` -> `?order=definition_class`
/// - `definitionIdentifier` -> `?order=definition_identifier`
/// - `description` -> `?order=description`
/// - `settings` -> `?order=settings`
/// - `updatedAt` -> `?order=updated_at`
enum PcoPeopleConditionOrder {
  application,
  comparison,
  createdAt,
  definitionClass,
  definitionIdentifier,
  description,
  settings,
  updatedAt
}

/// Filtering is not allowed when requesting this object.
enum PcoPeopleConditionFilter { none }

/// Creates a [PcoPeopleConditionQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeCreatedBy`: include associated created_by
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleConditionQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleCondition] objects can be requested with one or more of the following criteria:
/// - `whereApplication`: query on a specific application, example: ?where[application]=string
/// - `whereComparison`: query on a specific comparison, example: ?where[comparison]=string
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereDefinitionClass`: query on a specific definition_class, example: ?where[definition_class]=string
/// - `whereDefinitionIdentifier`: query on a specific definition_identifier, example: ?where[definition_identifier]=string
/// - `whereDescription`: query on a specific description, example: ?where[description]=string
/// - `whereSettings`: query on a specific settings, example: ?where[settings]=string
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
/// - `PcoPeopleConditionOrder.application` : will order by `application`
/// - `PcoPeopleConditionOrder.comparison` : will order by `comparison`
/// - `PcoPeopleConditionOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleConditionOrder.definitionClass` : will order by `definition_class`
/// - `PcoPeopleConditionOrder.definitionIdentifier` : will order by `definition_identifier`
/// - `PcoPeopleConditionOrder.description` : will order by `description`
/// - `PcoPeopleConditionOrder.settings` : will order by `settings`
/// - `PcoPeopleConditionOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleConditionQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleConditionOrder, String> _orderMap = {
    PcoPeopleConditionOrder.application: 'application',
    PcoPeopleConditionOrder.comparison: 'comparison',
    PcoPeopleConditionOrder.createdAt: 'created_at',
    PcoPeopleConditionOrder.definitionClass: 'definition_class',
    PcoPeopleConditionOrder.definitionIdentifier: 'definition_identifier',
    PcoPeopleConditionOrder.description: 'description',
    PcoPeopleConditionOrder.settings: 'settings',
    PcoPeopleConditionOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoPeopleConditionOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleConditionFilter, String> _filterMap = {};
  static String filterString(PcoPeopleConditionFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleConditionQuery({
    /// include associated created_by
    /// when true, adds `?include=created_by` to url
    bool includeCreatedBy = false,

    /// Query by `application`
    /// query on a specific application, url example: ?where[application]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereApplication,

    /// Query by `comparison`
    /// query on a specific comparison, url example: ?where[comparison]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereComparison,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `definition_class`
    /// query on a specific definition_class, url example: ?where[definition_class]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereDefinitionClass,

    /// Query by `definition_identifier`
    /// query on a specific definition_identifier, url example: ?where[definition_identifier]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereDefinitionIdentifier,

    /// Query by `description`
    /// query on a specific description, url example: ?where[description]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereDescription,

    /// Query by `settings`
    /// query on a specific settings, url example: ?where[settings]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereSettings,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoPeopleConditionOrder? orderBy,

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
    if (includeCreatedBy) include.add('created_by');

    if (whereApplication != null)
      where.add(PlanningCenterApiWhere.parse('application', whereApplication));
    if (whereComparison != null)
      where.add(PlanningCenterApiWhere.parse('comparison', whereComparison));
    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereDefinitionClass != null)
      where.add(PlanningCenterApiWhere.parse(
          'definition_class', whereDefinitionClass));
    if (whereDefinitionIdentifier != null)
      where.add(PlanningCenterApiWhere.parse(
          'definition_identifier', whereDefinitionIdentifier));
    if (whereDescription != null)
      where.add(PlanningCenterApiWhere.parse('description', whereDescription));
    if (whereSettings != null)
      where.add(PlanningCenterApiWhere.parse('settings', whereSettings));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People Condition Object
///
/// - Application:        people
/// - Id:                 condition
/// - Type:               Condition
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleCondition.fromJson()` constructor.
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
/// A condition is an individual criterion used by a List Rule.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `application` (ro) -> PCO: `application`
/// - `definitionClass` (ro) -> PCO: `definition_class`
/// - `comparison` (ro) -> PCO: `comparison`
/// - `settings` (ro) -> PCO: `settings`
/// - `definitionIdentifier` (ro) -> PCO: `definition_identifier`
/// - `description` (ro) -> PCO: `description`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-condition-created_by`: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions/1/created_by
///
/// Inbound Edges:
/// - `condition-rule-conditions`: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Condition",
///   "id": "1",
///   "attributes": {
///     "application": "string",
///     "definition_class": "string",
///     "comparison": "string",
///     "settings": "string",
///     "definition_identifier": "string",
///     "description": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleCondition extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Condition';
  static const String kTypeId = 'condition';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `created_by`: include associated created_by
  static List<String> get canInclude => ['created_by'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `application`: (URLParameter), query on a specific application, example: ?where[application]=string
  /// - `comparison`: (URLParameter), query on a specific comparison, example: ?where[comparison]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `definition_class`: (URLParameter), query on a specific definition_class, example: ?where[definition_class]=string
  /// - `definition_identifier`: (URLParameter), query on a specific definition_identifier, example: ?where[definition_identifier]=string
  /// - `description`: (URLParameter), query on a specific description, example: ?where[description]=string
  /// - `settings`: (URLParameter), query on a specific settings, example: ?where[settings]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => [
        'application',
        'comparison',
        'created_at',
        'definition_class',
        'definition_identifier',
        'description',
        'settings',
        'updated_at'
      ];

  /// possible orderings with parameter ?order=
  /// - `application`: (URLParameter), prefix with a hyphen (-application) to reverse the order
  /// - `comparison`: (URLParameter), prefix with a hyphen (-comparison) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `definition_class`: (URLParameter), prefix with a hyphen (-definition_class) to reverse the order
  /// - `definition_identifier`: (URLParameter), prefix with a hyphen (-definition_identifier) to reverse the order
  /// - `description`: (URLParameter), prefix with a hyphen (-description) to reverse the order
  /// - `settings`: (URLParameter), prefix with a hyphen (-settings) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => [
        'application',
        'comparison',
        'created_at',
        'definition_class',
        'definition_identifier',
        'description',
        'settings',
        'updated_at'
      ];

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
  static const kApplication = 'application';
  static const kDefinitionClass = 'definition_class';
  static const kComparison = 'comparison';
  static const kSettings = 'settings';
  static const kDefinitionIdentifier = 'definition_identifier';
  static const kDescription = 'description';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';

  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  String get application => _attributes[kApplication] ?? '';
  String get definitionClass => _attributes[kDefinitionClass] ?? '';
  String get comparison => _attributes[kComparison] ?? '';
  String get settings => _attributes[kSettings] ?? '';
  String get definitionIdentifier => _attributes[kDefinitionIdentifier] ?? '';
  String get description => _attributes[kDescription] ?? '';

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedCreatedBy<T extends PcoResource>() =>
      (relationships['created_by'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoPeopleCondition.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleCondition.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleCondition] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoPeopleCondition(
      {String? id,
      String? application,
      String? definitionClass,
      String? comparison,
      String? settings,
      String? definitionIdentifier,
      String? description,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleCondition.empty();
    obj._id = id;
    if (application != null) obj._attributes['application'] = application;
    if (definitionClass != null)
      obj._attributes['definition_class'] = definitionClass;
    if (comparison != null) obj._attributes['comparison'] = comparison;
    if (settings != null) obj._attributes['settings'] = settings;
    if (definitionIdentifier != null)
      obj._attributes['definition_identifier'] = definitionIdentifier;
    if (description != null) obj._attributes['description'] = description;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();

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

  /// Will get a collection of [PcoPeopleCondition] objects (expecting many)
  /// using a path like this: `/people/v2/lists/$listId/rules/$ruleId/conditions`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleCondition>> getFromListAndRule(
    String listId,
    String ruleId, {
    String? id,
    PcoPeopleConditionQuery? query,
    bool includeCreatedBy = false,
  }) async {
    query ??= PcoPeopleConditionQuery();

    if (includeCreatedBy) query.include.add('created_by');
    var url = '/people/v2/lists/$listId/rules/$ruleId/conditions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleCondition>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions/1/created_by`
  Future<PcoCollection<PcoPeoplePerson>> getCreatedBy(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/created_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
