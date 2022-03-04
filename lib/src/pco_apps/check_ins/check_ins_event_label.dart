/// This file was generated on 2022-03-04T15:29:14.151873


import '../../pco.dart';

/// This class represents a PCO CheckIns EventLabel Object
/// 
/// - Application:        check-ins
/// - Id:                 event_label
/// - Type:               EventLabel
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels
/// 
/// Description:
/// Says how many of a given label to print for this event and
/// whether to print it for regulars, guests, and/or volunteers.
/// 
/// Example:
/// ```json
/// {
///   "type": "EventLabel",
///   "id": "1",
///   "attributes": {
///     "quantity": 1,
///     "for_regular": true,
///     "for_guest": true,
///     "for_volunteer": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - event: include associated event 
/// - label: include associated label 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `event-eventlabel-event`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/event
/// - `label-eventlabel-label`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label
/// 
/// All Inbound Edges:
/// - `eventlabel-event-event_labels`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels
/// - `eventlabel-label-event_labels`: https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels
/// 
/// All Actions:
/// NONE
///
class PcoCheckInsEventLabel extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'EventLabel';
  static const String kTypeId = 'event_label';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'eventlabel-label-event_labels';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event 
  /// - `label`: include associated label 
  static List<String> get canInclude => ['event','label'];

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
  static const kQuantity = 'quantity';
  static const kForRegular = 'for_regular';
  static const kForGuest = 'for_guest';
  static const kForVolunteer = 'for_volunteer';
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

  int get quantity => attributes[kQuantity] ?? 0;
  bool get isForRegular => attributes[kForRegular] == true;
  bool get isForGuest => attributes[kForGuest] == true;
  bool get isForVolunteer => attributes[kForVolunteer] == true;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoCheckInsEventLabel() : super(kPcoApplication, kTypeString);
  PcoCheckInsEventLabel.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCheckInsEventLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/event_labels`
  static Future<PcoCollection<PcoCheckInsEventLabel>> getFromEvent(String eventId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventLabel.canInclude;
    var url = '/check-ins/v2/events/$eventId/event_labels';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventLabel>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCheckInsEventLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/labels/$labelId/event_labels`
  static Future<PcoCollection<PcoCheckInsEventLabel>> getFromLabel(String labelId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventLabel.canInclude;
    var url = '/check-ins/v2/labels/$labelId/event_labels';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventLabel>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/event`
  Future<PcoCollection<PcoCheckInsEvent>> getEvent({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label`
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
