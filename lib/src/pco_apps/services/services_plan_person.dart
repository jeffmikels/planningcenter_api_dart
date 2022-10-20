/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.494874
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesPlanPersonOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesPlanPersonFilter { none }

/// Creates a [PcoServicesPlanPersonQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeDeclinedPlanTimes`: include associated declined_plan_times
/// - `includePerson`: include associated person
/// - `includePlan`: include associated plan
/// - `includeTeam`: include associated team
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoServicesPlanPersonQuery(includes: ['a', 'b'])`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesPlanPersonQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesPlanPersonOrder, String> _orderMap = {};
  static String orderString(PcoServicesPlanPersonOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesPlanPersonFilter, String> _filterMap = {};
  static String filterString(PcoServicesPlanPersonFilter filter) =>
      _filterMap[filter]!;

  PcoServicesPlanPersonQuery({
    /// include associated declined_plan_times
    /// when true, adds `?include=declined_plan_times` to url
    bool includeDeclinedPlanTimes = false,

    /// include associated person
    /// when true, adds `?include=person` to url
    bool includePerson = false,

    /// include associated plan
    /// when true, adds `?include=plan` to url
    bool includePlan = false,

    /// include associated team
    /// when true, adds `?include=team` to url
    bool includeTeam = false,

    /// when true, adds `?include=declined_plan_times,person,plan,team` to url parameters
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
    if (includeAll || includeDeclinedPlanTimes)
      include.add('declined_plan_times');
    if (includeAll || includePerson) include.add('person');
    if (includeAll || includePlan) include.add('plan');
    if (includeAll || includeTeam) include.add('team');
  }
}

/// This class represents a PCO Services PlanPerson Object
///
/// - Application:        services
/// - Id:                 plan_person
/// - Type:               PlanPerson
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/plan_people
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/team_members
///
/// ## Instantiation
/// - Create a new instance using the `PcoServicesPlanPerson()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesPlanPerson.fromJson()` constructor.
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
/// A person scheduled within a specific plan.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `status` (rw) -> PCO: `status`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `notes` (rw) -> PCO: `notes`
/// - `declineReason` (rw) -> PCO: `decline_reason`
/// - `name` (ro) -> PCO: `name`
/// - `notificationChangedByName` (ro) -> PCO: `notification_changed_by_name`
/// - `notificationSenderName` (ro) -> PCO: `notification_sender_name`
/// - `teamPositionName` (rw) -> PCO: `team_position_name`
/// - `photoThumbnail` (ro) -> PCO: `photo_thumbnail`
/// - `scheduledByName` (ro) -> PCO: `scheduled_by_name`
/// - `statusUpdatedAt` (ro) -> PCO: `status_updated_at`
/// - `notificationChangedAt` (ro) -> PCO: `notification_changed_at`
/// - `notificationPreparedAt` (rw) -> PCO: `notification_prepared_at`
/// - `notificationReadAt` (ro) -> PCO: `notification_read_at`
/// - `notificationSentAt` (ro) -> PCO: `notification_sent_at`
/// - `isPrepareNotification` (rw) -> PCO: `prepare_notification`
/// - `isCanAcceptPartial` (ro) -> PCO: `can_accept_partial`
/// - `personId` (wo) -> PCO: `person_id`
/// - `respondsToId` (wo) -> PCO: `responds_to_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `plantime-planperson-declined_plan_times`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/declined_plan_times
/// - `person-planperson-person`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/person
/// - `plan-planperson-plan`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan
/// - `planpersontime-planperson-plan_person_times`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times
/// - `plantime-planperson-plan_times`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_times
/// - `team-planperson-team`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/team
///
/// Inbound Edges:
/// - `planperson-person-plan_people`: https://api.planningcenteronline.com/services/v2/people/1/plan_people
/// - `planperson-plan-team_members`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/team_members
/// - `planperson-team-plan_people`: https://api.planningcenteronline.com/services/v2/teams/1/plan_people
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PlanPerson",
///   "id": "1",
///   "attributes": {
///     "status": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "notes": "string",
///     "decline_reason": "string",
///     "name": "string",
///     "notification_changed_by_name": "string",
///     "notification_sender_name": "string",
///     "team_position_name": "string",
///     "photo_thumbnail": "string",
///     "status_updated_at": "2000-01-01T12:00:00Z",
///     "notification_changed_at": "2000-01-01T12:00:00Z",
///     "notification_prepared_at": "2000-01-01T12:00:00Z",
///     "notification_read_at": "2000-01-01T12:00:00Z",
///     "notification_sent_at": "2000-01-01T12:00:00Z",
///     "prepare_notification": true,
///     "can_accept_partial": true
///   },
///   "relationships": {
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
///     "scheduled_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     },
///     "team": {
///       "data": {
///         "type": "Team",
///         "id": "1"
///       }
///     },
///     "responds_to": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "times": {
///       "data": [
///         {
///           "type": "PlanTime",
///           "id": "1"
///         }
///       ]
///     },
///     "service_times": {
///       "data": [
///         {
///           "type": "PlanTime",
///           "id": "1"
///         }
///       ]
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
class PcoServicesPlanPerson extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PlanPerson';
  static const String kTypeId = 'plan_person';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/plan_people';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/team_members';

  /// possible includes with parameter ?include=a,b
  /// - `declined_plan_times`: include associated declined_plan_times
  /// - `person`: include associated person
  /// - `plan`: include associated plan
  /// - `team`: include associated team
  static List<String> get canInclude =>
      ['declined_plan_times', 'person', 'plan', 'team'];

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
  static const kStatus = 'status';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kNotes = 'notes';
  static const kDeclineReason = 'decline_reason';
  static const kName = 'name';
  static const kNotificationChangedByName = 'notification_changed_by_name';
  static const kNotificationSenderName = 'notification_sender_name';
  static const kTeamPositionName = 'team_position_name';
  static const kPhotoThumbnail = 'photo_thumbnail';
  static const kScheduledByName = 'scheduled_by_name';
  static const kStatusUpdatedAt = 'status_updated_at';
  static const kNotificationChangedAt = 'notification_changed_at';
  static const kNotificationPreparedAt = 'notification_prepared_at';
  static const kNotificationReadAt = 'notification_read_at';
  static const kNotificationSentAt = 'notification_sent_at';
  static const kPrepareNotification = 'prepare_notification';
  static const kCanAcceptPartial = 'can_accept_partial';
  static const kPersonId = 'person_id';
  static const kRespondsToId = 'responds_to_id';

  // getters and setters
  @override
  List<String> get createAllowed => [
        'person_id',
        'status',
        'decline_reason',
        'notes',
        'team_position_name',
        'responds_to_id',
        'prepare_notification',
        'notification_prepared_at'
      ];

  @override
  List<String> get updateAllowed => [
        'person_id',
        'status',
        'decline_reason',
        'notes',
        'team_position_name',
        'responds_to_id',
        'prepare_notification',
        'notification_prepared_at'
      ];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get status => _attributes[kStatus] ?? '';
  String get notes => _attributes[kNotes] ?? '';
  String get declineReason => _attributes[kDeclineReason] ?? '';
  String get name => _attributes[kName] ?? '';
  String get notificationChangedByName =>
      _attributes[kNotificationChangedByName] ?? '';
  String get notificationSenderName =>
      _attributes[kNotificationSenderName] ?? '';
  String get teamPositionName => _attributes[kTeamPositionName] ?? '';
  String get photoThumbnail => _attributes[kPhotoThumbnail] ?? '';
  String get scheduledByName => _attributes[kScheduledByName] ?? '';
  DateTime get statusUpdatedAt =>
      DateTime.parse(_attributes[kStatusUpdatedAt] ?? '');
  DateTime get notificationChangedAt =>
      DateTime.parse(_attributes[kNotificationChangedAt] ?? '');
  DateTime get notificationPreparedAt =>
      DateTime.parse(_attributes[kNotificationPreparedAt] ?? '');
  DateTime get notificationReadAt =>
      DateTime.parse(_attributes[kNotificationReadAt] ?? '');
  DateTime get notificationSentAt =>
      DateTime.parse(_attributes[kNotificationSentAt] ?? '');
  bool get isPrepareNotification => _attributes[kPrepareNotification] == true;
  bool get isCanAcceptPartial => _attributes[kCanAcceptPartial] == true;

  // setters for object attributes

  /// Accepts one of 'C', 'U', 'D', or 'Confirmed', 'Unconfirmed', or 'Declined'
  ///
  /// pass `null` to remove key from attributes
  set status(String? x) =>
      (x == null) ? _attributes.remove(kStatus) : _attributes[kStatus] = x;

  ///
  /// pass `null` to remove key from attributes
  set notes(String? x) =>
      (x == null) ? _attributes.remove(kNotes) : _attributes[kNotes] = x;

  ///
  /// pass `null` to remove key from attributes
  set declineReason(String? x) => (x == null)
      ? _attributes.remove(kDeclineReason)
      : _attributes[kDeclineReason] = x;

  ///
  /// pass `null` to remove key from attributes
  set teamPositionName(String? x) => (x == null)
      ? _attributes.remove(kTeamPositionName)
      : _attributes[kTeamPositionName] = x;

  ///
  /// pass `null` to remove key from attributes
  set notificationPreparedAt(DateTime? x) => (x == null)
      ? _attributes.remove(kNotificationPreparedAt)
      : _attributes[kNotificationPreparedAt] = x.toIso8601String();

  ///
  /// pass `null` to remove key from attributes
  set isPrepareNotification(bool? x) => (x == null)
      ? _attributes.remove(kPrepareNotification)
      : _attributes[kPrepareNotification] = x;

  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set personId(String? x) =>
      (x == null) ? _attributes.remove(kPersonId) : _attributes[kPersonId] = x;
  String get personId => _attributes[kPersonId] ?? '';

  ///
  /// pass `null` to remove key from attributes
  set respondsToId(String? x) => (x == null)
      ? _attributes.remove(kRespondsToId)
      : _attributes[kRespondsToId] = x;
  String get respondsToId => _attributes[kRespondsToId] ?? '';

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedDeclinedPlanTimes<T extends PcoResource>() =>
      (relationships['declined_plan_times'] as List?)?.cast<T>() ?? [];

  PcoServicesPerson? get includedPerson =>
      _firstOrNull<PcoServicesPerson>(relationships['person']);
  PcoServicesPlan? get includedPlan =>
      _firstOrNull<PcoServicesPlan>(relationships['plan']);
  PcoServicesTeam? get includedTeam =>
      _firstOrNull<PcoServicesTeam>(relationships['team']);

  // Class Constructors
  PcoServicesPlanPerson.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoServicesPlanPerson.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesPlanPerson] object using this endpoint: `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/team_members`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `personId`, `status`, `declineReason`, `notes`, `teamPositionName`, `respondsToId`, `isPrepareNotification`, `notificationPreparedAt`
  /// - FIELDS USED WHEN UPDATING: `personId`, `status`, `declineReason`, `notes`, `teamPositionName`, `respondsToId`, `isPrepareNotification`, `notificationPreparedAt`
  factory PcoServicesPlanPerson(
      {required String serviceTypeId,
      required String planId,
      String? id,
      String? status,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? notes,
      String? declineReason,
      String? name,
      String? notificationChangedByName,
      String? notificationSenderName,
      String? teamPositionName,
      String? photoThumbnail,
      String? scheduledByName,
      DateTime? statusUpdatedAt,
      DateTime? notificationChangedAt,
      DateTime? notificationPreparedAt,
      DateTime? notificationReadAt,
      DateTime? notificationSentAt,
      bool? isPrepareNotification,
      bool? isCanAcceptPartial,
      String? personId,
      String? respondsToId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesPlanPerson.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/team_members';
    if (status != null) obj._attributes['status'] = status;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (notes != null) obj._attributes['notes'] = notes;
    if (declineReason != null)
      obj._attributes['decline_reason'] = declineReason;
    if (name != null) obj._attributes['name'] = name;
    if (notificationChangedByName != null)
      obj._attributes['notification_changed_by_name'] =
          notificationChangedByName;
    if (notificationSenderName != null)
      obj._attributes['notification_sender_name'] = notificationSenderName;
    if (teamPositionName != null)
      obj._attributes['team_position_name'] = teamPositionName;
    if (photoThumbnail != null)
      obj._attributes['photo_thumbnail'] = photoThumbnail;
    if (scheduledByName != null)
      obj._attributes['scheduled_by_name'] = scheduledByName;
    if (statusUpdatedAt != null)
      obj._attributes['status_updated_at'] = statusUpdatedAt.toIso8601String();
    if (notificationChangedAt != null)
      obj._attributes['notification_changed_at'] =
          notificationChangedAt.toIso8601String();
    if (notificationPreparedAt != null)
      obj._attributes['notification_prepared_at'] =
          notificationPreparedAt.toIso8601String();
    if (notificationReadAt != null)
      obj._attributes['notification_read_at'] =
          notificationReadAt.toIso8601String();
    if (notificationSentAt != null)
      obj._attributes['notification_sent_at'] =
          notificationSentAt.toIso8601String();
    if (isPrepareNotification != null)
      obj._attributes['prepare_notification'] = isPrepareNotification;
    if (isCanAcceptPartial != null)
      obj._attributes['can_accept_partial'] = isCanAcceptPartial;
    if (personId != null) obj._attributes['person_id'] = personId;
    if (respondsToId != null) obj._attributes['responds_to_id'] = respondsToId;

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

  /// Will get a collection of [PcoServicesPlanPerson] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/plan_people`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPlanPerson>> getFromPerson(
    String personId, {
    String? id,
    PcoServicesPlanPersonQuery? query,
    bool includeAll = false,
    bool includeDeclinedPlanTimes = false,
    bool includePerson = false,
    bool includePlan = false,
    bool includeTeam = false,
  }) async {
    query ??= PcoServicesPlanPersonQuery();
    if (includeAll) query.include.addAll(PcoServicesPlanPerson.canInclude);
    if (includeDeclinedPlanTimes) query.include.add('declined_plan_times');
    if (includePerson) query.include.add('person');
    if (includePlan) query.include.add('plan');
    if (includeTeam) query.include.add('team');
    var url = '/services/v2/people/$personId/plan_people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPlanPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPlanPerson] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/team_members`
  ///
  /// Available Query Filters:
  /// - `confirmed`
  /// - `not_archived`
  /// - `not_deleted`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPlanPerson>>
      getTeamMembersFromServiceTypeAndPlan(
    String serviceTypeId,
    String planId, {
    PcoServicesPlanPersonQuery? query,
    bool includeAll = false,
    bool includeDeclinedPlanTimes = false,
    bool includePerson = false,
    bool includePlan = false,
    bool includeTeam = false,
  }) async {
    query ??= PcoServicesPlanPersonQuery();
    if (includeAll) query.include.addAll(PcoServicesPlanPerson.canInclude);
    if (includeDeclinedPlanTimes) query.include.add('declined_plan_times');
    if (includePerson) query.include.add('person');
    if (includePlan) query.include.add('plan');
    if (includeTeam) query.include.add('team');
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/team_members';

    return PcoCollection.fromApiCall<PcoServicesPlanPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPlanPerson] objects (expecting many)
  /// using a path like this: `/services/v2/teams/$teamId/plan_people`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPlanPerson>> getFromTeam(
    String teamId, {
    String? id,
    PcoServicesPlanPersonQuery? query,
    bool includeAll = false,
    bool includeDeclinedPlanTimes = false,
    bool includePerson = false,
    bool includePlan = false,
    bool includeTeam = false,
  }) async {
    query ??= PcoServicesPlanPersonQuery();
    if (includeAll) query.include.addAll(PcoServicesPlanPerson.canInclude);
    if (includeDeclinedPlanTimes) query.include.add('declined_plan_times');
    if (includePerson) query.include.add('person');
    if (includePlan) query.include.add('plan');
    if (includeTeam) query.include.add('team');
    var url = '/services/v2/teams/$teamId/plan_people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPlanPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/declined_plan_times`
  Future<PcoCollection<PcoServicesPlanTime>> getDeclinedPlanTimes(
      {PcoServicesPlanTimeQuery? query}) async {
    query ??= PcoServicesPlanTimeQuery();
    var url = '$apiEndpoint/declined_plan_times';
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/person`
  Future<PcoCollection<PcoServicesPerson>> getPerson(
      {PcoServicesPersonQuery? query}) async {
    query ??= PcoServicesPersonQuery();
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan`
  Future<PcoCollection<PcoServicesPlan>> getPlan(
      {PcoServicesPlanQuery? query}) async {
    query ??= PcoServicesPlanQuery();
    var url = '$apiEndpoint/plan';
    return PcoCollection.fromApiCall<PcoServicesPlan>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanPersonTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times`
  Future<PcoCollection<PcoServicesPlanPersonTime>> getPlanPersonTimes(
      {PcoServicesPlanPersonTimeQuery? query}) async {
    query ??= PcoServicesPlanPersonTimeQuery();
    var url = '$apiEndpoint/plan_person_times';
    return PcoCollection.fromApiCall<PcoServicesPlanPersonTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_times`
  Future<PcoCollection<PcoServicesPlanTime>> getPlanTimes(
      {PcoServicesPlanTimeQuery? query}) async {
    query ??= PcoServicesPlanTimeQuery();
    var url = '$apiEndpoint/plan_times';
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/team`
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
