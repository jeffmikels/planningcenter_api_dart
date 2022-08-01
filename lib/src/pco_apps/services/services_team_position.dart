/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T14:42:03.454488
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `name` -> `?order=name`
enum PcoServicesTeamPositionOrder { name }

/// Filtering is not allowed when requesting this object.
enum PcoServicesTeamPositionFilter { none }

/// Creates a [PcoServicesTeamPositionQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeTeam`: include associated team
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoServicesTeamPositionQuery(includes: ['a', 'b'])`
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoServicesTeamPositionOrder.name` : will order by `name`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesTeamPositionQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesTeamPositionOrder, String> _orderMap = {
    PcoServicesTeamPositionOrder.name: 'name',
  };
  static String orderString(PcoServicesTeamPositionOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesTeamPositionFilter, String> _filterMap = {};
  static String filterString(PcoServicesTeamPositionFilter filter) =>
      _filterMap[filter]!;

  PcoServicesTeamPositionQuery({
    /// include associated team
    /// when true, adds `?include=team` to url
    bool includeTeam = false,
    PcoServicesTeamPositionOrder? orderBy,

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
    if (includeTeam) include.add('team');

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Services TeamPosition Object
///
/// - Application:        services
/// - Id:                 team_position
/// - Type:               TeamPosition
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/team_positions
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesTeamPosition.fromJson()` constructor.
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
/// A position within a team.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `tags` (ro) -> PCO: `tags`
/// - `negativeTagGroups` (ro) -> PCO: `negative_tag_groups`
/// - `tagGroups` (ro) -> PCO: `tag_groups`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `personteampositionassignment-teamposition-person_team_position_assignments`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments
/// - `team-teamposition-team`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/team
///
/// Inbound Edges:
/// - `teamposition-personteampositionassignment-team_position`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/team_position
/// - `teamposition-servicetype-team_positions`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions
/// - `teamposition-team-team_positions`: https://api.planningcenteronline.com/services/v2/teams/1/team_positions
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "TeamPosition",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "tags": [],
///     "negative_tag_groups": [],
///     "tag_groups": []
///   },
///   "relationships": {
///     "team": {
///       "data": {
///         "type": "Team",
///         "id": "1"
///       }
///     },
///     "attachment_types": {
///       "data": [
///         {
///           "type": "AttachmentType",
///           "id": "1"
///         }
///       ]
///     }
///   }
/// }
/// ```
class PcoServicesTeamPosition extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'TeamPosition';
  static const String kTypeId = 'team_position';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/team_positions';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `team`: include associated team
  static List<String> get canInclude => ['team'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['name'];

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
  static const kTags = 'tags';
  static const kNegativeTagGroups = 'negative_tag_groups';
  static const kTagGroups = 'tag_groups';

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
  List get tags => _attributes[kTags] ?? [];
  List get negativeTagGroups => _attributes[kNegativeTagGroups] ?? [];
  List get tagGroups => _attributes[kTagGroups] ?? [];

  // typed getters for each relationship

  PcoServicesTeam? get includedTeam =>
      _firstOrNull<PcoServicesTeam>(relationships['team']);

  // Class Constructors
  PcoServicesTeamPosition.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesTeamPosition.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesTeamPosition] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoServicesTeamPosition(
      {String? id,
      String? name,
      List? tags,
      List? negativeTagGroups,
      List? tagGroups,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesTeamPosition.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
    if (tags != null) obj._attributes['tags'] = tags;
    if (negativeTagGroups != null)
      obj._attributes['negative_tag_groups'] = negativeTagGroups;
    if (tagGroups != null) obj._attributes['tag_groups'] = tagGroups;

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

  /// Will get a collection of [PcoServicesTeamPosition] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments/$personTeamPositionAssignmentId/team_position`
  static Future<PcoCollection<PcoServicesTeamPosition>>
      getFromServiceTypeAndTeamPositionAndPersonTeamPositionAssignment(
    String serviceTypeId,
    String teamPositionId,
    String personTeamPositionAssignmentId, {
    PcoServicesTeamPositionQuery? query,
    bool includeTeam = false,
  }) async {
    query ??= PcoServicesTeamPositionQuery();

    if (includeTeam) query.include.add('team');
    var url =
        '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments/$personTeamPositionAssignmentId/team_position';

    return PcoCollection.fromApiCall<PcoServicesTeamPosition>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeamPosition] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/team_positions`
  static Future<PcoCollection<PcoServicesTeamPosition>> getFromServiceType(
    String serviceTypeId, {
    String? id,
    PcoServicesTeamPositionQuery? query,
    bool includeTeam = false,
  }) async {
    query ??= PcoServicesTeamPositionQuery();

    if (includeTeam) query.include.add('team');
    var url = '/services/v2/service_types/$serviceTypeId/team_positions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeamPosition>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeamPosition] objects (expecting many)
  /// using a path like this: `/services/v2/teams/$teamId/team_positions`
  static Future<PcoCollection<PcoServicesTeamPosition>> getFromTeam(
    String teamId, {
    String? id,
    PcoServicesTeamPositionQuery? query,
    bool includeTeam = false,
  }) async {
    query ??= PcoServicesTeamPositionQuery();

    if (includeTeam) query.include.add('team');
    var url = '/services/v2/teams/$teamId/team_positions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeamPosition>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments`
  ///
  /// Available Query Filters:
  /// - `time_preference_options`
  /// pass an additonal array of `time_preference_option_ids` as a param to filter to people who prefer those times.use id 'none' to filter people who have no preferred times
  ///
  Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>>
      getPersonTeamPositionAssignments(
          {PcoServicesPersonTeamPositionAssignmentQuery? query}) async {
    query ??= PcoServicesPersonTeamPositionAssignmentQuery();
    var url = '$apiEndpoint/person_team_position_assignments';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(
        url,
        query: query,
        apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/team`
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
