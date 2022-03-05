/// This file was generated on 2022-03-04T20:00:53.714404


import '../../pco.dart';

/// This class represents a PCO People NameSuffix Object
/// 
/// - Application:        people
/// - Id:                 name_suffix
/// - Type:               NameSuffix
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/name_suffixes
/// 
/// Description:
/// A name suffix is one of Sr., Jr., etc.
/// 
/// Example:
/// ```json
/// {
///   "type": "NameSuffix",
///   "id": "1",
///   "attributes": {
///     "value": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
/// 
/// Possible orderings with parameter ?order=
/// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `namesuffix-organization-name_suffixes`: https://api.planningcenteronline.com/people/v2/name_suffixes
/// - `namesuffix-person-name_suffix`: https://api.planningcenteronline.com/people/v2/people/1/name_suffix
/// 
/// All Actions:
/// NONE
///
class PcoPeopleNameSuffix extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'NameSuffix';
  static const String kTypeId = 'name_suffix';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'namesuffix-organization-name_suffixes';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/name_suffixes';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/name_suffixes';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
  static List<String> get canQuery => ['value'];

  /// possible orderings with parameter ?order=
  /// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
  static List<String> get canOrderBy => ['value'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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


  // getters and setters
  @override
  List<String> get createAllowed => ['value'];

  @override
  List<String> get updateAllowed => ['value'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get value => attributes[kValue] ?? '';
  

  // setters for object attributes

  set value(String s) => attributes[kValue] = s;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleNameSuffix() : super(kPcoApplication, kTypeString);
  PcoPeopleNameSuffix.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoPeopleNameSuffix] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/name_suffixes`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleNameSuffix.create() {
    return PcoPeopleNameSuffix()
      .._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/name_suffixes';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleNameSuffix] objects (expecting many)
  /// using a path like this: `/people/v2/name_suffixes`
  static Future<PcoCollection<PcoPeopleNameSuffix>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNameSuffix.canInclude;
    var url = '/people/v2/name_suffixes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleNameSuffix] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/name_suffix`
  static Future<PcoCollection<PcoPeopleNameSuffix>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNameSuffix.canInclude;
    var url = '/people/v2/people/$peopleId/name_suffix';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
