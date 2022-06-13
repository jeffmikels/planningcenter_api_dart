/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.760863
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


import '../../pco.dart';

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
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/school_options';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/people/v2/school_options';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `beginning_grade`: (URLParameter), query on a specific beginning_grade, example: ?where[beginning_grade]=string
  /// - `ending_grade`: (URLParameter), query on a specific ending_grade, example: ?where[ending_grade]=string
  /// - `school_types`: (URLParameter), query on a specific school_types, example: ?where[school_types]=[]
  /// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
  /// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
  static List<String> get canQuery => ['beginning_grade','ending_grade','school_types','sequence','value'];

  /// possible orderings with parameter ?order=
  /// - `beginning_grade`: (URLParameter), prefix with a hyphen (-beginning_grade) to reverse the order
  /// - `ending_grade`: (URLParameter), prefix with a hyphen (-ending_grade) to reverse the order
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
  static List<String> get canOrderBy => ['beginning_grade','ending_grade','sequence','value'];

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
  List<String> get createAllowed => ['value', 'sequence', 'beginning_grade', 'ending_grade', 'school_types'];

  @override
  List<String> get updateAllowed => ['value', 'sequence', 'beginning_grade', 'ending_grade', 'school_types'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get value => attributes[kValue] ?? '';
  int get sequence => attributes[kSequence] ?? 0;
  String get beginningGrade => attributes[kBeginningGrade] ?? '';
  String get endingGrade => attributes[kEndingGrade] ?? '';
  List get schoolTypes => attributes[kSchoolTypes] ?? [];  
  
  // setters for object attributes
  
  /// pass `null` to remove key from attributes
  set value(String? x) => (x == null) ? attributes.remove(kValue) : attributes[kValue] = x;
  
  /// pass `null` to remove key from attributes
  set sequence(int? x) => (x == null) ? attributes.remove(kSequence) : attributes[kSequence] = x;
  
  /// pass `null` to remove key from attributes
  set beginningGrade(String? x) => (x == null) ? attributes.remove(kBeginningGrade) : attributes[kBeginningGrade] = x;
  
  /// pass `null` to remove key from attributes
  set endingGrade(String? x) => (x == null) ? attributes.remove(kEndingGrade) : attributes[kEndingGrade] = x;
  
  /// pass `null` to remove key from attributes
  set schoolTypes(List? x) => (x == null) ? attributes.remove(kSchoolTypes) : attributes[kSchoolTypes] = x;  


  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships
  
  




  // Class Constructors
  PcoPeopleSchoolOption.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoPeopleSchoolOption.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleSchoolOption] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/school_options`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleSchoolOption({ String? value, int? sequence, String? beginningGrade, String? endingGrade, List? schoolTypes }) {
    var obj = PcoPeopleSchoolOption.empty();
    obj._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/school_options';
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



  /// Will get a collection of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `/people/v2/school_options`
  static Future<PcoCollection<PcoPeopleSchoolOption>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    var url = '/people/v2/school_options';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/school`
  static Future<PcoCollection<PcoPeopleSchoolOption>> getSchoolFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    var url = '/people/v2/people/$peopleId/school';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `/people/v2/school_options/$schoolOptionId/promotes_to_school`
  static Future<PcoCollection<PcoPeopleSchoolOption>> getPromotesToSchoolFromSchoolOption(String schoolOptionId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    var url = '/people/v2/school_options/$schoolOptionId/promotes_to_school';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/school_options/1/promotes_to_school`
  Future<PcoCollection<PcoPeopleSchoolOption>> getPromotesToSchool({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    var url = '$apiEndpoint/promotes_to_school';
    return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
