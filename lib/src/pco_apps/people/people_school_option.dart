/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T11:30:57.631113
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People SchoolOption Object
///
/// - Application:        people
/// - Id:                 school_option
/// - Type:               SchoolOption
/// - ApiVersion:         2021-08-17
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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `beginning_grade`: (URLParameter), query on a specific beginning_grade, example: ?where[beginning_grade]=string
/// - `ending_grade`: (URLParameter), query on a specific ending_grade, example: ?where[ending_grade]=string
/// - `school_types`: (URLParameter), query on a specific school_types, example: ?where[school_types]=[]
/// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
/// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `beginning_grade`: (URLParameter), prefix with a hyphen (-beginning_grade) to reverse the order
/// - `ending_grade`: (URLParameter), prefix with a hyphen (-ending_grade) to reverse the order
/// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
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
  static const String kApiVersion = '2021-08-17';
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

  /// pass `null` to remove key from attributes
  set value(String? x) =>
      (x == null) ? _attributes.remove(kValue) : _attributes[kValue] = x;

  /// pass `null` to remove key from attributes
  set sequence(int? x) =>
      (x == null) ? _attributes.remove(kSequence) : _attributes[kSequence] = x;

  /// pass `null` to remove key from attributes
  set beginningGrade(String? x) => (x == null)
      ? _attributes.remove(kBeginningGrade)
      : _attributes[kBeginningGrade] = x;

  /// pass `null` to remove key from attributes
  set endingGrade(String? x) => (x == null)
      ? _attributes.remove(kEndingGrade)
      : _attributes[kEndingGrade] = x;

  /// pass `null` to remove key from attributes
  set schoolTypes(List? x) => (x == null)
      ? _attributes.remove(kSchoolTypes)
      : _attributes[kSchoolTypes] = x;

  // Class Constructors
  PcoPeopleSchoolOption.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleSchoolOption.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleSchoolOption] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/school_options`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleSchoolOption(
      {String? value,
      int? sequence,
      String? beginningGrade,
      String? endingGrade,
      List? schoolTypes}) {
    var obj = PcoPeopleSchoolOption.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/school_options';
    if (value != null) obj.value = value;
    if (sequence != null) obj.sequence = sequence;
    if (beginningGrade != null) obj.beginningGrade = beginningGrade;
    if (endingGrade != null) obj.endingGrade = endingGrade;
    if (schoolTypes != null) obj.schoolTypes = schoolTypes;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `/people/v2/school_options`
  static Future<PcoCollection<PcoPeopleSchoolOption>> get({
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/people/v2/school_options';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/school`
  static Future<PcoCollection<PcoPeopleSchoolOption>> getSchoolFromPeople(
    String peopleId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/people/v2/people/$peopleId/school';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `/people/v2/school_options/$schoolOptionId/promotes_to_school`
  static Future<PcoCollection<PcoPeopleSchoolOption>>
      getPromotesToSchoolFromSchoolOption(
    String schoolOptionId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

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
  Future<PcoCollection<PcoPeopleSchoolOption>> getPromotesToSchool({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/promotes_to_school';
    return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url,
        query: query, apiVersion: apiVersion);
  }
}
