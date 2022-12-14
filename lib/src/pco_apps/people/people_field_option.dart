/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:37.995340
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `sequence` -> `?order=sequence`
/// - `value` -> `?order=value`
enum PcoPeopleFieldOptionOrder { sequence, value }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleFieldOptionFilter { none }

/// Creates a [PcoPeopleFieldOptionQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleFieldOption] objects can be requested with one or more of the following criteria:
/// - `whereSequence`: query on a specific sequence, example: ?where[sequence]=1
/// - `whereValue`: query on a specific value, example: ?where[value]=string
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
/// - `PcoPeopleFieldOptionOrder.sequence` : will order by `sequence`
/// - `PcoPeopleFieldOptionOrder.value` : will order by `value`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleFieldOptionQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleFieldOptionOrder, String> _orderMap = {
    PcoPeopleFieldOptionOrder.sequence: 'sequence',
    PcoPeopleFieldOptionOrder.value: 'value',
  };
  static String orderString(PcoPeopleFieldOptionOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleFieldOptionFilter, String> _filterMap = {};
  static String filterString(PcoPeopleFieldOptionFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleFieldOptionQuery({
    /// Query by `sequence`
    /// query on a specific sequence, url example: ?where[sequence]=1
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereSequence,

    /// Query by `value`
    /// query on a specific value, url example: ?where[value]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereValue,
    PcoPeopleFieldOptionOrder? orderBy,

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
    if (whereSequence != null)
      where.add(PlanningCenterApiWhere.parse('sequence', whereSequence));
    if (whereValue != null)
      where.add(PlanningCenterApiWhere.parse('value', whereValue));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People FieldOption Object
///
/// - Application:        people
/// - Id:                 field_option
/// - Type:               FieldOption
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleFieldOption()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleFieldOption.fromJson()` constructor.
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
/// A field option represents an individual option for a custom field of type "select" or "checkboxes".
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `value` (rw) -> PCO: `value`
/// - `sequence` (rw) -> PCO: `sequence`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `fieldoption-fielddatum-field_option`: https://api.planningcenteronline.com/people/v2/field_data/1/field_option
/// - `fieldoption-fielddefinition-field_options`: https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options
/// - `fieldoption-tab-field_options`: https://api.planningcenteronline.com/people/v2/tabs/1/field_options
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "FieldOption",
///   "id": "1",
///   "attributes": {
///     "value": "string",
///     "sequence": 1
///   },
///   "relationships": {
///     "field_definition": {
///       "data": {
///         "type": "FieldDefinition",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleFieldOption extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FieldOption';
  static const String kTypeId = 'field_option';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
  /// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
  static List<String> get canQuery => ['sequence', 'value'];

  /// possible orderings with parameter ?order=
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
  static List<String> get canOrderBy => ['sequence', 'value'];

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
  static const kValue = 'value';
  static const kSequence = 'sequence';

  // getters and setters
  @override
  List<String> get createAllowed => ['value', 'sequence'];

  @override
  List<String> get updateAllowed => ['value', 'sequence'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get value => _attributes[kValue] ?? '';
  int get sequence => _attributes[kSequence] ?? 0;

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set value(String? x) =>
      (x == null) ? _attributes.remove(kValue) : _attributes[kValue] = x;

  ///
  /// pass `null` to remove key from attributes
  set sequence(int? x) =>
      (x == null) ? _attributes.remove(kSequence) : _attributes[kSequence] = x;

  // Class Constructors
  PcoPeopleFieldOption.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleFieldOption.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleFieldOption] object using this endpoint: `https://api.planningcenteronline.com/people/v2/field_definitions/$fieldDefinitionId/field_options`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `value`, `sequence`
  /// - FIELDS USED WHEN UPDATING: `value`, `sequence`
  factory PcoPeopleFieldOption(
      {required String fieldDefinitionId,
      String? id,
      String? value,
      int? sequence,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleFieldOption.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/field_definitions/$fieldDefinitionId/field_options';
    if (value != null) obj._attributes['value'] = value;
    if (sequence != null) obj._attributes['sequence'] = sequence;

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

  /// Will get a [PcoCollection] of [PcoPeopleFieldOption] objects (expecting one)
  /// using a path like this: `/people/v2/field_data/$fieldDataId/field_option`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleFieldOption>> getFromFieldData(
    String fieldDataId, {
    PcoPeopleFieldOptionQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoPeopleFieldOptionQuery();
    if (getAll) query.getAll = true;

    var url = '/people/v2/field_data/$fieldDataId/field_option';

    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `/people/v2/field_definitions/$fieldDefinitionId/field_options`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleFieldOption>> getFromFieldDefinition(
    String fieldDefinitionId, {
    String? id,
    PcoPeopleFieldOptionQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoPeopleFieldOptionQuery();
    if (getAll) query.getAll = true;

    var url = '/people/v2/field_definitions/$fieldDefinitionId/field_options';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleFieldOption] object
  /// using a path like this: `/people/v2/field_definitions/$fieldDefinitionId/field_options/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleFieldOption?> getSingleFromFieldDefinition(
    String fieldDefinitionId,
    String id, {
    PcoPeopleFieldOptionQuery? query,
  }) async {
    query ??= PcoPeopleFieldOptionQuery();

    var url =
        '/people/v2/field_definitions/$fieldDefinitionId/field_options/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleFieldOption>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `/people/v2/field_definitions/$fieldDefinitionId/field_options`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleFieldOption>> getAllFromFieldDefinition(
    String fieldDefinitionId, {
    String? id,
    PcoPeopleFieldOptionQuery? query,
  }) async {
    query ??= PcoPeopleFieldOptionQuery();
    query.getAll = true;

    var url = '/people/v2/field_definitions/$fieldDefinitionId/field_options';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `/people/v2/tabs/$tabId/field_options`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleFieldOption>> getFromTab(
    String tabId, {
    String? id,
    PcoPeopleFieldOptionQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoPeopleFieldOptionQuery();
    if (getAll) query.getAll = true;

    var url = '/people/v2/tabs/$tabId/field_options';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleFieldOption] object
  /// using a path like this: `/people/v2/tabs/$tabId/field_options/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleFieldOption?> getSingleFromTab(
    String tabId,
    String id, {
    PcoPeopleFieldOptionQuery? query,
  }) async {
    query ??= PcoPeopleFieldOptionQuery();

    var url = '/people/v2/tabs/$tabId/field_options/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleFieldOption>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `/people/v2/tabs/$tabId/field_options`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleFieldOption>> getAllFromTab(
    String tabId, {
    String? id,
    PcoPeopleFieldOptionQuery? query,
  }) async {
    query ??= PcoPeopleFieldOptionQuery();
    query.getAll = true;

    var url = '/people/v2/tabs/$tabId/field_options';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
