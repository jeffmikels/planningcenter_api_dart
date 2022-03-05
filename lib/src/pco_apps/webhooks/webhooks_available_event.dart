/// This file was generated on 2022-03-04T20:00:54.072579


import '../../pco.dart';

/// This class represents a PCO Webhooks AvailableEvent Object
/// 
/// - Application:        webhooks
/// - Id:                 available_event
/// - Type:               AvailableEvent
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/webhooks/v2/available_events
/// 
/// Description:
/// An event supported by webhooks
/// 
/// Example:
/// ```json
/// {
///   "type": "AvailableEvent",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "app": "string",
///     "version": "string",
///     "type": "string",
///     "resource": "string",
///     "action": "string"
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
/// NONE
/// 
/// All Inbound Edges:
/// - `availableevent-organization-available_events`: https://api.planningcenteronline.com/webhooks/v2/available_events
/// 
/// All Actions:
/// NONE
///
class PcoWebhooksAvailableEvent extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'AvailableEvent';
  static const String kTypeId = 'available_event';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'availableevent-organization-available_events';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/available_events';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/available_events';

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
  static const kName = 'name';
  static const kApp = 'app';
  static const kVersion = 'version';
  static const kType = 'type';
  static const kResource = 'resource';
  static const kAction = 'action';


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
  String get app => attributes[kApp] ?? '';
  String get version => attributes[kVersion] ?? '';
  String get type => attributes[kType] ?? '';
  String get resource => attributes[kResource] ?? '';
  String get action => attributes[kAction] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoWebhooksAvailableEvent() : super(kPcoApplication, kTypeString);
  PcoWebhooksAvailableEvent.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoWebhooksAvailableEvent] objects (expecting many)
  /// using a path like this: `/webhooks/v2/available_events`
  static Future<PcoCollection<PcoWebhooksAvailableEvent>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksAvailableEvent.canInclude;
    var url = '/webhooks/v2/available_events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoWebhooksAvailableEvent>(url, query: query, apiVersion:kApiVersion);
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
