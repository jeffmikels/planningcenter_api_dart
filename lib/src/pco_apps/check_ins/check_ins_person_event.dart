/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.658162
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// This class represents a PCO CheckIns PersonEvent Object
/// 
/// - Application:        check-ins
/// - Id:                 person_event
/// - Type:               PersonEvent
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/events/1/person_events
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsPersonEvent.fromJson()` constructor.
/// - Manually create an object using the `PcoCheckInsPersonEvent.manual()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
/// 
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
///   
/// ## Description
/// Counts a person's attendence for a given event.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `checkInCount` (ro) -> PCO: `check_in_count`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `createdAt` (ro) -> PCO: `created_at`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `event`: include associated event 
/// - `first_check_in`: include associated first_check_in 
/// - `last_check_in`: include associated last_check_in 
/// - `person`: include associated person 
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
/// - `event-personevent-event`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/event
/// - `checkin-personevent-first_check_in`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/first_check_in
/// - `checkin-personevent-last_check_in`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/last_check_in
/// - `person-personevent-person`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/person
/// 
/// Inbound Edges:
/// - `personevent-event-person_events`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events
/// - `personevent-person-person_events`: https://api.planningcenteronline.com/check-ins/v2/people/1/person_events
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PersonEvent",
///   "id": "1",
///   "attributes": {
///     "check_in_count": 1,
///     "updated_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCheckInsPersonEvent extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'PersonEvent';
  static const String kTypeId = 'person_event';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/events/1/person_events';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event 
  /// - `first_check_in`: include associated first_check_in 
  /// - `last_check_in`: include associated last_check_in 
  /// - `person`: include associated person 
  static List<String> get canInclude => ['event','first_check_in','last_check_in','person'];

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
  static const kCheckInCount = 'check_in_count';
  static const kUpdatedAt = 'updated_at';
  static const kCreatedAt = 'created_at';


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
  int get checkInCount => _attributes[kCheckInCount] ?? 0;
  
  // typed getters for each relationship
  
  PcoCheckInsEvent? get includedEvent => _firstOrNull<PcoCheckInsEvent>(relationships['event']);
  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it here.
  List<T> includedFirstCheckIn<T extends PcoResource>() => (relationships['first_check_in'] as List?)?.cast<T>() ?? [];
  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it here.
  List<T> includedLastCheckIn<T extends PcoResource>() => (relationships['last_check_in'] as List?)?.cast<T>() ?? [];
  PcoCheckInsPerson? get includedPerson => _firstOrNull<PcoCheckInsPerson>(relationships['person']);

  // Class Constructors
  PcoCheckInsPersonEvent.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsPersonEvent.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsPersonEvent] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoCheckInsPersonEvent({String? id, int? checkInCount, DateTime? updatedAt, DateTime? createdAt, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoCheckInsPersonEvent.empty();
    obj._id = id;
    if (checkInCount != null) obj._attributes['check_in_count'] = checkInCount;
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();
    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }
    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }
    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class



  /// Will get a collection of [PcoCheckInsPersonEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/person_events`
  static Future<PcoCollection<PcoCheckInsPersonEvent>> getFromEvent(String eventId, {String? id, PlanningCenterApiQuery? query, bool includeAll = false, bool includeEvent = false, bool includeFirstCheckIn = false, bool includeLastCheckIn = false, bool includePerson = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsPersonEvent.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeFirstCheckIn) query.include.add('first_check_in');
    if (includeLastCheckIn) query.include.add('last_check_in');
    if (includePerson) query.include.add('person');
    var url = '/check-ins/v2/events/$eventId/person_events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPersonEvent>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCheckInsPersonEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/people/$personId/person_events`
  static Future<PcoCollection<PcoCheckInsPersonEvent>> getFromPerson(String personId, {String? id, PlanningCenterApiQuery? query, bool includeAll = false, bool includeEvent = false, bool includeFirstCheckIn = false, bool includeLastCheckIn = false, bool includePerson = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsPersonEvent.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeFirstCheckIn) query.include.add('first_check_in');
    if (includeLastCheckIn) query.include.add('last_check_in');
    if (includePerson) query.include.add('person');
    var url = '/check-ins/v2/people/$personId/person_events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPersonEvent>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/event`
  Future<PcoCollection<PcoCheckInsEvent>> getEvent({PlanningCenterApiQuery? query, bool includeAll = false, bool includeAttendanceTypes = false, bool includeEventPeriods = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsPersonEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/first_check_in`
  Future<PcoCollection<PcoCheckInsCheckIn>> getFirstCheckIn({PlanningCenterApiQuery? query, bool includeAll = false, bool includeCheckInTimes = false, bool includeCheckedInAt = false, bool includeCheckedInBy = false, bool includeCheckedOutBy = false, bool includeEvent = false, bool includeEventPeriod = false, bool includeEventTimes = false, bool includeLocations = false, bool includeOptions = false, bool includePerson = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsPersonEvent.canInclude);
    if (includeCheckInTimes) query.include.add('check_in_times');
    if (includeCheckedInAt) query.include.add('checked_in_at');
    if (includeCheckedInBy) query.include.add('checked_in_by');
    if (includeCheckedOutBy) query.include.add('checked_out_by');
    if (includeEvent) query.include.add('event');
    if (includeEventPeriod) query.include.add('event_period');
    if (includeEventTimes) query.include.add('event_times');
    if (includeLocations) query.include.add('locations');
    if (includeOptions) query.include.add('options');
    if (includePerson) query.include.add('person');
    var url = '$apiEndpoint/first_check_in';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/last_check_in`
  Future<PcoCollection<PcoCheckInsCheckIn>> getLastCheckIn({PlanningCenterApiQuery? query, bool includeAll = false, bool includeCheckInTimes = false, bool includeCheckedInAt = false, bool includeCheckedInBy = false, bool includeCheckedOutBy = false, bool includeEvent = false, bool includeEventPeriod = false, bool includeEventTimes = false, bool includeLocations = false, bool includeOptions = false, bool includePerson = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsPersonEvent.canInclude);
    if (includeCheckInTimes) query.include.add('check_in_times');
    if (includeCheckedInAt) query.include.add('checked_in_at');
    if (includeCheckedInBy) query.include.add('checked_in_by');
    if (includeCheckedOutBy) query.include.add('checked_out_by');
    if (includeEvent) query.include.add('event');
    if (includeEventPeriod) query.include.add('event_period');
    if (includeEventTimes) query.include.add('event_times');
    if (includeLocations) query.include.add('locations');
    if (includeOptions) query.include.add('options');
    if (includePerson) query.include.add('person');
    var url = '$apiEndpoint/last_check_in';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/person`
  Future<PcoCollection<PcoCheckInsPerson>> getPerson({PlanningCenterApiQuery? query, bool includeOrganization = false,}) async {
    query ??= PlanningCenterApiQuery();
    
    if (includeOrganization) query.include.add('organization');
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
