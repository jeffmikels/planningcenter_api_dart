/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.352535
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `scheduled_people`: include associated scheduled_people
/// - `signup_sheet_metadata`: include associated signup_sheet_metadata
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
  DateTime get sortDate => DateTime.parse(_attributes[kSortDate] ?? '');
  String get groupKey => _attributes[kGroupKey] ?? '';
  String get teamName => _attributes[kTeamName] ?? '';
  String get displayTimes => _attributes[kDisplayTimes] ?? '';
  String get positionName => _attributes[kPositionName] ?? '';
  String get title => _attributes[kTitle] ?? '';
  int get sortIndex => _attributes[kSortIndex] ?? 0;

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
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoServicesSignupSheet] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/available_signups/$availableSignupId/signup_sheets`
  static Future<PcoCollection<PcoServicesSignupSheet>>
      getFromPersonAndAvailableSignup(
    String personId,
    String availableSignupId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeScheduledPeople = false,
    bool includeSignupSheetMetadata = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoServicesSignupSheet.canInclude);
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
  Future<PcoCollection<PcoServicesScheduledPerson>> getScheduledPeople({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/scheduled_people';
    return PcoCollection.fromApiCall<PcoServicesScheduledPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSignupSheetMetadatum] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata`
  Future<PcoCollection<PcoServicesSignupSheetMetadatum>>
      getSignupSheetMetadata({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

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
