/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:14.889094
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO CheckIns EventLabel Object
///
/// - Application:        check-ins
/// - Id:                 event_label
/// - Type:               EventLabel
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsEventLabel.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
/// ## Description
/// Says how many of a given label to print for this event and
/// whether to print it for regulars, guests, and/or volunteers.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `quantity` (ro) -> PCO: `quantity`
/// - `isForRegular` (ro) -> PCO: `for_regular`
/// - `isForGuest` (ro) -> PCO: `for_guest`
/// - `isForVolunteer` (ro) -> PCO: `for_volunteer`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `event`: include associated event
/// - `label`: include associated label
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
/// - `event-eventlabel-event`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/event
/// - `label-eventlabel-label`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label
///
/// Inbound Edges:
/// - `eventlabel-event-event_labels`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels
/// - `eventlabel-label-event_labels`: https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoCheckInsEventLabel extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'EventLabel';
  static const String kTypeId = 'event_label';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event
  /// - `label`: include associated label
  static List<String> get canInclude => ['event', 'label'];

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
  int get quantity => _attributes[kQuantity] ?? 0;
  bool get isForRegular => _attributes[kForRegular] == true;
  bool get isForGuest => _attributes[kForGuest] == true;
  bool get isForVolunteer => _attributes[kForVolunteer] == true;

  // typed getters for each relationship

  List<PcoCheckInsEvent> get includedEvent =>
      (relationships['event'] as List?)?.cast<PcoCheckInsEvent>() ?? [];
  List<PcoCheckInsLabel> get includedLabel =>
      (relationships['label'] as List?)?.cast<PcoCheckInsLabel>() ?? [];

  // Class Constructors
  PcoCheckInsEventLabel.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoCheckInsEventLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/event_labels`
  static Future<PcoCollection<PcoCheckInsEventLabel>> getFromEvent(
    String eventId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLabel = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsEventLabel.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLabel) query.include.add('label');
    var url = '/check-ins/v2/events/$eventId/event_labels';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventLabel>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/labels/$labelId/event_labels`
  static Future<PcoCollection<PcoCheckInsEventLabel>> getFromLabel(
    String labelId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLabel = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsEventLabel.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLabel) query.include.add('label');
    var url = '/check-ins/v2/labels/$labelId/event_labels';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventLabel>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/event`
  Future<PcoCollection<PcoCheckInsEvent>> getEvent({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsEventLabel.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label`
  Future<PcoCollection<PcoCheckInsLabel>> getLabel({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/label';
    return PcoCollection.fromApiCall<PcoCheckInsLabel>(url,
        query: query, apiVersion: apiVersion);
  }
}
