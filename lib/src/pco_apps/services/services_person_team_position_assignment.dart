/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T11:30:57.444924
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `person`: include associated person
/// - `team_position`: include associated team_position
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
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
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

  /// pass `null` to remove key from attributes
  set schedulePreference(String? x) => (x == null)
      ? _attributes.remove(kSchedulePreference)
      : _attributes[kSchedulePreference] = x;

  /// When `schedule_preference` is set to "Choose Weeks" then this
  /// indicates which weeks are preferred (checked).
  ///
  /// e.g. ['1', '3', '5'] to prefer odd numbered weeks.

  /// pass `null` to remove key from attributes
  set preferredWeeks(List? x) => (x == null)
      ? _attributes.remove(kPreferredWeeks)
      : _attributes[kPreferredWeeks] = x;

  // additional setters / getters for create/update attributes

  /// pass `null` to remove key from attributes
  set timePreferenceOptionIds(String? x) => (x == null)
      ? _attributes.remove(kTimePreferenceOptionIds)
      : _attributes[kTimePreferenceOptionIds] = x;
  String get timePreferenceOptionIds =>
      _attributes[kTimePreferenceOptionIds] ?? '';

  /// pass `null` to remove key from attributes
  set personId(String? x) =>
      (x == null) ? _attributes.remove(kPersonId) : _attributes[kPersonId] = x;
  String get personId => _attributes[kPersonId] ?? '';

  // typed getters for each relationship
  // the code generator cannot determine the resource type of the relationships, so for type safety, the user should

  List<T> includedPerson<T extends PcoResource>() =>
      relationships['person']?.cast<T>() ?? [];
  List<T> includedTeamPosition<T extends PcoResource>() =>
      relationships['team_position']?.cast<T>() ?? [];

  // Class Constructors
  PcoServicesPersonTeamPositionAssignment.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesPersonTeamPositionAssignment.empty()
      : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesPersonTeamPositionAssignment] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesPersonTeamPositionAssignment(
      String serviceTypeId, String teamPositionId,
      {String? schedulePreference, List? preferredWeeks}) {
    var obj = PcoServicesPersonTeamPositionAssignment.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments';
    if (schedulePreference != null) obj.schedulePreference = schedulePreference;
    if (preferredWeeks != null) obj.preferredWeeks = preferredWeeks;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `/services/v2/people/$peopleId/person_team_position_assignments`
  ///
  /// Available Query Filters:
  /// - `not_archived`
  /// - `not_deleted`
  static Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>>
      getFromPeople(
    String peopleId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includePerson = false,
    bool includeTeamPosition = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoServicesPersonTeamPositionAssignment.canInclude);
    if (includePerson) query.include.add('person');
    if (includeTeamPosition) query.include.add('team_position');
    var url = '/services/v2/people/$peopleId/person_team_position_assignments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(
        url,
        query: query,
        apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `/services/v2/teams/$teamId/person_team_position_assignments`
  static Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>>
      getFromTeam(
    String teamId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includePerson = false,
    bool includeTeamPosition = false,
  }) async {
    query ??= PlanningCenterApiQuery();
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
  static Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>>
      getFromServiceTypeAndTeamPosition(
    String serviceTypeId,
    String teamPositionId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includePerson = false,
    bool includeTeamPosition = false,
  }) async {
    query ??= PlanningCenterApiQuery();
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
  Future<PcoCollection<PcoServicesPerson>> getPerson({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeamPosition] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/team_position`
  Future<PcoCollection<PcoServicesTeamPosition>> getTeamPosition({
    PlanningCenterApiQuery? query,
    bool includeTeam = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeTeam) query.include.add('team');
    var url = '$apiEndpoint/team_position';
    return PcoCollection.fromApiCall<PcoServicesTeamPosition>(url,
        query: query, apiVersion: apiVersion);
  }
}
