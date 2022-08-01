/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T14:42:03.509665
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `checkedOutAt` -> `?order=checked_out_at`
/// - `createdAt` -> `?order=created_at`
/// - `firstName` -> `?order=first_name`
/// - `lastName` -> `?order=last_name`
/// - `number` -> `?order=number`
/// - `updatedAt` -> `?order=updated_at`
enum PcoCheckInsCheckInOrder {
  checkedOutAt,
  createdAt,
  firstName,
  lastName,
  number,
  updatedAt
}

/// Possible Inbound Filters:
/// - `attendee` -> `?filter=attendee` : -- no description
/// - `checkedOut` -> `?filter=checked_out` : -- no description
/// - `firstTime` -> `?filter=first_time` : -- no description
/// - `guest` -> `?filter=guest` : -- no description
/// - `notOneTimeGuest` -> `?filter=not_one_time_guest` : -- no description
/// - `oneTimeGuest` -> `?filter=one_time_guest` : -- no description
/// - `regular` -> `?filter=regular` : -- no description
/// - `volunteer` -> `?filter=volunteer` : -- no description
enum PcoCheckInsCheckInFilter {
  attendee,
  checkedOut,
  firstTime,
  guest,
  notOneTimeGuest,
  oneTimeGuest,
  regular,
  volunteer
}

/// Creates a [PcoCheckInsCheckInQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeCheckInTimes`: include associated check_in_times
/// - `includeCheckedInAt`: include associated checked_in_at
/// - `includeCheckedInBy`: include associated checked_in_by
/// - `includeCheckedOutBy`: include associated checked_out_by
/// - `includeEvent`: include associated event
/// - `includeEventPeriod`: include associated event_period
/// - `includeEventTimes`: include associated event_times
/// - `includeLocations`: include associated locations
/// - `includeOptions`: include associated options
/// - `includePerson`: include associated person
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCheckInsCheckInQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoCheckInsCheckIn] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereSecurityCode`: query on a specific security_code, example: ?where[security_code]=string
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoCheckInsCheckInOrder.checkedOutAt` : will order by `checked_out_at`
/// - `PcoCheckInsCheckInOrder.createdAt` : will order by `created_at`
/// - `PcoCheckInsCheckInOrder.firstName` : will order by `first_name`
/// - `PcoCheckInsCheckInOrder.lastName` : will order by `last_name`
/// - `PcoCheckInsCheckInOrder.number` : will order by `number`
/// - `PcoCheckInsCheckInOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsCheckInQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsCheckInOrder, String> _orderMap = {
    PcoCheckInsCheckInOrder.checkedOutAt: 'checked_out_at',
    PcoCheckInsCheckInOrder.createdAt: 'created_at',
    PcoCheckInsCheckInOrder.firstName: 'first_name',
    PcoCheckInsCheckInOrder.lastName: 'last_name',
    PcoCheckInsCheckInOrder.number: 'number',
    PcoCheckInsCheckInOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoCheckInsCheckInOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsCheckInFilter, String> _filterMap = {
    PcoCheckInsCheckInFilter.attendee: 'attendee',
    PcoCheckInsCheckInFilter.checkedOut: 'checked_out',
    PcoCheckInsCheckInFilter.firstTime: 'first_time',
    PcoCheckInsCheckInFilter.guest: 'guest',
    PcoCheckInsCheckInFilter.notOneTimeGuest: 'not_one_time_guest',
    PcoCheckInsCheckInFilter.oneTimeGuest: 'one_time_guest',
    PcoCheckInsCheckInFilter.regular: 'regular',
    PcoCheckInsCheckInFilter.volunteer: 'volunteer',
  };
  static String filterString(PcoCheckInsCheckInFilter filter) =>
      _filterMap[filter]!;

  PcoCheckInsCheckInQuery({
    /// include associated check_in_times
    /// when true, adds `?include=check_in_times` to url
    bool includeCheckInTimes = false,

    /// include associated checked_in_at
    /// when true, adds `?include=checked_in_at` to url
    bool includeCheckedInAt = false,

    /// include associated checked_in_by
    /// when true, adds `?include=checked_in_by` to url
    bool includeCheckedInBy = false,

    /// include associated checked_out_by
    /// when true, adds `?include=checked_out_by` to url
    bool includeCheckedOutBy = false,

    /// include associated event
    /// when true, adds `?include=event` to url
    bool includeEvent = false,

    /// include associated event_period
    /// when true, adds `?include=event_period` to url
    bool includeEventPeriod = false,

    /// include associated event_times
    /// when true, adds `?include=event_times` to url
    bool includeEventTimes = false,

    /// include associated locations
    /// when true, adds `?include=locations` to url
    bool includeLocations = false,

    /// include associated options
    /// when true, adds `?include=options` to url
    bool includeOptions = false,

    /// include associated person
    /// when true, adds `?include=person` to url
    bool includePerson = false,

    /// when true, adds `?include=check_in_times,checked_in_at,checked_in_by,checked_out_by,event,event_period,event_times,locations,options,person` to url parameters
    bool includeAll = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `security_code`
    /// query on a specific security_code, url example: ?where[security_code]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereSecurityCode,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoCheckInsCheckInFilter? filterBy,
    PcoCheckInsCheckInOrder? orderBy,

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
    if (filterBy != null) filter.add(filterString(filterBy));
    if (includeAll || includeCheckInTimes) include.add('check_in_times');
    if (includeAll || includeCheckedInAt) include.add('checked_in_at');
    if (includeAll || includeCheckedInBy) include.add('checked_in_by');
    if (includeAll || includeCheckedOutBy) include.add('checked_out_by');
    if (includeAll || includeEvent) include.add('event');
    if (includeAll || includeEventPeriod) include.add('event_period');
    if (includeAll || includeEventTimes) include.add('event_times');
    if (includeAll || includeLocations) include.add('locations');
    if (includeAll || includeOptions) include.add('options');
    if (includeAll || includePerson) include.add('person');

    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereSecurityCode != null)
      where.add(
          PlanningCenterApiWhere.parse('security_code', whereSecurityCode));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO CheckIns CheckIn Object
///
/// - Application:        check-ins
/// - Id:                 check_in
/// - Type:               CheckIn
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/check_ins
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsCheckIn.fromJson()` constructor.
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
/// An attendance record for an event.
///
/// If someone was checked out, `checked_out_at` will be present.
///
/// You can scope check-ins in a few ways:
///
/// - `regular`s, `guest`s, and `volunteer`s correspond to the option selected when checking in.
/// - `attendee`s are `regular`s and `guest`s together.
/// - `one_time_guest`s are check-ins which were created without a corresponding person record.
/// - `not_one_time_guest`s are check-ins which had a corresponding person record when they were created.
/// - `checked_out` are check-ins where `checked_out_at` is present (meaning they were checked out from a station).
/// - `first_time`s are check-ins which are the person's first for a given event. (Label-only visitors are not included here.)
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `firstName` (ro) -> PCO: `first_name`
/// - `lastName` (ro) -> PCO: `last_name`
/// - `medicalNotes` (ro) -> PCO: `medical_notes`
/// - `kind` (ro) -> PCO: `kind`
/// - `number` (ro) -> PCO: `number`
/// - `securityCode` (ro) -> PCO: `security_code`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `checkedOutAt` (ro) -> PCO: `checked_out_at`
/// - `emergencyContactName` (ro) -> PCO: `emergency_contact_name`
/// - `emergencyContactPhoneNumber` (ro) -> PCO: `emergency_contact_phone_number`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `checkingroup-checkin-check_in_group`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group
/// - `checkintime-checkin-check_in_times`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times
/// - `station-checkin-checked_in_at`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_at
/// - `person-checkin-checked_in_by`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_by
/// - `person-checkin-checked_out_by`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_out_by
/// - `event-checkin-event`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event
/// - `eventperiod-checkin-event_period`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period
/// - `eventtime-checkin-event_times`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_times
/// - `location-checkin-locations`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations
/// - `option-checkin-options`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/options
/// - `person-checkin-person`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/person
///
/// Inbound Edges:
/// - `checkin-checkingroup-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/check_ins
/// - `checkin-event-check_ins`: https://api.planningcenteronline.com/check-ins/v2/events/1/check_ins
/// - `checkin-eventperiod-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/check_ins
/// - `checkin-eventtime-check_ins`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/check_ins
/// - `checkin-location-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/check_ins
/// - `checkin-locationeventperiod-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/check_ins
/// - `checkin-locationeventtime-check_ins`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/check_ins
/// - `checkin-organization-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins
/// - `checkin-person-check_ins`: https://api.planningcenteronline.com/check-ins/v2/people/1/check_ins
/// - `checkin-personevent-first_check_in`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/first_check_in
/// - `checkin-personevent-last_check_in`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/last_check_in
/// - `checkin-station-checked_in_at_check_ins`: https://api.planningcenteronline.com/check-ins/v2/stations/1/checked_in_at_check_ins
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "CheckIn",
///   "id": "1",
///   "attributes": {
///     "first_name": "string",
///     "last_name": "string",
///     "medical_notes": "string",
///     "kind": "string",
///     "number": 1,
///     "security_code": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "checked_out_at": "2000-01-01T12:00:00Z",
///     "emergency_contact_name": "string",
///     "emergency_contact_phone_number": "string"
///   },
///   "relationships": {
///     "event_period": {
///       "data": {
///         "type": "EventPeriod",
///         "id": "1"
///       }
///     },
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCheckInsCheckIn extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'CheckIn';
  static const String kTypeId = 'check_in';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/check_ins';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `check_in_times`: include associated check_in_times
  /// - `checked_in_at`: include associated checked_in_at
  /// - `checked_in_by`: include associated checked_in_by
  /// - `checked_out_by`: include associated checked_out_by
  /// - `event`: include associated event
  /// - `event_period`: include associated event_period
  /// - `event_times`: include associated event_times
  /// - `locations`: include associated locations
  /// - `options`: include associated options
  /// - `person`: include associated person
  static List<String> get canInclude => [
        'check_in_times',
        'checked_in_at',
        'checked_in_by',
        'checked_out_by',
        'event',
        'event_period',
        'event_times',
        'locations',
        'options',
        'person'
      ];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `security_code`: (URLParameter), query on a specific security_code, example: ?where[security_code]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery =>
      ['created_at', 'security_code', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `checked_out_at`: (URLParameter), prefix with a hyphen (-checked_out_at) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// - `number`: (URLParameter), prefix with a hyphen (-number) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => [
        'checked_out_at',
        'created_at',
        'first_name',
        'last_name',
        'number',
        'updated_at'
      ];

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
  static const kFirstName = 'first_name';
  static const kLastName = 'last_name';
  static const kMedicalNotes = 'medical_notes';
  static const kKind = 'kind';
  static const kNumber = 'number';
  static const kSecurityCode = 'security_code';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kCheckedOutAt = 'checked_out_at';
  static const kEmergencyContactName = 'emergency_contact_name';
  static const kEmergencyContactPhoneNumber = 'emergency_contact_phone_number';

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
  String get firstName => _attributes[kFirstName] ?? '';
  String get lastName => _attributes[kLastName] ?? '';
  String get medicalNotes => _attributes[kMedicalNotes] ?? '';
  String get kind => _attributes[kKind] ?? '';
  int get number => _attributes[kNumber] ?? 0;
  String get securityCode => _attributes[kSecurityCode] ?? '';
  DateTime get checkedOutAt => DateTime.parse(_attributes[kCheckedOutAt] ?? '');
  String get emergencyContactName => _attributes[kEmergencyContactName] ?? '';
  String get emergencyContactPhoneNumber =>
      _attributes[kEmergencyContactPhoneNumber] ?? '';

  // typed getters for each relationship

  List<PcoCheckInsCheckInTime> get includedCheckInTimes =>
      (relationships['check_in_times'] as List?)
          ?.cast<PcoCheckInsCheckInTime>() ??
      [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedCheckedInAt<T extends PcoResource>() =>
      (relationships['checked_in_at'] as List?)?.cast<T>() ?? [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedCheckedInBy<T extends PcoResource>() =>
      (relationships['checked_in_by'] as List?)?.cast<T>() ?? [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedCheckedOutBy<T extends PcoResource>() =>
      (relationships['checked_out_by'] as List?)?.cast<T>() ?? [];

  PcoCheckInsEvent? get includedEvent =>
      _firstOrNull<PcoCheckInsEvent>(relationships['event']);
  PcoCheckInsEventPeriod? get includedEventPeriod =>
      _firstOrNull<PcoCheckInsEventPeriod>(relationships['event_period']);
  List<PcoCheckInsEventTime> get includedEventTimes =>
      (relationships['event_times'] as List?)?.cast<PcoCheckInsEventTime>() ??
      [];
  List<PcoCheckInsLocation> get includedLocations =>
      (relationships['locations'] as List?)?.cast<PcoCheckInsLocation>() ?? [];
  List<PcoCheckInsOption> get includedOptions =>
      (relationships['options'] as List?)?.cast<PcoCheckInsOption>() ?? [];
  PcoCheckInsPerson? get includedPerson =>
      _firstOrNull<PcoCheckInsPerson>(relationships['person']);

  // Class Constructors
  PcoCheckInsCheckIn.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsCheckIn.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsCheckIn] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoCheckInsCheckIn(
      {String? id,
      String? firstName,
      String? lastName,
      String? medicalNotes,
      String? kind,
      int? number,
      String? securityCode,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? checkedOutAt,
      String? emergencyContactName,
      String? emergencyContactPhoneNumber,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsCheckIn.empty();
    obj._id = id;
    if (firstName != null) obj._attributes['first_name'] = firstName;
    if (lastName != null) obj._attributes['last_name'] = lastName;
    if (medicalNotes != null) obj._attributes['medical_notes'] = medicalNotes;
    if (kind != null) obj._attributes['kind'] = kind;
    if (number != null) obj._attributes['number'] = number;
    if (securityCode != null) obj._attributes['security_code'] = securityCode;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (checkedOutAt != null)
      obj._attributes['checked_out_at'] = checkedOutAt.toIso8601String();
    if (emergencyContactName != null)
      obj._attributes['emergency_contact_name'] = emergencyContactName;
    if (emergencyContactPhoneNumber != null)
      obj._attributes['emergency_contact_phone_number'] =
          emergencyContactPhoneNumber;

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

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins`
  ///
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
  /// - `not_one_time_guest`
  /// - `one_time_guest`
  /// - `regular`
  /// - `volunteer`
  static Future<PcoCollection<PcoCheckInsCheckIn>> get({
    String? id,
    PcoCheckInsCheckInQuery? query,
    bool includeAll = false,
    bool includeCheckInTimes = false,
    bool includeCheckedInAt = false,
    bool includeCheckedInBy = false,
    bool includeCheckedOutBy = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeEventTimes = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includePerson = false,
  }) async {
    query ??= PcoCheckInsCheckInQuery();
    if (includeAll) query.include.addAll(PcoCheckInsCheckIn.canInclude);
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
    var url = '/check-ins/v2/check_ins';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/check_ins`
  static Future<PcoCollection<PcoCheckInsCheckIn>>
      getFromCheckInAndCheckInGroup(
    String checkInId,
    String checkInGroupId, {
    String? id,
    PcoCheckInsCheckInQuery? query,
    bool includeAll = false,
    bool includeCheckInTimes = false,
    bool includeCheckedInAt = false,
    bool includeCheckedInBy = false,
    bool includeCheckedOutBy = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeEventTimes = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includePerson = false,
  }) async {
    query ??= PcoCheckInsCheckInQuery();
    if (includeAll) query.include.addAll(PcoCheckInsCheckIn.canInclude);
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
    var url =
        '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/check_ins';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/check_ins`
  ///
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
  /// - `not_one_time_guest`
  /// - `one_time_guest`
  /// - `regular`
  /// - `volunteer`
  static Future<PcoCollection<PcoCheckInsCheckIn>> getFromEvent(
    String eventId, {
    String? id,
    PcoCheckInsCheckInQuery? query,
    bool includeAll = false,
    bool includeCheckInTimes = false,
    bool includeCheckedInAt = false,
    bool includeCheckedInBy = false,
    bool includeCheckedOutBy = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeEventTimes = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includePerson = false,
  }) async {
    query ??= PcoCheckInsCheckInQuery();
    if (includeAll) query.include.addAll(PcoCheckInsCheckIn.canInclude);
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
    var url = '/check-ins/v2/events/$eventId/check_ins';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/check_ins`
  ///
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
  /// - `not_checked_out`
  /// - `not_one_time_guest`
  /// - `one_time_guest`
  /// - `regular`
  /// - `volunteer`
  static Future<PcoCollection<PcoCheckInsCheckIn>> getFromCheckInAndEventPeriod(
    String checkInId,
    String eventPeriodId, {
    String? id,
    PcoCheckInsCheckInQuery? query,
    bool includeAll = false,
    bool includeCheckInTimes = false,
    bool includeCheckedInAt = false,
    bool includeCheckedInBy = false,
    bool includeCheckedOutBy = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeEventTimes = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includePerson = false,
  }) async {
    query ??= PcoCheckInsCheckInQuery();
    if (includeAll) query.include.addAll(PcoCheckInsCheckIn.canInclude);
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
    var url =
        '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/check_ins';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/event_times/$eventTimeId/check_ins`
  ///
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
  /// - `not_one_time_guest`
  /// - `one_time_guest`
  /// - `regular`
  /// - `volunteer`
  static Future<PcoCollection<PcoCheckInsCheckIn>> getFromEventTime(
    String eventTimeId, {
    String? id,
    PcoCheckInsCheckInQuery? query,
    bool includeAll = false,
    bool includeCheckInTimes = false,
    bool includeCheckedInAt = false,
    bool includeCheckedInBy = false,
    bool includeCheckedOutBy = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeEventTimes = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includePerson = false,
  }) async {
    query ??= PcoCheckInsCheckInQuery();
    if (includeAll) query.include.addAll(PcoCheckInsCheckIn.canInclude);
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
    var url = '/check-ins/v2/event_times/$eventTimeId/check_ins';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/locations/$locationId/check_ins`
  ///
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
  /// - `not_one_time_guest`
  /// - `one_time_guest`
  /// - `regular`
  /// - `volunteer`
  static Future<PcoCollection<PcoCheckInsCheckIn>> getFromCheckInAndLocation(
    String checkInId,
    String locationId, {
    String? id,
    PcoCheckInsCheckInQuery? query,
    bool includeAll = false,
    bool includeCheckInTimes = false,
    bool includeCheckedInAt = false,
    bool includeCheckedInBy = false,
    bool includeCheckedOutBy = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeEventTimes = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includePerson = false,
  }) async {
    query ??= PcoCheckInsCheckInQuery();
    if (includeAll) query.include.addAll(PcoCheckInsCheckIn.canInclude);
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
    var url =
        '/check-ins/v2/check_ins/$checkInId/locations/$locationId/check_ins';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/check_ins`
  ///
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
  /// - `not_one_time_guest`
  /// - `one_time_guest`
  /// - `regular`
  /// - `volunteer`
  static Future<PcoCollection<PcoCheckInsCheckIn>>
      getFromCheckInAndEventPeriodAndLocationEventPeriod(
    String checkInId,
    String eventPeriodId,
    String locationEventPeriodId, {
    String? id,
    PcoCheckInsCheckInQuery? query,
    bool includeAll = false,
    bool includeCheckInTimes = false,
    bool includeCheckedInAt = false,
    bool includeCheckedInBy = false,
    bool includeCheckedOutBy = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeEventTimes = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includePerson = false,
  }) async {
    query ??= PcoCheckInsCheckInQuery();
    if (includeAll) query.include.addAll(PcoCheckInsCheckIn.canInclude);
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
    var url =
        '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/check_ins';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/event_times/$eventTimeId/location_event_times/$locationEventTimeId/check_ins`
  ///
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
  /// - `not_one_time_guest`
  /// - `one_time_guest`
  /// - `regular`
  /// - `volunteer`
  static Future<PcoCollection<PcoCheckInsCheckIn>>
      getFromEventTimeAndLocationEventTime(
    String eventTimeId,
    String locationEventTimeId, {
    String? id,
    PcoCheckInsCheckInQuery? query,
    bool includeAll = false,
    bool includeCheckInTimes = false,
    bool includeCheckedInAt = false,
    bool includeCheckedInBy = false,
    bool includeCheckedOutBy = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeEventTimes = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includePerson = false,
  }) async {
    query ??= PcoCheckInsCheckInQuery();
    if (includeAll) query.include.addAll(PcoCheckInsCheckIn.canInclude);
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
    var url =
        '/check-ins/v2/event_times/$eventTimeId/location_event_times/$locationEventTimeId/check_ins';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/people/$personId/check_ins`
  ///
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
  /// - `not_one_time_guest`
  /// - `one_time_guest`
  /// - `regular`
  /// - `volunteer`
  static Future<PcoCollection<PcoCheckInsCheckIn>> getFromPerson(
    String personId, {
    String? id,
    PcoCheckInsCheckInQuery? query,
    bool includeAll = false,
    bool includeCheckInTimes = false,
    bool includeCheckedInAt = false,
    bool includeCheckedInBy = false,
    bool includeCheckedOutBy = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeEventTimes = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includePerson = false,
  }) async {
    query ??= PcoCheckInsCheckInQuery();
    if (includeAll) query.include.addAll(PcoCheckInsCheckIn.canInclude);
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
    var url = '/check-ins/v2/people/$personId/check_ins';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting one)
  /// using a path like this: `/check-ins/v2/events/$eventId/person_events/$personEventId/first_check_in`
  static Future<PcoCollection<PcoCheckInsCheckIn>>
      getFirstCheckInFromEventAndPersonEvent(
    String eventId,
    String personEventId, {
    PcoCheckInsCheckInQuery? query,
    bool includeAll = false,
    bool includeCheckInTimes = false,
    bool includeCheckedInAt = false,
    bool includeCheckedInBy = false,
    bool includeCheckedOutBy = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeEventTimes = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includePerson = false,
  }) async {
    query ??= PcoCheckInsCheckInQuery();
    if (includeAll) query.include.addAll(PcoCheckInsCheckIn.canInclude);
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
    var url =
        '/check-ins/v2/events/$eventId/person_events/$personEventId/first_check_in';

    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting one)
  /// using a path like this: `/check-ins/v2/events/$eventId/person_events/$personEventId/last_check_in`
  static Future<PcoCollection<PcoCheckInsCheckIn>>
      getLastCheckInFromEventAndPersonEvent(
    String eventId,
    String personEventId, {
    PcoCheckInsCheckInQuery? query,
    bool includeAll = false,
    bool includeCheckInTimes = false,
    bool includeCheckedInAt = false,
    bool includeCheckedInBy = false,
    bool includeCheckedOutBy = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeEventTimes = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includePerson = false,
  }) async {
    query ??= PcoCheckInsCheckInQuery();
    if (includeAll) query.include.addAll(PcoCheckInsCheckIn.canInclude);
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
    var url =
        '/check-ins/v2/events/$eventId/person_events/$personEventId/last_check_in';

    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting one)
  /// using a path like this: `/check-ins/v2/stations/$stationId/checked_in_at_check_ins`
  ///
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
  /// - `not_one_time_guest`
  /// - `one_time_guest`
  /// - `regular`
  /// - `volunteer`
  static Future<PcoCollection<PcoCheckInsCheckIn>>
      getCheckedInAtCheckInsFromStation(
    String stationId, {
    PcoCheckInsCheckInQuery? query,
    bool includeAll = false,
    bool includeCheckInTimes = false,
    bool includeCheckedInAt = false,
    bool includeCheckedInBy = false,
    bool includeCheckedOutBy = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeEventTimes = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includePerson = false,
  }) async {
    query ??= PcoCheckInsCheckInQuery();
    if (includeAll) query.include.addAll(PcoCheckInsCheckIn.canInclude);
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
    var url = '/check-ins/v2/stations/$stationId/checked_in_at_check_ins';

    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsCheckInGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group`
  Future<PcoCollection<PcoCheckInsCheckInGroup>> getCheckInGroup(
      {PcoCheckInsCheckInGroupQuery? query}) async {
    query ??= PcoCheckInsCheckInGroupQuery();
    var url = '$apiEndpoint/check_in_group';
    return PcoCollection.fromApiCall<PcoCheckInsCheckInGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckInTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times`
  Future<PcoCollection<PcoCheckInsCheckInTime>> getCheckInTimes(
      {PcoCheckInsCheckInTimeQuery? query}) async {
    query ??= PcoCheckInsCheckInTimeQuery();
    var url = '$apiEndpoint/check_in_times';
    return PcoCollection.fromApiCall<PcoCheckInsCheckInTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_at`
  Future<PcoCollection<PcoCheckInsStation>> getCheckedInAt(
      {PcoCheckInsStationQuery? query}) async {
    query ??= PcoCheckInsStationQuery();
    var url = '$apiEndpoint/checked_in_at';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_by`
  Future<PcoCollection<PcoCheckInsPerson>> getCheckedInBy(
      {PcoCheckInsPersonQuery? query}) async {
    query ??= PcoCheckInsPersonQuery();
    var url = '$apiEndpoint/checked_in_by';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_out_by`
  Future<PcoCollection<PcoCheckInsPerson>> getCheckedOutBy(
      {PcoCheckInsPersonQuery? query}) async {
    query ??= PcoCheckInsPersonQuery();
    var url = '$apiEndpoint/checked_out_by';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event`
  Future<PcoCollection<PcoCheckInsEvent>> getEvent(
      {PcoCheckInsEventQuery? query}) async {
    query ??= PcoCheckInsEventQuery();
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventPeriod] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period`
  Future<PcoCollection<PcoCheckInsEventPeriod>> getEventPeriod(
      {PcoCheckInsEventPeriodQuery? query}) async {
    query ??= PcoCheckInsEventPeriodQuery();
    var url = '$apiEndpoint/event_period';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_times`
  Future<PcoCollection<PcoCheckInsEventTime>> getEventTimes(
      {PcoCheckInsEventTimeQuery? query}) async {
    query ??= PcoCheckInsEventTimeQuery();
    var url = '$apiEndpoint/event_times';
    return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations`
  Future<PcoCollection<PcoCheckInsLocation>> getLocations(
      {PcoCheckInsLocationQuery? query}) async {
    query ??= PcoCheckInsLocationQuery();
    var url = '$apiEndpoint/locations';
    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/options`
  Future<PcoCollection<PcoCheckInsOption>> getOptions(
      {PcoCheckInsOptionQuery? query}) async {
    query ??= PcoCheckInsOptionQuery();
    var url = '$apiEndpoint/options';
    return PcoCollection.fromApiCall<PcoCheckInsOption>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/person`
  Future<PcoCollection<PcoCheckInsPerson>> getPerson(
      {PcoCheckInsPersonQuery? query}) async {
    query ??= PcoCheckInsPersonQuery();
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
