/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:20.974526
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesSignupSheetOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesSignupSheetFilter { none }

/// Creates a [PcoServicesSignupSheetQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeScheduledPeople`: include associated scheduled_people
/// - `includeSignupSheetMetadata`: include associated signup_sheet_metadata
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoServicesSignupSheetQuery(includes: ['a', 'b'])`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesSignupSheetQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesSignupSheetOrder, String> _orderMap = {};
  static String orderString(PcoServicesSignupSheetOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesSignupSheetFilter, String> _filterMap = {};
  static String filterString(PcoServicesSignupSheetFilter filter) =>
      _filterMap[filter]!;

  PcoServicesSignupSheetQuery({
    /// include associated scheduled_people
    /// when true, adds `?include=scheduled_people` to url
    bool includeScheduledPeople = false,

    /// include associated signup_sheet_metadata
    /// when true, adds `?include=signup_sheet_metadata` to url
    bool includeSignupSheetMetadata = false,

    /// when true, adds `?include=scheduled_people,signup_sheet_metadata` to url parameters
    bool includeAllRelated = false,

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
    if (includeAllRelated || includeScheduledPeople)
      include.add('scheduled_people');
    if (includeAllRelated || includeSignupSheetMetadata)
      include.add('signup_sheet_metadata');
  }
}

/// This class represents a PCO Services SignupSheet Object
///
/// - Application:        services
/// - Id:                 signup_sheet
/// - Type:               SignupSheet
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesSignupSheet.fromJson()` constructor.
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
/// Available positions to sign up for
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `sortDate` (ro) -> PCO: `sort_date`
/// - `groupKey` (ro) -> PCO: `group_key`
/// - `teamName` (ro) -> PCO: `team_name`
/// - `displayTimes` (ro) -> PCO: `display_times`
/// - `positionName` (ro) -> PCO: `position_name`
/// - `title` (ro) -> PCO: `title`
/// - `sortIndex` (ro) -> PCO: `sort_index`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `scheduledperson-signupsheet-scheduled_people`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people
/// - `signupsheetmetadata-signupsheet-signup_sheet_metadata`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata
///
/// Inbound Edges:
/// - `signupsheet-availablesignup-signup_sheets`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets
///
/// Actions:
/// - `accept`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/accept
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "SignupSheet",
///   "id": "1",
///   "attributes": {
///     "sort_date": "2000-01-01T12:00:00Z",
///     "group_key": "string",
///     "team_name": "string",
///     "display_times": "string",
///     "position_name": "string",
///     "title": "string",
///     "sort_index": 1
///   },
///   "relationships": {
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "team_position": {
///       "data": {
///         "type": "TeamPosition",
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
class PcoServicesSignupSheet extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SignupSheet';
  static const String kTypeId = 'signup_sheet';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `scheduled_people`: include associated scheduled_people
  /// - `signup_sheet_metadata`: include associated signup_sheet_metadata
  static List<String> get canInclude =>
      ['scheduled_people', 'signup_sheet_metadata'];

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
  static const kSortDate = 'sort_date';
  static const kGroupKey = 'group_key';
  static const kTeamName = 'team_name';
  static const kDisplayTimes = 'display_times';
  static const kPositionName = 'position_name';
  static const kTitle = 'title';
  static const kSortIndex = 'sort_index';

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
  DateTime get sortDate => _getAttribute<DateTime>(kSortDate, DateTime(0));
  String get groupKey => _getAttribute<String>(kGroupKey, '');
  String get teamName => _getAttribute<String>(kTeamName, '');
  String get displayTimes => _getAttribute<String>(kDisplayTimes, '');
  String get positionName => _getAttribute<String>(kPositionName, '');
  String get title => _getAttribute<String>(kTitle, '');
  int get sortIndex => _getAttribute<int>(kSortIndex, 0);

  // typed getters for each relationship

  List<PcoServicesScheduledPerson> get includedScheduledPeople =>
      (relationships['scheduled_people'] as List?)
          ?.cast<PcoServicesScheduledPerson>() ??
      [];
  List<PcoServicesSignupSheetMetadatum> get includedSignupSheetMetadata =>
      (relationships['signup_sheet_metadata'] as List?)
          ?.cast<PcoServicesSignupSheetMetadatum>() ??
      [];

  // Class Constructors
  PcoServicesSignupSheet.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesSignupSheet.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesSignupSheet] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesSignupSheet(
      {String? id,
      DateTime? sortDate,
      String? groupKey,
      String? teamName,
      String? displayTimes,
      String? positionName,
      String? title,
      int? sortIndex,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesSignupSheet.empty();
    obj._id = id;
    if (sortDate != null)
      obj._attributes['sort_date'] = sortDate.toIso8601String();
    if (groupKey != null) obj._attributes['group_key'] = groupKey;
    if (teamName != null) obj._attributes['team_name'] = teamName;
    if (displayTimes != null) obj._attributes['display_times'] = displayTimes;
    if (positionName != null) obj._attributes['position_name'] = positionName;
    if (title != null) obj._attributes['title'] = title;
    if (sortIndex != null) obj._attributes['sort_index'] = sortIndex;

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

  /// Will get a [PcoCollection] of [PcoServicesSignupSheet] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/available_signups/$availableSignupId/signup_sheets`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesSignupSheet>>
      getFromPersonAndAvailableSignup(
    String personId,
    String availableSignupId, {
    String? id,
    PcoServicesSignupSheetQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeScheduledPeople = false,
    bool includeSignupSheetMetadata = false,
  }) async {
    query ??= PcoServicesSignupSheetQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoServicesSignupSheet.canInclude);
    if (includeScheduledPeople) query.include.add('scheduled_people');
    if (includeSignupSheetMetadata) query.include.add('signup_sheet_metadata');
    var url =
        '/services/v2/people/$personId/available_signups/$availableSignupId/signup_sheets';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSignupSheet>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoServicesSignupSheet] object
  /// using a path like this: `/services/v2/people/$personId/available_signups/$availableSignupId/signup_sheets/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoServicesSignupSheet?> getSingleFromPersonAndAvailableSignup(
    String personId,
    String availableSignupId,
    String id, {
    PcoServicesSignupSheetQuery? query,
    bool includeAllRelated = false,
    bool includeScheduledPeople = false,
    bool includeSignupSheetMetadata = false,
  }) async {
    query ??= PcoServicesSignupSheetQuery();
    if (includeAllRelated)
      query.include.addAll(PcoServicesSignupSheet.canInclude);
    if (includeScheduledPeople) query.include.add('scheduled_people');
    if (includeSignupSheetMetadata) query.include.add('signup_sheet_metadata');
    var url =
        '/services/v2/people/$personId/available_signups/$availableSignupId/signup_sheets/$id';
    var retval = await PcoCollection.fromApiCall<PcoServicesSignupSheet>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoServicesSignupSheet] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/available_signups/$availableSignupId/signup_sheets`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoServicesSignupSheet>>
      getAllFromPersonAndAvailableSignup(
    String personId,
    String availableSignupId, {
    String? id,
    PcoServicesSignupSheetQuery? query,
    bool includeAllRelated = false,
    bool includeScheduledPeople = false,
    bool includeSignupSheetMetadata = false,
  }) async {
    query ??= PcoServicesSignupSheetQuery();
    query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoServicesSignupSheet.canInclude);
    if (includeScheduledPeople) query.include.add('scheduled_people');
    if (includeSignupSheetMetadata) query.include.add('signup_sheet_metadata');
    var url =
        '/services/v2/people/$personId/available_signups/$availableSignupId/signup_sheets';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSignupSheet>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesScheduledPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people`
  Future<PcoCollection<PcoServicesScheduledPerson>> getScheduledPeople(
      {PcoServicesScheduledPersonQuery? query}) async {
    query ??= PcoServicesScheduledPersonQuery();
    var url = '$apiEndpoint/scheduled_people';
    return PcoCollection.fromApiCall<PcoServicesScheduledPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSignupSheetMetadatum] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata`
  Future<PcoCollection<PcoServicesSignupSheetMetadatum>> getSignupSheetMetadata(
      {PcoServicesSignupSheetMetadatumQuery? query}) async {
    query ??= PcoServicesSignupSheetMetadatumQuery();
    var url = '$apiEndpoint/signup_sheet_metadata';
    return PcoCollection.fromApiCall<PcoServicesSignupSheetMetadatum>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `accept`
  ///
  /// Accept a signup sheet
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/accept`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> accept(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/accept';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
