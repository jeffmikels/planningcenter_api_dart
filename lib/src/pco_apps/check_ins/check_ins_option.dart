/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:48.056419
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO CheckIns Option Object
/// 
/// - Application:        check-ins
/// - Id:                 option
/// - Type:               Option
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/options
/// 
/// Description:
/// An option which an attendee may select when checking in.
/// 
/// Options may have extra labels associated with them, denoted by `label` and `quantity`.
/// 
/// Example:
/// ```json
/// {
///   "type": "Option",
///   "id": "1",
///   "attributes": {
///     "body": "string",
///     "quantity": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - label: include associated label 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `label-option-label`: https://api.planningcenteronline.com/check-ins/v2/options/1/label
/// 
/// All Inbound Edges:
/// - `option-checkin-options`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/options
/// - `option-location-options`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/options
/// 
/// All Actions:
/// NONE
///
class PcoCheckInsOption extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Option';
  static const String kTypeId = 'option';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/options';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/options';

  /// possible includes with parameter ?include=a,b
  /// - `label`: include associated label 
  static List<String> get canInclude => ['label'];

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
  static const kBody = 'body';
  static const kQuantity = 'quantity';
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

  String get body => attributes[kBody] ?? '';
  int get quantity => attributes[kQuantity] ?? 0;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoCheckInsOption._() : super(kPcoApplication, kTypeString);
  PcoCheckInsOption.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCheckInsOption] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/options`
  static Future<PcoCollection<PcoCheckInsOption>> getFromCheckIn(String checkInId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsOption.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/options';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsOption>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCheckInsOption] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/locations/$locationId/options`
  static Future<PcoCollection<PcoCheckInsOption>> getFromCheckInAndLocation(String checkInId,String locationId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsOption.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/options';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsOption>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/options/1/label`
  Future<PcoCollection<PcoCheckInsLabel>> getLabel({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    var url = '$apiEndpoint/label';
    return PcoCollection.fromApiCall<PcoCheckInsLabel>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
