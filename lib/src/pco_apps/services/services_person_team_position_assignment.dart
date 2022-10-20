/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.491007
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `firstName` -> `?order=first_name`
/// - `lastName` -> `?order=last_name`
enum PcoServicesPersonTeamPositionAssignmentOrder { firstName, lastName }

/// Possible Inbound Filters:
/// - `timePreferenceOptions` -> `?filter=time_preference_options` : pass an additonal array of `time_preference_option_ids` as a param to filter to people who prefer those times.use id 'none' to filter people who have no preferred times
enum PcoServicesPersonTeamPositionAssignmentFilter { timePreferenceOptions }

/// Creates a [PcoServicesPersonTeamPositionAssignmentQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includePerson`: include associated person
/// - `includeTeamPosition`: include associated team_position
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoServicesPersonTeamPositionAssignmentQuery(includes: ['a', 'b'])`
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoServicesPersonTeamPositionAssignmentOrder.firstName` : will order by `first_name`
/// - `PcoServicesPersonTeamPositionAssignmentOrder.lastName` : will order by `last_name`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesPersonTeamPositionAssignmentQuery
    extends PlanningCenterApiQuery {
  static final Map<PcoServicesPersonTeamPositionAssignmentOrder, String>
      _orderMap = {
    PcoServicesPersonTeamPositionAssignmentOrder.firstName: 'first_name',
    PcoServicesPersonTeamPositionAssignmentOrder.lastName: 'last_name',
  };
  static String orderString(PcoServicesPersonTeamPositionAssignmentOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesPersonTeamPositionAssignmentFilter, String>
      _filterMap = {
    PcoServicesPersonTeamPositionAssignmentFilter.timePreferenceOptions:
        'time_preference_options',
  };
  static String filterString(
          PcoServicesPersonTeamPositionAssignmentFilter filter) =>
      _filterMap[filter]!;

  PcoServicesPersonTeamPositionAssignmentQuery({
    /// include associated person
    /// when true, adds `?include=person` to url
    bool includePerson = false,

    /// include associated team_position
    /// when true, adds `?include=team_position` to url
    bool includeTeamPosition = false,

    /// when true, adds `?include=person,team_position` to url parameters
    bool includeAll = false,
    PcoServicesPersonTeamPositionAssignmentFilter? filterBy,
    PcoServicesPersonTeamPositionAssignmentOrder? orderBy,

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
    if (includeAll || includePerson) include.add('person');
    if (includeAll || includeTeamPosition) include.add('team_position');

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Services PersonTeamPositionAssignment Object
///
/// - Application:        services
/// - Id:                 person_team_position_assignment
/// - Type:               PersonTeamPositionAssignment
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments
///
/// ## Instantiation
/// - Create a new instance using the `PcoServicesPersonTeamPositionAssignment()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesPersonTeamPositionAssignment.fromJson()` constructor.
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
/// A person's assignment to a position within a team.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `schedulePreference` (rw) -> PCO: `schedule_preference`
/// - `preferredWeeks` (rw) -> PCO: `preferred_weeks`
/// - `timePreferenceOptionIds` (wo) -> PCO: `time_preference_option_ids`
/// - `personId` (wo) -> PCO: `person_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-personteampositionassignment-person`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/person
/// - `teamposition-personteampositionassignment-team_position`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/team_position
///
/// Inbound Edges:
/// - `personteampositionassignment-person-person_team_position_assignments`: https://api.planningcenteronline.com/services/v2/people/1/person_team_position_assignments
/// - `personteampositionassignment-team-person_team_position_assignments`: https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments
/// - `personteampositionassignment-teamposition-person_team_position_assignments`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PersonTeamPositionAssignment",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "schedule_preference": "string",
///     "preferred_weeks": []
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "team_position": {
///       "data": {
///         "type": "TeamPosition",
///         "id": "1"
///       }
///     },
///     "time_preference_options": {
///       "data": [
///         {
///           "type": "TimePreferenceOption",
///           "id": "1"
///         }
///       ]
///     }
///   }
/// }
/// ```
class PcoServicesPersonTeamPositionAssignment extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PersonTeamPositionAssignment';
  static const String kTypeId = 'person_team_position_assignment';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person
  /// - `team_position`: include associated team_position
  static List<String> get canInclude => ['person', 'team_position'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  static List<String> get canOrderBy => ['first_name', 'last_name'];

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
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kSchedulePreference = 'schedule_preference';
  static const kPreferredWeeks = 'preferred_weeks';
  static const kTimePreferenceOptionIds = 'time_preference_option_ids';
  static const kPersonId = 'person_id';

  // getters and setters
  @override
  List<String> get createAllowed => [
        'schedule_preference',
        'preferred_weeks',
        'time_preference_option_ids',
        'person_id'
      ];

  @override
  List<String> get updateAllowed =>
      ['schedule_preference', 'preferred_weeks', 'time_preference_option_ids'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get schedulePreference => _attributes[kSchedulePreference] ?? '';
  List get preferredWeeks => _attributes[kPreferredWeeks] ?? [];

  // setters for object attributes

  /// Possible Values:
  ///   "Every week"
  ///   "Every other week"
  ///   "Every 3rd week"
  ///   "Every 4th week"
  ///   "Every 5th week"
  ///   "Every 6th week"
  ///   "Once a month"
  ///   "Twice a month"
  ///   "Three times a month"
  ///   "Choose Weeks"
  ///
  /// pass `null` to remove key from attributes
  set schedulePreference(String? x) => (x == null)
      ? _attributes.remove(kSchedulePreference)
      : _attributes[kSchedulePreference] = x;

  /// When `schedule_preference` is set to "Choose Weeks" then this
  /// indicates which weeks are preferred (checked).
  ///
  /// e.g. ['1', '3', '5'] to prefer odd numbered weeks.
  ///
  /// pass `null` to remove key from attributes
  set preferredWeeks(List? x) => (x == null)
      ? _attributes.remove(kPreferredWeeks)
      : _attributes[kPreferredWeeks] = x;

  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set timePreferenceOptionIds(String? x) => (x == null)
      ? _attributes.remove(kTimePreferenceOptionIds)
      : _attributes[kTimePreferenceOptionIds] = x;
  String get timePreferenceOptionIds =>
      _attributes[kTimePreferenceOptionIds] ?? '';

  ///
  /// pass `null` to remove key from attributes
  set personId(String? x) =>
      (x == null) ? _attributes.remove(kPersonId) : _attributes[kPersonId] = x;
  String get personId => _attributes[kPersonId] ?? '';

  // typed getters for each relationship

  PcoServicesPerson? get includedPerson =>
      _firstOrNull<PcoServicesPerson>(relationships['person']);
  PcoServicesTeamPosition? get includedTeamPosition =>
      _firstOrNull<PcoServicesTeamPosition>(relationships['team_position']);

  // Class Constructors
  PcoServicesPersonTeamPositionAssignment.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoServicesPersonTeamPositionAssignment.empty()
      : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesPersonTeamPositionAssignment] object using this endpoint: `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `schedulePreference`, `preferredWeeks`, `timePreferenceOptionIds`, `personId`
  /// - FIELDS USED WHEN UPDATING: `schedulePreference`, `preferredWeeks`, `timePreferenceOptionIds`
  factory PcoServicesPersonTeamPositionAssignment(
      {required String serviceTypeId,
      required String teamPositionId,
      String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? schedulePreference,
      List? preferredWeeks,
      String? timePreferenceOptionIds,
      String? personId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesPersonTeamPositionAssignment.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments';
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (schedulePreference != null)
      obj._attributes['schedule_preference'] = schedulePreference;
    if (preferredWeeks != null)
      obj._attributes['preferred_weeks'] = preferredWeeks;
    if (timePreferenceOptionIds != null)
      obj._attributes['time_preference_option_ids'] = timePreferenceOptionIds;
    if (personId != null) obj._attributes['person_id'] = personId;

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

  /// Will get a collection of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/person_team_position_assignments`
  ///
  /// Available Query Filters:
  /// - `not_archived`
  /// - `not_deleted`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>>
      getFromPerson(
    String personId, {
    String? id,
    PcoServicesPersonTeamPositionAssignmentQuery? query,
    bool includeAll = false,
    bool includePerson = false,
    bool includeTeamPosition = false,
  }) async {
    query ??= PcoServicesPersonTeamPositionAssignmentQuery();
    if (includeAll)
      query.include.addAll(PcoServicesPersonTeamPositionAssignment.canInclude);
    if (includePerson) query.include.add('person');
    if (includeTeamPosition) query.include.add('team_position');
    var url = '/services/v2/people/$personId/person_team_position_assignments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(
        url,
        query: query,
        apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `/services/v2/teams/$teamId/person_team_position_assignments`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>>
      getFromTeam(
    String teamId, {
    String? id,
    PcoServicesPersonTeamPositionAssignmentQuery? query,
    bool includeAll = false,
    bool includePerson = false,
    bool includeTeamPosition = false,
  }) async {
    query ??= PcoServicesPersonTeamPositionAssignmentQuery();
    if (includeAll)
      query.include.addAll(PcoServicesPersonTeamPositionAssignment.canInclude);
    if (includePerson) query.include.add('person');
    if (includeTeamPosition) query.include.add('team_position');
    var url = '/services/v2/teams/$teamId/person_team_position_assignments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(
        url,
        query: query,
        apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments`
  ///
  /// Available Query Filters:
  /// - `time_preference_options`
  /// pass an additonal array of `time_preference_option_ids` as a param to filter to people who prefer those times.use id 'none' to filter people who have no preferred times
  ///
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>>
      getFromServiceTypeAndTeamPosition(
    String serviceTypeId,
    String teamPositionId, {
    String? id,
    PcoServicesPersonTeamPositionAssignmentQuery? query,
    bool includeAll = false,
    bool includePerson = false,
    bool includeTeamPosition = false,
  }) async {
    query ??= PcoServicesPersonTeamPositionAssignmentQuery();
    if (includeAll)
      query.include.addAll(PcoServicesPersonTeamPositionAssignment.canInclude);
    if (includePerson) query.include.add('person');
    if (includeTeamPosition) query.include.add('team_position');
    var url =
        '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(
        url,
        query: query,
        apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/person`
  Future<PcoCollection<PcoServicesPerson>> getPerson(
      {PcoServicesPersonQuery? query}) async {
    query ??= PcoServicesPersonQuery();
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeamPosition] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/team_position`
  Future<PcoCollection<PcoServicesTeamPosition>> getTeamPosition(
      {PcoServicesTeamPositionQuery? query}) async {
    query ??= PcoServicesTeamPositionQuery();
    var url = '$apiEndpoint/team_position';
    return PcoCollection.fromApiCall<PcoServicesTeamPosition>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
