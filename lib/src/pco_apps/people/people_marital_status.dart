/// This file was generated on 2022-03-04T20:00:53.711072


import '../../pco.dart';

/// This class represents a PCO People MaritalStatus Object
/// 
/// - Application:        people
/// - Id:                 marital_status
/// - Type:               MaritalStatus
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/marital_statuses
/// 
/// Description:
/// A martial status represents a member's current status, e.g. married, single, etc.
/// 
/// Example:
/// ```json
/// {
///   "type": "MaritalStatus",
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
/// - `maritalstatus-organization-marital_statuses`: https://api.planningcenteronline.com/people/v2/marital_statuses
/// - `maritalstatus-person-marital_status`: https://api.planningcenteronline.com/people/v2/people/1/marital_status
/// 
/// All Actions:
/// NONE
///
class PcoPeopleMaritalStatu extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'MaritalStatus';
  static const String kTypeId = 'marital_status';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'maritalstatus-organization-marital_statuses';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/marital_statuses';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/marital_statuses';

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
  PcoPeopleMaritalStatu() : super(kPcoApplication, kTypeString);
  PcoPeopleMaritalStatu.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoPeopleMaritalStatu] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/marital_statuses`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleMaritalStatu.create() {
    return PcoPeopleMaritalStatu()
      .._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/marital_statuses';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleMaritalStatu] objects (expecting many)
  /// using a path like this: `/people/v2/marital_statuses`
  static Future<PcoCollection<PcoPeopleMaritalStatu>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMaritalStatu.canInclude;
    var url = '/people/v2/marital_statuses';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMaritalStatu>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleMaritalStatu] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/marital_status`
  static Future<PcoCollection<PcoPeopleMaritalStatu>> getMaritalStatusFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMaritalStatu.canInclude;
    var url = '/people/v2/people/$peopleId/marital_status';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMaritalStatu>(url, query: query, apiVersion:kApiVersion);
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
