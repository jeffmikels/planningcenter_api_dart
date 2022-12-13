/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:26.171869
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `beginningGrade` -> `?order=beginning_grade`
/// - `endingGrade` -> `?order=ending_grade`
/// - `sequence` -> `?order=sequence`
/// - `value` -> `?order=value`
enum PcoPeopleSchoolOptionOrder { beginningGrade, endingGrade, sequence, value }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleSchoolOptionFilter { none }

/// Creates a [PcoPeopleSchoolOptionQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleSchoolOption] objects can be requested with one or more of the following criteria:
/// - `whereBeginningGrade`: query on a specific beginning_grade, example: ?where[beginning_grade]=string
/// - `whereEndingGrade`: query on a specific ending_grade, example: ?where[ending_grade]=string
/// - `whereSchoolTypes`: query on a specific school_types, example: ?where[school_types]=[]
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
/// - `PcoPeopleSchoolOptionOrder.beginningGrade` : will order by `beginning_grade`
/// - `PcoPeopleSchoolOptionOrder.endingGrade` : will order by `ending_grade`
/// - `PcoPeopleSchoolOptionOrder.sequence` : will order by `sequence`
/// - `PcoPeopleSchoolOptionOrder.value` : will order by `value`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleSchoolOptionQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleSchoolOptionOrder, String> _orderMap = {
    PcoPeopleSchoolOptionOrder.beginningGrade: 'beginning_grade',
    PcoPeopleSchoolOptionOrder.endingGrade: 'ending_grade',
    PcoPeopleSchoolOptionOrder.sequence: 'sequence',
    PcoPeopleSchoolOptionOrder.value: 'value',
  };
  static String orderString(PcoPeopleSchoolOptionOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleSchoolOptionFilter, String> _filterMap = {};
  static String filterString(PcoPeopleSchoolOptionFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleSchoolOptionQuery({
    /// Query by `beginning_grade`
    /// query on a specific beginning_grade, url example: ?where[beginning_grade]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereBeginningGrade,

    /// Query by `ending_grade`
    /// query on a specific ending_grade, url example: ?where[ending_grade]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereEndingGrade,

    /// Query by `school_types`
    /// query on a specific school_types, url example: ?where[school_types]=[]
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereSchoolTypes,

    /// Query by `sequence`
    /// query on a specific sequence, url example: ?where[sequence]=1
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereSequence,

    /// Query by `value`
    /// query on a specific value, url example: ?where[value]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereValue,
    PcoPeopleSchoolOptionOrder? orderBy,

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
    if (whereBeginningGrade != null)
      where.add(
          PlanningCenterApiWhere.parse('beginning_grade', whereBeginningGrade));
    if (whereEndingGrade != null)
      where.add(PlanningCenterApiWhere.parse('ending_grade', whereEndingGrade));
    if (whereSchoolTypes != null)
      where.add(PlanningCenterApiWhere.parse('school_types', whereSchoolTypes));
    if (whereSequence != null)
      where.add(PlanningCenterApiWhere.parse('sequence', whereSequence));
    if (whereValue != null)
      where.add(PlanningCenterApiWhere.parse('value', whereValue));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People SchoolOption Object
///
/// - Application:        people
/// - Id:                 school_option
/// - Type:               SchoolOption
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/school_options
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/school_options
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleSchoolOption()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleSchoolOption.fromJson()` constructor.
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
/// A school option represents a school name, school type, grades, etc. and can be selected for a person.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `value` (rw) -> PCO: `value`
/// - `sequence` (rw) -> PCO: `sequence`
/// - `beginningGrade` (rw) -> PCO: `beginning_grade`
/// - `endingGrade` (rw) -> PCO: `ending_grade`
/// - `schoolTypes` (rw) -> PCO: `school_types`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `schooloption-schooloption-promotes_to_school`: https://api.planningcenteronline.com/people/v2/school_options/1/promotes_to_school
///
/// Inbound Edges:
/// - `schooloption-organization-school_options`: https://api.planningcenteronline.com/people/v2/school_options
/// - `schooloption-person-school`: https://api.planningcenteronline.com/people/v2/people/1/school
/// - `schooloption-schooloption-promotes_to_school`: https://api.planningcenteronline.com/people/v2/school_options/1/promotes_to_school
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "SchoolOption",
///   "id": "1",
///   "attributes": {
///     "value": "string",
///     "sequence": 1,
///     "beginning_grade": "string",
///     "ending_grade": "string",
///     "school_types": []
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeopleSchoolOption extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'SchoolOption';
  static const String kTypeId = 'school_option';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/school_options';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/school_options';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `beginning_grade`: (URLParameter), query on a specific beginning_grade, example: ?where[beginning_grade]=string
  /// - `ending_grade`: (URLParameter), query on a specific ending_grade, example: ?where[ending_grade]=string
  /// - `school_types`: (URLParameter), query on a specific school_types, example: ?where[school_types]=[]
  /// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
  /// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
  static List<String> get canQuery =>
      ['beginning_grade', 'ending_grade', 'school_types', 'sequence', 'value'];

  /// possible orderings with parameter ?order=
  /// - `beginning_grade`: (URLParameter), prefix with a hyphen (-beginning_grade) to reverse the order
  /// - `ending_grade`: (URLParameter), prefix with a hyphen (-ending_grade) to reverse the order
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
  static List<String> get canOrderBy =>
      ['beginning_grade', 'ending_grade', 'sequence', 'value'];

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
  static const kBeginningGrade = 'beginning_grade';
  static const kEndingGrade = 'ending_grade';
  static const kSchoolTypes = 'school_types';

  // getters and setters
  @override
  List<String> get createAllowed =>
      ['value', 'sequence', 'beginning_grade', 'ending_grade', 'school_types'];

  @override
  List<String> get updateAllowed =>
      ['value', 'sequence', 'beginning_grade', 'ending_grade', 'school_types'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get value => _attributes[kValue] ?? '';
  int get sequence => _attributes[kSequence] ?? 0;
  String get beginningGrade => _attributes[kBeginningGrade] ?? '';
  String get endingGrade => _attributes[kEndingGrade] ?? '';
  List get schoolTypes => _attributes[kSchoolTypes] ?? [];

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set value(String? x) =>
      (x == null) ? _attributes.remove(kValue) : _attributes[kValue] = x;

  ///
  /// pass `null` to remove key from attributes
  set sequence(int? x) =>
      (x == null) ? _attributes.remove(kSequence) : _attributes[kSequence] = x;

  ///
  /// pass `null` to remove key from attributes
  set beginningGrade(String? x) => (x == null)
      ? _attributes.remove(kBeginningGrade)
      : _attributes[kBeginningGrade] = x;

  ///
  /// pass `null` to remove key from attributes
  set endingGrade(String? x) => (x == null)
      ? _attributes.remove(kEndingGrade)
      : _attributes[kEndingGrade] = x;

  ///
  /// pass `null` to remove key from attributes
  set schoolTypes(List? x) => (x == null)
      ? _attributes.remove(kSchoolTypes)
      : _attributes[kSchoolTypes] = x;

  // Class Constructors
  PcoPeopleSchoolOption.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleSchoolOption.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleSchoolOption] object using this endpoint: `https://api.planningcenteronline.com/people/v2/school_options`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `value`, `sequence`, `beginningGrade`, `endingGrade`, `schoolTypes`
  /// - FIELDS USED WHEN UPDATING: `value`, `sequence`, `beginningGrade`, `endingGrade`, `schoolTypes`
  factory PcoPeopleSchoolOption(
      {String? id,
      String? value,
      int? sequence,
      String? beginningGrade,
      String? endingGrade,
      List? schoolTypes,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleSchoolOption.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/school_options';
    if (value != null) obj._attributes['value'] = value;
    if (sequence != null) obj._attributes['sequence'] = sequence;
    if (beginningGrade != null)
      obj._attributes['beginning_grade'] = beginningGrade;
    if (endingGrade != null) obj._attributes['ending_grade'] = endingGrade;
    if (schoolTypes != null) obj._attributes['school_types'] = schoolTypes;

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

  /// Will get a collection of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `/people/v2/school_options`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleSchoolOption>> get({
    String? id,
    PcoPeopleSchoolOptionQuery? query,
  }) async {
    query ??= PcoPeopleSchoolOptionQuery();

    var url = '/people/v2/school_options';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/school`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleSchoolOption>> getSchoolFromPerson(
    String personId, {
    String? id,
    PcoPeopleSchoolOptionQuery? query,
  }) async {
    query ??= PcoPeopleSchoolOptionQuery();

    var url = '/people/v2/people/$personId/school';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `/people/v2/school_options/$schoolOptionId/promotes_to_school`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleSchoolOption>>
      getPromotesToSchoolFromSchoolOption(
    String schoolOptionId, {
    String? id,
    PcoPeopleSchoolOptionQuery? query,
  }) async {
    query ??= PcoPeopleSchoolOptionQuery();

    var url = '/people/v2/school_options/$schoolOptionId/promotes_to_school';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/school_options/1/promotes_to_school`
  Future<PcoCollection<PcoPeopleSchoolOption>> getPromotesToSchool(
      {PcoPeopleSchoolOptionQuery? query}) async {
    query ??= PcoPeopleSchoolOptionQuery();
    var url = '$apiEndpoint/promotes_to_school';
    return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
