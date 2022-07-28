/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.638162
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO CheckIns Location Object
///
/// - Application:        check-ins
/// - Id:                 location
/// - Type:               Location
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsLocation.fromJson()` constructor.
/// - Manually create an object using the `PcoCheckInsLocation.manual()` constructor.
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
/// A place where people may check in to for a given event.
/// Some locations have `kind="Folder"`, which means that people
/// can't check-in here, but this location contains other locations.
/// You can get its contents from the `locations` attribute.
/// You can get a location's parent folder from the `parent` attribute.
/// (If it's not in a folder, `parent` will be empty.)
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `kind` (ro) -> PCO: `kind`
/// - `isOpened` (ro) -> PCO: `opened`
/// - `questions` (ro) -> PCO: `questions`
/// - `ageMinInMonths` (ro) -> PCO: `age_min_in_months`
/// - `ageMaxInMonths` (ro) -> PCO: `age_max_in_months`
/// - `ageRangeBy` (ro) -> PCO: `age_range_by`
/// - `ageOn` (ro) -> PCO: `age_on`
/// - `childOrAdult` (ro) -> PCO: `child_or_adult`
/// - `effectiveDate` (ro) -> PCO: `effective_date`
/// - `gender` (ro) -> PCO: `gender`
/// - `gradeMin` (ro) -> PCO: `grade_min`
/// - `gradeMax` (ro) -> PCO: `grade_max`
/// - `maxOccupancy` (ro) -> PCO: `max_occupancy`
/// - `minVolunteers` (ro) -> PCO: `min_volunteers`
/// - `attendeesPerVolunteer` (ro) -> PCO: `attendees_per_volunteer`
/// - `position` (ro) -> PCO: `position`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `createdAt` (ro) -> PCO: `created_at`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `event`: include associated event
/// - `locations`: include associated locations
/// - `options`: include associated options
/// - `parent`: include associated parent
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
/// - `kind`: (URLParameter), prefix with a hyphen (-kind) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `checkin-location-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/check_ins
/// - `event-location-event`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/event
/// - `locationeventperiod-location-location_event_periods`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_periods
/// - `locationeventtime-location-location_event_times`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_times
/// - `locationlabel-location-location_labels`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_labels
/// - `location-location-locations`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/locations
/// - `option-location-options`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/options
/// - `location-location-parent`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/parent
///
/// Inbound Edges:
/// - `location-checkin-locations`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations
/// - `location-event-locations`: https://api.planningcenteronline.com/check-ins/v2/events/1/locations
/// - `location-eventtime-available_locations`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/available_locations
/// - `location-locationeventperiod-location`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/location
/// - `location-locationeventtime-location`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/location
/// - `location-locationlabel-location`: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/location
/// - `location-location-locations`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/locations
/// - `location-location-parent`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/parent
/// - `location-station-location`: https://api.planningcenteronline.com/check-ins/v2/stations/1/location
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Location",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "kind": "string",
///     "opened": true,
///     "questions": "string",
///     "age_min_in_months": 1,
///     "age_max_in_months": 1,
///     "age_range_by": "string",
///     "age_on": "2000-01-01",
///     "child_or_adult": "string",
///     "effective_date": "2000-01-01",
///     "gender": "string",
///     "grade_min": 1,
///     "grade_max": 1,
///     "max_occupancy": 1,
///     "min_volunteers": 1,
///     "attendees_per_volunteer": 1,
///     "position": 1,
///     "updated_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "parent": {
///       "data": {
///         "type": "Parent",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCheckInsLocation extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Location';
  static const String kTypeId = 'location';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event
  /// - `locations`: include associated locations
  /// - `options`: include associated options
  /// - `parent`: include associated parent
  static List<String> get canInclude =>
      ['event', 'locations', 'options', 'parent'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `kind`: (URLParameter), prefix with a hyphen (-kind) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['kind', 'name'];

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
  static const kKind = 'kind';
  static const kOpened = 'opened';
  static const kQuestions = 'questions';
  static const kAgeMinInMonths = 'age_min_in_months';
  static const kAgeMaxInMonths = 'age_max_in_months';
  static const kAgeRangeBy = 'age_range_by';
  static const kAgeOn = 'age_on';
  static const kChildOrAdult = 'child_or_adult';
  static const kEffectiveDate = 'effective_date';
  static const kGender = 'gender';
  static const kGradeMin = 'grade_min';
  static const kGradeMax = 'grade_max';
  static const kMaxOccupancy = 'max_occupancy';
  static const kMinVolunteers = 'min_volunteers';
  static const kAttendeesPerVolunteer = 'attendees_per_volunteer';
  static const kPosition = 'position';
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
  String get name => _attributes[kName] ?? '';
  String get kind => _attributes[kKind] ?? '';
  bool get isOpened => _attributes[kOpened] == true;
  String get questions => _attributes[kQuestions] ?? '';
  int get ageMinInMonths => _attributes[kAgeMinInMonths] ?? 0;
  int get ageMaxInMonths => _attributes[kAgeMaxInMonths] ?? 0;
  String get ageRangeBy => _attributes[kAgeRangeBy] ?? '';
  String get ageOn => _attributes[kAgeOn] ?? '';
  String get childOrAdult => _attributes[kChildOrAdult] ?? '';
  String get effectiveDate => _attributes[kEffectiveDate] ?? '';
  String get gender => _attributes[kGender] ?? '';
  int get gradeMin => _attributes[kGradeMin] ?? 0;
  int get gradeMax => _attributes[kGradeMax] ?? 0;
  int get maxOccupancy => _attributes[kMaxOccupancy] ?? 0;
  int get minVolunteers => _attributes[kMinVolunteers] ?? 0;
  int get attendeesPerVolunteer => _attributes[kAttendeesPerVolunteer] ?? 0;
  int get position => _attributes[kPosition] ?? 0;

  // typed getters for each relationship

  PcoCheckInsEvent? get includedEvent =>
      _firstOrNull<PcoCheckInsEvent>(relationships['event']);
  List<PcoCheckInsLocation> get includedLocations =>
      (relationships['locations'] as List?)?.cast<PcoCheckInsLocation>() ?? [];
  List<PcoCheckInsOption> get includedOptions =>
      (relationships['options'] as List?)?.cast<PcoCheckInsOption>() ?? [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it here.
  List<T> includedParent<T extends PcoResource>() =>
      (relationships['parent'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoCheckInsLocation.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsLocation.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsLocation] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoCheckInsLocation(
      {String? id,
      String? name,
      String? kind,
      bool? isOpened,
      String? questions,
      int? ageMinInMonths,
      int? ageMaxInMonths,
      String? ageRangeBy,
      String? ageOn,
      String? childOrAdult,
      String? effectiveDate,
      String? gender,
      int? gradeMin,
      int? gradeMax,
      int? maxOccupancy,
      int? minVolunteers,
      int? attendeesPerVolunteer,
      int? position,
      DateTime? updatedAt,
      DateTime? createdAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsLocation.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
    if (kind != null) obj._attributes['kind'] = kind;
    if (isOpened != null) obj._attributes['opened'] = isOpened;
    if (questions != null) obj._attributes['questions'] = questions;
    if (ageMinInMonths != null)
      obj._attributes['age_min_in_months'] = ageMinInMonths;
    if (ageMaxInMonths != null)
      obj._attributes['age_max_in_months'] = ageMaxInMonths;
    if (ageRangeBy != null) obj._attributes['age_range_by'] = ageRangeBy;
    if (ageOn != null) obj._attributes['age_on'] = ageOn;
    if (childOrAdult != null) obj._attributes['child_or_adult'] = childOrAdult;
    if (effectiveDate != null)
      obj._attributes['effective_date'] = effectiveDate;
    if (gender != null) obj._attributes['gender'] = gender;
    if (gradeMin != null) obj._attributes['grade_min'] = gradeMin;
    if (gradeMax != null) obj._attributes['grade_max'] = gradeMax;
    if (maxOccupancy != null) obj._attributes['max_occupancy'] = maxOccupancy;
    if (minVolunteers != null)
      obj._attributes['min_volunteers'] = minVolunteers;
    if (attendeesPerVolunteer != null)
      obj._attributes['attendees_per_volunteer'] = attendeesPerVolunteer;
    if (position != null) obj._attributes['position'] = position;
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
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

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/locations`
  static Future<PcoCollection<PcoCheckInsLocation>> getFromCheckIn(
    String checkInId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includeParent = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsLocation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocations) query.include.add('locations');
    if (includeOptions) query.include.add('options');
    if (includeParent) query.include.add('parent');
    var url = '/check-ins/v2/check_ins/$checkInId/locations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/locations`
  ///
  /// Available Query Filters:
  /// - `locations`
  /// - `root`
  static Future<PcoCollection<PcoCheckInsLocation>> getFromEvent(
    String eventId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includeParent = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsLocation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocations) query.include.add('locations');
    if (includeOptions) query.include.add('options');
    if (includeParent) query.include.add('parent');
    var url = '/check-ins/v2/events/$eventId/locations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting one)
  /// using a path like this: `/check-ins/v2/event_times/$eventTimeId/available_locations`
  ///
  /// Available Query Filters:
  /// - `for_current_station`
  static Future<PcoCollection<PcoCheckInsLocation>>
      getAvailableLocationsFromEventTime(
    String eventTimeId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includeParent = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsLocation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocations) query.include.add('locations');
    if (includeOptions) query.include.add('options');
    if (includeParent) query.include.add('parent');
    var url = '/check-ins/v2/event_times/$eventTimeId/available_locations';

    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting one)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/location`
  static Future<PcoCollection<PcoCheckInsLocation>>
      getFromCheckInAndEventPeriodAndLocationEventPeriod(
    String checkInId,
    String eventPeriodId,
    String locationEventPeriodId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includeParent = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsLocation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocations) query.include.add('locations');
    if (includeOptions) query.include.add('options');
    if (includeParent) query.include.add('parent');
    var url =
        '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/location';

    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting one)
  /// using a path like this: `/check-ins/v2/event_times/$eventTimeId/location_event_times/$locationEventTimeId/location`
  static Future<PcoCollection<PcoCheckInsLocation>>
      getFromEventTimeAndLocationEventTime(
    String eventTimeId,
    String locationEventTimeId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includeParent = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsLocation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocations) query.include.add('locations');
    if (includeOptions) query.include.add('options');
    if (includeParent) query.include.add('parent');
    var url =
        '/check-ins/v2/event_times/$eventTimeId/location_event_times/$locationEventTimeId/location';

    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting one)
  /// using a path like this: `/check-ins/v2/labels/$labelId/location_labels/$locationLabelId/location`
  static Future<PcoCollection<PcoCheckInsLocation>>
      getFromLabelAndLocationLabel(
    String labelId,
    String locationLabelId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includeParent = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsLocation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocations) query.include.add('locations');
    if (includeOptions) query.include.add('options');
    if (includeParent) query.include.add('parent');
    var url =
        '/check-ins/v2/labels/$labelId/location_labels/$locationLabelId/location';

    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/locations/$locationId/locations`
  static Future<PcoCollection<PcoCheckInsLocation>> getFromCheckInAndLocation(
    String checkInId,
    String locationId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includeParent = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsLocation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocations) query.include.add('locations');
    if (includeOptions) query.include.add('options');
    if (includeParent) query.include.add('parent');
    var url =
        '/check-ins/v2/check_ins/$checkInId/locations/$locationId/locations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting one)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/locations/$locationId/parent`
  static Future<PcoCollection<PcoCheckInsLocation>>
      getParentFromCheckInAndLocation(
    String checkInId,
    String locationId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includeParent = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsLocation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocations) query.include.add('locations');
    if (includeOptions) query.include.add('options');
    if (includeParent) query.include.add('parent');
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/parent';

    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting one)
  /// using a path like this: `/check-ins/v2/stations/$stationId/location`
  static Future<PcoCollection<PcoCheckInsLocation>> getFromStation(
    String stationId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includeParent = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsLocation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocations) query.include.add('locations');
    if (includeOptions) query.include.add('options');
    if (includeParent) query.include.add('parent');
    var url = '/check-ins/v2/stations/$stationId/location';

    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/check_ins`
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
  Future<PcoCollection<PcoCheckInsCheckIn>> getCheckIns({
    PlanningCenterApiQuery? query,
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
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsLocation.canInclude);
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
    var url = '$apiEndpoint/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/event`
  Future<PcoCollection<PcoCheckInsEvent>> getEvent({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsLocation.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocationEventPeriod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_periods`
  Future<PcoCollection<PcoCheckInsLocationEventPeriod>>
      getLocationEventPeriods({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEventPeriod = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsLocation.canInclude);
    if (includeEventPeriod) query.include.add('event_period');
    if (includeLocation) query.include.add('location');
    var url = '$apiEndpoint/location_event_periods';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventPeriod>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocationEventTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_times`
  Future<PcoCollection<PcoCheckInsLocationEventTime>> getLocationEventTimes({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEventTime = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsLocation.canInclude);
    if (includeEventTime) query.include.add('event_time');
    if (includeLocation) query.include.add('location');
    var url = '$apiEndpoint/location_event_times';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocationLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_labels`
  Future<PcoCollection<PcoCheckInsLocationLabel>> getLocationLabels({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeLabel = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsLocation.canInclude);
    if (includeLabel) query.include.add('label');
    if (includeLocation) query.include.add('location');
    var url = '$apiEndpoint/location_labels';
    return PcoCollection.fromApiCall<PcoCheckInsLocationLabel>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/locations`
  Future<PcoCollection<PcoCheckInsLocation>> getLocations({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includeParent = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsLocation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocations) query.include.add('locations');
    if (includeOptions) query.include.add('options');
    if (includeParent) query.include.add('parent');
    var url = '$apiEndpoint/locations';
    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/options`
  Future<PcoCollection<PcoCheckInsOption>> getOptions({
    PlanningCenterApiQuery? query,
    bool includeLabel = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeLabel) query.include.add('label');
    var url = '$apiEndpoint/options';
    return PcoCollection.fromApiCall<PcoCheckInsOption>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/parent`
  Future<PcoCollection<PcoCheckInsLocation>> getParent({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includeParent = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsLocation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocations) query.include.add('locations');
    if (includeOptions) query.include.add('options');
    if (includeParent) query.include.add('parent');
    var url = '$apiEndpoint/parent';
    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
