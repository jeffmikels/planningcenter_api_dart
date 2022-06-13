/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:58:55.822595
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

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
/// - Create Endpoint:    NONE
///
/// ## Description
/// An event supported by webhooks
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `app` (ro) -> PCO: `app`
/// - `version` (ro) -> PCO: `version`
/// - `type` (ro) -> PCO: `type`
/// - `resource` (ro) -> PCO: `resource`
/// - `action` (ro) -> PCO: `action`
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
/// NONE
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// NONE
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `availableevent-organization-available_events`: https://api.planningcenteronline.com/webhooks/v2/available_events
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoWebhooksAvailableEvent extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'AvailableEvent';
  static const String kTypeId = 'available_event';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/webhooks/v2/available_events';
  static const String kCreatePathTemplate = 'null';

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

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  // Class Constructors
  PcoWebhooksAvailableEvent.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoWebhooksAvailableEvent.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoWebhooksAvailableEvent] objects (expecting many)
  /// using a path like this: `/webhooks/v2/available_events`
  static Future<PcoCollection<PcoWebhooksAvailableEvent>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksAvailableEvent.canInclude;
    var url = '/webhooks/v2/available_events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoWebhooksAvailableEvent>(url,
        query: query, apiVersion: kApiVersion);
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
