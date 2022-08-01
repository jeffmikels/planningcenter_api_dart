/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T15:11:03.724583
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesBlockoutScheduleConflictOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesBlockoutScheduleConflictFilter { none }

/// Creates a [PcoServicesBlockoutScheduleConflictQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesBlockoutScheduleConflictQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesBlockoutScheduleConflictOrder, String> _orderMap =
      {};
  static String orderString(PcoServicesBlockoutScheduleConflictOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesBlockoutScheduleConflictFilter, String>
      _filterMap = {};
  static String filterString(
          PcoServicesBlockoutScheduleConflictFilter filter) =>
      _filterMap[filter]!;

  PcoServicesBlockoutScheduleConflictQuery({
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
  }) : super();
}

/// This class represents a PCO Services BlockoutScheduleConflict Object
///
/// - Application:        services
/// - Id:                 blockout_schedule_conflict
/// - Type:               BlockoutScheduleConflict
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesBlockoutScheduleConflict.fromJson()` constructor.
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
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `dates` (ro) -> PCO: `dates`
/// - `organizationName` (ro) -> PCO: `organization_name`
/// - `personAvatar` (ro) -> PCO: `person_avatar`
/// - `personName` (ro) -> PCO: `person_name`
/// - `positionDisplayTimes` (ro) -> PCO: `position_display_times`
/// - `serviceTypeName` (ro) -> PCO: `service_type_name`
/// - `shortDates` (ro) -> PCO: `short_dates`
/// - `status` (ro) -> PCO: `status`
/// - `teamName` (ro) -> PCO: `team_name`
/// - `teamPositionName` (ro) -> PCO: `team_position_name`
/// - `sortDate` (ro) -> PCO: `sort_date`
/// - `isCanAcceptPartial` (ro) -> PCO: `can_accept_partial`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// NONE
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "BlockoutScheduleConflict",
///   "id": "1",
///   "attributes": {
///     "dates": "string",
///     "organization_name": "string",
///     "person_avatar": "string",
///     "person_name": "string",
///     "position_display_times": "string",
///     "service_type_name": "string",
///     "short_dates": "string",
///     "status": "string",
///     "team_name": "string",
///     "team_position_name": "string",
///     "sort_date": "2000-01-01T12:00:00Z",
///     "can_accept_partial": true
///   },
///   "relationships": {
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     },
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "plan_person": {
///       "data": {
///         "type": "PlanPerson",
///         "id": "1"
///       }
///     },
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesBlockoutScheduleConflict extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'BlockoutScheduleConflict';
  static const String kTypeId = 'blockout_schedule_conflict';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

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
  static const kDates = 'dates';
  static const kOrganizationName = 'organization_name';
  static const kPersonAvatar = 'person_avatar';
  static const kPersonName = 'person_name';
  static const kPositionDisplayTimes = 'position_display_times';
  static const kServiceTypeName = 'service_type_name';
  static const kShortDates = 'short_dates';
  static const kStatus = 'status';
  static const kTeamName = 'team_name';
  static const kTeamPositionName = 'team_position_name';
  static const kSortDate = 'sort_date';
  static const kCanAcceptPartial = 'can_accept_partial';

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
  String get dates => _attributes[kDates] ?? '';
  String get organizationName => _attributes[kOrganizationName] ?? '';
  String get personAvatar => _attributes[kPersonAvatar] ?? '';
  String get personName => _attributes[kPersonName] ?? '';
  String get positionDisplayTimes => _attributes[kPositionDisplayTimes] ?? '';
  String get serviceTypeName => _attributes[kServiceTypeName] ?? '';
  String get shortDates => _attributes[kShortDates] ?? '';
  String get status => _attributes[kStatus] ?? '';
  String get teamName => _attributes[kTeamName] ?? '';
  String get teamPositionName => _attributes[kTeamPositionName] ?? '';
  DateTime get sortDate => DateTime.parse(_attributes[kSortDate] ?? '');
  bool get isCanAcceptPartial => _attributes[kCanAcceptPartial] == true;

  // Class Constructors
  PcoServicesBlockoutScheduleConflict.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesBlockoutScheduleConflict.empty()
      : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesBlockoutScheduleConflict] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoServicesBlockoutScheduleConflict(
      {String? id,
      String? dates,
      String? organizationName,
      String? personAvatar,
      String? personName,
      String? positionDisplayTimes,
      String? serviceTypeName,
      String? shortDates,
      String? status,
      String? teamName,
      String? teamPositionName,
      DateTime? sortDate,
      bool? isCanAcceptPartial,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesBlockoutScheduleConflict.empty();
    obj._id = id;
    if (dates != null) obj._attributes['dates'] = dates;
    if (organizationName != null)
      obj._attributes['organization_name'] = organizationName;
    if (personAvatar != null) obj._attributes['person_avatar'] = personAvatar;
    if (personName != null) obj._attributes['person_name'] = personName;
    if (positionDisplayTimes != null)
      obj._attributes['position_display_times'] = positionDisplayTimes;
    if (serviceTypeName != null)
      obj._attributes['service_type_name'] = serviceTypeName;
    if (shortDates != null) obj._attributes['short_dates'] = shortDates;
    if (status != null) obj._attributes['status'] = status;
    if (teamName != null) obj._attributes['team_name'] = teamName;
    if (teamPositionName != null)
      obj._attributes['team_position_name'] = teamPositionName;
    if (sortDate != null)
      obj._attributes['sort_date'] = sortDate.toIso8601String();
    if (isCanAcceptPartial != null)
      obj._attributes['can_accept_partial'] = isCanAcceptPartial;

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

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
