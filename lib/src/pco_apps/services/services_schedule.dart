/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.349563
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Services Schedule Object
///
/// - Application:        services
/// - Id:                 schedule
/// - Type:               Schedule
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/schedules
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesSchedule.fromJson()` constructor.
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
/// An instance of a PlanPerson with included data for displaying in a user's schedule
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `sortDate` (ro) -> PCO: `sort_date`
/// - `dates` (ro) -> PCO: `dates`
/// - `declineReason` (ro) -> PCO: `decline_reason`
/// - `organizationName` (ro) -> PCO: `organization_name`
/// - `organizationTimeZone` (ro) -> PCO: `organization_time_zone`
/// - `organizationTwentyFourHourTime` (ro) -> PCO: `organization_twenty_four_hour_time`
/// - `personName` (ro) -> PCO: `person_name`
/// - `positionDisplayTimes` (ro) -> PCO: `position_display_times`
/// - `respondsToName` (ro) -> PCO: `responds_to_name`
/// - `serviceTypeName` (ro) -> PCO: `service_type_name`
/// - `shortDates` (ro) -> PCO: `short_dates`
/// - `status` (ro) -> PCO: `status`
/// - `teamName` (ro) -> PCO: `team_name`
/// - `teamPositionName` (ro) -> PCO: `team_position_name`
/// - `isCanAcceptPartial` (ro) -> PCO: `can_accept_partial`
/// - `isCanAcceptPartialOneTime` (ro) -> PCO: `can_accept_partial_one_time`
/// - `isPlanVisible` (ro) -> PCO: `plan_visible`
/// - `isPlanVisibleToMe` (ro) -> PCO: `plan_visible_to_me`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `plan_times`: include associated plan_times
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
/// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `plantime-schedule-declined_plan_times`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/declined_plan_times
/// - `plantime-schedule-plan_times`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/plan_times
/// - `person-schedule-respond_to`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/respond_to
/// - `team-schedule-team`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/team
///
/// Inbound Edges:
/// - `schedule-person-schedules`: https://api.planningcenteronline.com/services/v2/people/1/schedules
/// - `schedule-plan-my_schedules`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/my_schedules
///
/// Actions:
/// - `accept`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/accept
/// - `decline`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/decline
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Schedule",
///   "id": "1",
///   "attributes": {
///     "sort_date": "2000-01-01T12:00:00Z",
///     "dates": "string",
///     "decline_reason": "string",
///     "organization_name": "string",
///     "organization_time_zone": "string",
///     "organization_twenty_four_hour_time": "string",
///     "person_name": "string",
///     "position_display_times": "string",
///     "responds_to_name": "string",
///     "service_type_name": "string",
///     "short_dates": "string",
///     "status": "string",
///     "team_name": "string",
///     "team_position_name": "string",
///     "can_accept_partial": true,
///     "can_accept_partial_one_time": true,
///     "plan_visible": true,
///     "plan_visible_to_me": true
///   },
///   "relationships": {
///     "person": {
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
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     },
///     "plan_person": {
///       "data": {
///         "type": "PlanPerson",
///         "id": "1"
///       }
///     },
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "team": {
///       "data": {
///         "type": "Team",
///         "id": "1"
///       }
///     },
///     "responds_to_person": {
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
///     }
///   }
/// }
/// ```
class PcoServicesSchedule extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Schedule';
  static const String kTypeId = 'schedule';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/schedules';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `plan_times`: include associated plan_times
  static List<String> get canInclude => ['plan_times'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static List<String> get canOrderBy => ['starts_at'];

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
  static const kDates = 'dates';
  static const kDeclineReason = 'decline_reason';
  static const kOrganizationName = 'organization_name';
  static const kOrganizationTimeZone = 'organization_time_zone';
  static const kOrganizationTwentyFourHourTime =
      'organization_twenty_four_hour_time';
  static const kPersonName = 'person_name';
  static const kPositionDisplayTimes = 'position_display_times';
  static const kRespondsToName = 'responds_to_name';
  static const kServiceTypeName = 'service_type_name';
  static const kShortDates = 'short_dates';
  static const kStatus = 'status';
  static const kTeamName = 'team_name';
  static const kTeamPositionName = 'team_position_name';
  static const kCanAcceptPartial = 'can_accept_partial';
  static const kCanAcceptPartialOneTime = 'can_accept_partial_one_time';
  static const kPlanVisible = 'plan_visible';
  static const kPlanVisibleToMe = 'plan_visible_to_me';

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
  String get dates => _attributes[kDates] ?? '';
  String get declineReason => _attributes[kDeclineReason] ?? '';
  String get organizationName => _attributes[kOrganizationName] ?? '';
  String get organizationTimeZone => _attributes[kOrganizationTimeZone] ?? '';
  String get organizationTwentyFourHourTime =>
      _attributes[kOrganizationTwentyFourHourTime] ?? '';
  String get personName => _attributes[kPersonName] ?? '';
  String get positionDisplayTimes => _attributes[kPositionDisplayTimes] ?? '';
  String get respondsToName => _attributes[kRespondsToName] ?? '';
  String get serviceTypeName => _attributes[kServiceTypeName] ?? '';
  String get shortDates => _attributes[kShortDates] ?? '';
  String get status => _attributes[kStatus] ?? '';
  String get teamName => _attributes[kTeamName] ?? '';
  String get teamPositionName => _attributes[kTeamPositionName] ?? '';
  bool get isCanAcceptPartial => _attributes[kCanAcceptPartial] == true;
  bool get isCanAcceptPartialOneTime =>
      _attributes[kCanAcceptPartialOneTime] == true;
  bool get isPlanVisible => _attributes[kPlanVisible] == true;
  bool get isPlanVisibleToMe => _attributes[kPlanVisibleToMe] == true;

  // typed getters for each relationship

  List<PcoServicesPlanTime> get includedPlanTimes =>
      (relationships['plan_times'] as List?)?.cast<PcoServicesPlanTime>() ?? [];

  // Class Constructors
  PcoServicesSchedule.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoServicesSchedule] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/schedules`
  ///
  /// Available Query Filters:
  /// - `after`
  /// Fetch schedules after the included `after` iso8601 date param. e.g. `?filter=after&after=2020-01-01T00:00:00Z`
  ///
  /// - `all`
  /// - `before`
  /// Fetch schedules before the included `before` iso8601 date param. e.g. `?filter=before&before=2020-01-01T00:00:00Z`
  ///
  /// - `future`
  /// - `not_across_organizations`
  /// - `past`
  static Future<PcoCollection<PcoServicesSchedule>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includePlanTimes = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePlanTimes) query.include.add('plan_times');
    var url = '/services/v2/people/$personId/schedules';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSchedule>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesSchedule] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/my_schedules`
  static Future<PcoCollection<PcoServicesSchedule>>
      getMySchedulesFromServiceTypeAndPlan(
    String serviceTypeId,
    String planId, {
    PlanningCenterApiQuery? query,
    bool includePlanTimes = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePlanTimes) query.include.add('plan_times');
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/my_schedules';

    return PcoCollection.fromApiCall<PcoServicesSchedule>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/schedules/1/declined_plan_times`
  Future<PcoCollection<PcoServicesPlanTime>> getDeclinedPlanTimes({
    PlanningCenterApiQuery? query,
    bool includeSplitTeamRehearsalAssignments = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeSplitTeamRehearsalAssignments)
      query.include.add('split_team_rehearsal_assignments');
    var url = '$apiEndpoint/declined_plan_times';
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/schedules/1/plan_times`
  Future<PcoCollection<PcoServicesPlanTime>> getPlanTimes({
    PlanningCenterApiQuery? query,
    bool includeSplitTeamRehearsalAssignments = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeSplitTeamRehearsalAssignments)
      query.include.add('split_team_rehearsal_assignments');
    var url = '$apiEndpoint/plan_times';
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/schedules/1/respond_to`
  Future<PcoCollection<PcoServicesPerson>> getRespondTo({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/respond_to';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/schedules/1/team`
  Future<PcoCollection<PcoServicesTeam>> getTeam({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includePeople = false,
    bool includePersonTeamPositionAssignments = false,
    bool includeServiceType = false,
    bool includeTeamLeaders = false,
    bool includeTeamPositions = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoServicesSchedule.canInclude);
    if (includePeople) query.include.add('people');
    if (includePersonTeamPositionAssignments)
      query.include.add('person_team_position_assignments');
    if (includeServiceType) query.include.add('service_type');
    if (includeTeamLeaders) query.include.add('team_leaders');
    if (includeTeamPositions) query.include.add('team_positions');
    var url = '$apiEndpoint/team';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `accept`
  ///
  /// Accept a Schedule
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/schedules/1/accept`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// If this isn't a split time schedule, or you want to accept all times, an empty JSON body is accepted.
  ///
  /// If the user wants to decline specific times you'll need to send the declined time IDs & a reason.
  ///
  /// A POST body should be formated...
  ///
  /// ```json
  /// {
  /// 	"data": {
  /// 		"type": "ScheduleAccept",
  /// 		"attributes": {
  /// 			"reason": "Because reasons"
  /// 		},
  /// 		"relationships": {
  /// 			"declined_plan_times": {
  /// 				"data": [
  ///           {
  /// 					  "type": "PlanTime",
  /// 					  "id": "1"
  /// 				  }
  ///         ]
  /// 			}
  /// 		}
  /// 	}
  /// }
  /// ```
  Future<PlanningCenterApiResponse> accept(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/accept';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `decline`
  ///
  /// Decline a Schedule
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/schedules/1/decline`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// If this is a split time request, all times will be declined.
  ///
  /// If you want to decline specific times see ScheduleAcceptAction.
  ///
  /// A POST body should be formated...
  ///
  /// ```json
  /// {
  /// 	"data": {
  /// 		"type": "ScheduleDecline",
  /// 		"attributes": {
  /// 			"reason": "A user supplied reason for declining the request or an empty string."
  /// 		},
  /// 		"relationships": null
  /// 	}
  /// }
  /// ```
  Future<PlanningCenterApiResponse> decline(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/decline';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
