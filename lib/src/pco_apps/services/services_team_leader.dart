/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.517772
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `firstName` -> `?order=first_name`
/// - `lastName` -> `?order=last_name`
enum PcoServicesTeamLeaderOrder { firstName, lastName }

/// Possible Inbound Filters:
/// - `notArchived` -> `?filter=not_archived` : -- no description
/// - `notDeleted` -> `?filter=not_deleted` : -- no description
enum PcoServicesTeamLeaderFilter { notArchived, notDeleted }

/// Creates a [PcoServicesTeamLeaderQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includePeople`: include associated people
/// - `includeTeam`: include associated team
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoServicesTeamLeaderQuery(includes: ['a', 'b'])`
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoServicesTeamLeaderOrder.firstName` : will order by `first_name`
/// - `PcoServicesTeamLeaderOrder.lastName` : will order by `last_name`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesTeamLeaderQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesTeamLeaderOrder, String> _orderMap = {
    PcoServicesTeamLeaderOrder.firstName: 'first_name',
    PcoServicesTeamLeaderOrder.lastName: 'last_name',
  };
  static String orderString(PcoServicesTeamLeaderOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesTeamLeaderFilter, String> _filterMap = {
    PcoServicesTeamLeaderFilter.notArchived: 'not_archived',
    PcoServicesTeamLeaderFilter.notDeleted: 'not_deleted',
  };
  static String filterString(PcoServicesTeamLeaderFilter filter) =>
      _filterMap[filter]!;

  PcoServicesTeamLeaderQuery({
    /// include associated people
    /// when true, adds `?include=people` to url
    bool includePeople = false,

    /// include associated team
    /// when true, adds `?include=team` to url
    bool includeTeam = false,

    /// when true, adds `?include=people,team` to url parameters
    bool includeAll = false,
    PcoServicesTeamLeaderFilter? filterBy,
    PcoServicesTeamLeaderOrder? orderBy,

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
    if (includeAll || includePeople) include.add('people');
    if (includeAll || includeTeam) include.add('team');

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Services TeamLeader Object
///
/// - Application:        services
/// - Id:                 team_leader
/// - Type:               TeamLeader
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/team_leaders
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesTeamLeader.fromJson()` constructor.
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
/// A leader of a specific Team in a Service Type.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `isSendResponsesForAccepts` (ro) -> PCO: `send_responses_for_accepts`
/// - `isSendResponsesForDeclines` (ro) -> PCO: `send_responses_for_declines`
/// - `isSendResponsesForBlockouts` (ro) -> PCO: `send_responses_for_blockouts`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-teamleader-people`: https://api.planningcenteronline.com/services/v2/people/1/team_leaders/1/people
/// - `team-teamleader-team`: https://api.planningcenteronline.com/services/v2/people/1/team_leaders/1/team
///
/// Inbound Edges:
/// - `teamleader-person-team_leaders`: https://api.planningcenteronline.com/services/v2/people/1/team_leaders
/// - `teamleader-team-team_leaders`: https://api.planningcenteronline.com/services/v2/teams/1/team_leaders
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "TeamLeader",
///   "id": "1",
///   "attributes": {
///     "send_responses_for_accepts": true,
///     "send_responses_for_declines": true,
///     "send_responses_for_blockouts": true
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "team": {
///       "data": {
///         "type": "Team",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesTeamLeader extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'TeamLeader';
  static const String kTypeId = 'team_leader';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/team_leaders';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `people`: include associated people
  /// - `team`: include associated team
  static List<String> get canInclude => ['people', 'team'];

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
  static const kSendResponsesForAccepts = 'send_responses_for_accepts';
  static const kSendResponsesForDeclines = 'send_responses_for_declines';
  static const kSendResponsesForBlockouts = 'send_responses_for_blockouts';

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
  bool get isSendResponsesForAccepts =>
      _attributes[kSendResponsesForAccepts] == true;
  bool get isSendResponsesForDeclines =>
      _attributes[kSendResponsesForDeclines] == true;
  bool get isSendResponsesForBlockouts =>
      _attributes[kSendResponsesForBlockouts] == true;

  // typed getters for each relationship

  List<PcoServicesPerson> get includedPeople =>
      (relationships['people'] as List?)?.cast<PcoServicesPerson>() ?? [];
  PcoServicesTeam? get includedTeam =>
      _firstOrNull<PcoServicesTeam>(relationships['team']);

  // Class Constructors
  PcoServicesTeamLeader.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesTeamLeader.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesTeamLeader] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesTeamLeader(
      {String? id,
      bool? isSendResponsesForAccepts,
      bool? isSendResponsesForDeclines,
      bool? isSendResponsesForBlockouts,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesTeamLeader.empty();
    obj._id = id;
    if (isSendResponsesForAccepts != null)
      obj._attributes['send_responses_for_accepts'] = isSendResponsesForAccepts;
    if (isSendResponsesForDeclines != null)
      obj._attributes['send_responses_for_declines'] =
          isSendResponsesForDeclines;
    if (isSendResponsesForBlockouts != null)
      obj._attributes['send_responses_for_blockouts'] =
          isSendResponsesForBlockouts;

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

  /// Will get a collection of [PcoServicesTeamLeader] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/team_leaders`
  ///
  /// Available Query Filters:
  /// - `not_archived`
  /// - `not_deleted`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesTeamLeader>> getFromPerson(
    String personId, {
    String? id,
    PcoServicesTeamLeaderQuery? query,
    bool includeAll = false,
    bool includePeople = false,
    bool includeTeam = false,
  }) async {
    query ??= PcoServicesTeamLeaderQuery();
    if (includeAll) query.include.addAll(PcoServicesTeamLeader.canInclude);
    if (includePeople) query.include.add('people');
    if (includeTeam) query.include.add('team');
    var url = '/services/v2/people/$personId/team_leaders';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeamLeader>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeamLeader] objects (expecting many)
  /// using a path like this: `/services/v2/teams/$teamId/team_leaders`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesTeamLeader>> getFromTeam(
    String teamId, {
    String? id,
    PcoServicesTeamLeaderQuery? query,
    bool includeAll = false,
    bool includePeople = false,
    bool includeTeam = false,
  }) async {
    query ??= PcoServicesTeamLeaderQuery();
    if (includeAll) query.include.addAll(PcoServicesTeamLeader.canInclude);
    if (includePeople) query.include.add('people');
    if (includeTeam) query.include.add('team');
    var url = '/services/v2/teams/$teamId/team_leaders';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeamLeader>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/team_leaders/1/people`
  Future<PcoCollection<PcoServicesPerson>> getPeople(
      {PcoServicesPersonQuery? query}) async {
    query ??= PcoServicesPersonQuery();
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/team_leaders/1/team`
  Future<PcoCollection<PcoServicesTeam>> getTeam(
      {PcoServicesTeamQuery? query}) async {
    query ??= PcoServicesTeamQuery();
    var url = '$apiEndpoint/team';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
