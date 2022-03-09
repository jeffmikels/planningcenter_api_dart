/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:47.891622
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services BlockoutException Object
/// 
/// - Application:        services
/// - Id:                 blockout_exception
/// - Type:               BlockoutException
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions
/// 
/// Description:
/// A single exception for the dates generated from the blockout
/// 
/// Example:
/// ```json
/// {
///   "type": "BlockoutException",
///   "id": "1",
///   "attributes": {
///     "date": "2000-01-01",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "blockout": {
///       "data": {
///         "type": "Blockout",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `blockoutexception-blockout-blockout_exceptions`: https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions
/// 
/// All Actions:
/// NONE
///
class PcoServicesBlockoutException extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'BlockoutException';
  static const String kTypeId = 'blockout_exception';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'blockoutexception-blockout-blockout_exceptions';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

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
  static const kDate = 'date';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';


  // getters and setters
  @override
  List<String> get createAllowed => ['date'];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes

  String get date => attributes[kDate] ?? '';
  

  // setters for object attributes

  set date(String s) => attributes[kDate] = s;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesBlockoutException._() : super(kPcoApplication, kTypeString);
  PcoServicesBlockoutException.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoServicesBlockoutException] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/people/$peopleId/blockouts/$blockoutId/blockout_exceptions`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesBlockoutException(String peopleId,String blockoutId) {
    return PcoServicesBlockoutException._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/people/$peopleId/blockouts/$blockoutId/blockout_exceptions';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesBlockoutException] objects (expecting many)
  /// using a path like this: `/services/v2/people/$peopleId/blockouts/$blockoutId/blockout_exceptions`
  static Future<PcoCollection<PcoServicesBlockoutException>> getFromPeopleAndBlockout(String peopleId,String blockoutId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesBlockoutException.canInclude;
    var url = '/services/v2/people/$peopleId/blockouts/$blockoutId/blockout_exceptions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesBlockoutException>(url, query: query, apiVersion:kApiVersion);
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
