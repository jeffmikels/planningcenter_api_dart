/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:22.791809
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Ordering is not allowed on this object.
enum PcoCheckInsPersonEventOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsPersonEventFilter { none }

/// Creates a [PcoCheckInsPersonEventQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
/// 
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeEvent`: include associated event 
/// - `includeFirstCheckIn`: include associated first_check_in 
/// - `includeLastCheckIn`: include associated last_check_in 
/// - `includePerson`: include associated person 
/// - `includeAll`: include all related objects
/// 
/// Alternatively, you may pass a list of strings to the `include` argument.
/// 
/// e.g. `PcoCheckInsPersonEventQuery(includes: ['a', 'b'])`
/// 
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsPersonEventQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsPersonEventOrder, String> _orderMap = {
    
  };
  static String orderString(PcoCheckInsPersonEventOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsPersonEventFilter, String> _filterMap = {
    
  };
  static String filterString(PcoCheckInsPersonEventFilter filter) => _filterMap[filter]!;

  PcoCheckInsPersonEventQuery({
    /// include associated event
    /// when true, adds `?include=event` to url
    bool includeEvent = false,
    
    /// include associated first_check_in
    /// when true, adds `?include=first_check_in` to url
    bool includeFirstCheckIn = false,
    
    /// include associated last_check_in
    /// when true, adds `?include=last_check_in` to url
    bool includeLastCheckIn = false,
    
    /// include associated person
    /// when true, adds `?include=person` to url
    bool includePerson = false,
    
    /// when true, adds `?include=event,first_check_in,last_check_in,person` to url parameters
    bool includeAll = false,




    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super() {
    if (includeAll || includeEvent) include.add('event');
    if (includeAll || includeFirstCheckIn) include.add('first_check_in');
    if (includeAll || includeLastCheckIn) include.add('last_check_in');
    if (includeAll || includePerson) include.add('person');}
}

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
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedFirstCheckIn<T extends PcoResource>() => (relationships['first_check_in'] as List?)?.cast<T>() ?? [];
  
  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
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
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
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
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsPersonEvent>> getFromEvent(String eventId, {String? id, PcoCheckInsPersonEventQuery? query, bool includeAll = false, bool includeEvent = false, bool includeFirstCheckIn = false, bool includeLastCheckIn = false, bool includePerson = false,}) async {
    query ??= PcoCheckInsPersonEventQuery();
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
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsPersonEvent>> getFromPerson(String personId, {String? id, PcoCheckInsPersonEventQuery? query, bool includeAll = false, bool includeEvent = false, bool includeFirstCheckIn = false, bool includeLastCheckIn = false, bool includePerson = false,}) async {
    query ??= PcoCheckInsPersonEventQuery();
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
  Future<PcoCollection<PcoCheckInsEvent>> getEvent({PcoCheckInsEventQuery? query}) async {
    query ??= PcoCheckInsEventQuery();
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/first_check_in`
  Future<PcoCollection<PcoCheckInsCheckIn>> getFirstCheckIn({PcoCheckInsCheckInQuery? query}) async {
    query ??= PcoCheckInsCheckInQuery();
    var url = '$apiEndpoint/first_check_in';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/last_check_in`
  Future<PcoCollection<PcoCheckInsCheckIn>> getLastCheckIn({PcoCheckInsCheckInQuery? query}) async {
    query ??= PcoCheckInsCheckInQuery();
    var url = '$apiEndpoint/last_check_in';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/person`
  Future<PcoCollection<PcoCheckInsPerson>> getPerson({PcoCheckInsPersonQuery? query}) async {
    query ??= PcoCheckInsPersonQuery();
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
