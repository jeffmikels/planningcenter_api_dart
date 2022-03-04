/// This file was generated on 2022-03-04T15:29:14.157494


import '../../pco.dart';

/// This class represents a PCO CheckIns Label Object
/// 
/// - Application:        check-ins
/// - Id:                 label
/// - Type:               Label
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/labels
/// 
/// Description:
/// Labels can be set to print for events (through `EventLabel`s),
/// locations (through `LocationLabel`s) or options.
/// Label type (security label / name label) is expressed with the
/// `prints_for` attribute. `prints_for="Person"` is a name label,
/// `prints_for="Group"` is a security label.
/// 
/// Example:
/// ```json
/// {
///   "type": "Label",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "xml": "string",
///     "prints_for": "string",
///     "roll": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
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
/// - `eventlabel-label-event_labels`: https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels
/// - `locationlabel-label-location_labels`: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels
/// 
/// All Inbound Edges:
/// - `label-eventlabel-label`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label
/// - `label-locationlabel-label`: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/label
/// - `label-option-label`: https://api.planningcenteronline.com/check-ins/v2/options/1/label
/// - `label-organization-labels`: https://api.planningcenteronline.com/check-ins/v2/labels
/// 
/// All Actions:
/// NONE
///
class PcoCheckInsLabel extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Label';
  static const String kTypeId = 'label';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'label-organization-labels';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/labels';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/labels';

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

  // field mapping constants
  static const kId = 'id';
  static const kName = 'name';
  static const kXml = 'xml';
  static const kPrintsFor = 'prints_for';
  static const kRoll = 'roll';
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

  String get name => attributes[kName] ?? '';
  String get xml => attributes[kXml] ?? '';
  String get printsFor => attributes[kPrintsFor] ?? '';
  String get roll => attributes[kRoll] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoCheckInsLabel() : super(kPcoApplication, kTypeString);
  PcoCheckInsLabel.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/labels`
  static Future<PcoCollection<PcoCheckInsLabel>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    var url = '/check-ins/v2/labels';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLabel>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/event_labels/$eventLabelId/label`
  static Future<PcoCollection<PcoCheckInsLabel>> getFromEventAndEventLabel(String eventId,String eventLabelId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    var url = '/check-ins/v2/events/$eventId/event_labels/$eventLabelId/label';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLabel>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/labels/$labelId/location_labels/$locationLabelId/label`
  static Future<PcoCollection<PcoCheckInsLabel>> getFromLabelAndLocationLabel(String labelId,String locationLabelId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    var url = '/check-ins/v2/labels/$labelId/location_labels/$locationLabelId/label';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLabel>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/options/$optionId/label`
  static Future<PcoCollection<PcoCheckInsLabel>> getFromOption(String optionId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    var url = '/check-ins/v2/options/$optionId/label';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLabel>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsEventLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels`
  Future<PcoCollection<PcoCheckInsEventLabel>> getEventLabels({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventLabel.canInclude;
    var url = '$apiEndpoint/event_labels';
    return PcoCollection.fromApiCall<PcoCheckInsEventLabel>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocationLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels`
  Future<PcoCollection<PcoCheckInsLocationLabel>> getLocationLabels({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocationLabel.canInclude;
    var url = '$apiEndpoint/location_labels';
    return PcoCollection.fromApiCall<PcoCheckInsLocationLabel>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
