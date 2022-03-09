/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:48.058255
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO CheckIns Pass Object
/// 
/// - Application:        check-ins
/// - Id:                 pass
/// - Type:               Pass
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/passes
/// 
/// Description:
/// Enables quick lookup of a person via barcode reader.
/// 
/// Example:
/// ```json
/// {
///   "type": "Pass",
///   "id": "1",
///   "attributes": {
///     "code": "string",
///     "kind": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `code`: (URLParameter), query on a specific code, example: ?where[code]=string
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `person-pass-person`: https://api.planningcenteronline.com/check-ins/v2/passes/1/person
/// 
/// All Inbound Edges:
/// - `pass-organization-passes`: https://api.planningcenteronline.com/check-ins/v2/passes
/// - `pass-person-passes`: https://api.planningcenteronline.com/check-ins/v2/people/1/passes
/// 
/// All Actions:
/// NONE
///
class PcoCheckInsPas extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Pass';
  static const String kTypeId = 'pass';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'pass-organization-passes';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/passes';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/passes';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person 
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `code`: (URLParameter), query on a specific code, example: ?where[code]=string
  static List<String> get canQuery => ['code'];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

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
  static const kCode = 'code';
  static const kKind = 'kind';
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

  String get code => attributes[kCode] ?? '';
  String get kind => attributes[kKind] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoCheckInsPas._() : super(kPcoApplication, kTypeString);
  PcoCheckInsPas.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCheckInsPas] objects (expecting many)
  /// using a path like this: `/check-ins/v2/passes`
  static Future<PcoCollection<PcoCheckInsPas>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPas.canInclude;
    var url = '/check-ins/v2/passes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPas>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCheckInsPas] objects (expecting many)
  /// using a path like this: `/check-ins/v2/people/$peopleId/passes`
  static Future<PcoCollection<PcoCheckInsPas>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPas.canInclude;
    var url = '/check-ins/v2/people/$peopleId/passes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPas>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/passes/1/person`
  Future<PcoCollection<PcoCheckInsPerson>> getPerson({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
