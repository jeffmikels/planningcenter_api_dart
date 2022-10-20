/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.723364
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCalendarOrganizationOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCalendarOrganizationFilter { none }

/// Creates a [PcoCalendarOrganizationQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarOrganizationQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarOrganizationOrder, String> _orderMap = {};
  static String orderString(PcoCalendarOrganizationOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarOrganizationFilter, String> _filterMap = {};
  static String filterString(PcoCalendarOrganizationFilter filter) =>
      _filterMap[filter]!;

  PcoCalendarOrganizationQuery({
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

/// This class represents a PCO Calendar Organization Object
///
/// - Application:        calendar
/// - Id:                 organization
/// - Type:               Organization
/// - ApiVersion:         2021-07-20
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCalendarOrganization.fromJson()` constructor.
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
/// An administrative structure, usually representing a single church.
/// Contains date/time formatting and time zone preferences.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `timeZone` (ro) -> PCO: `time_zone`
/// - `isTwentyFourHourTime` (ro) -> PCO: `twenty_four_hour_time`
/// - `dateFormat` (ro) -> PCO: `date_format`
/// - `isOnboarding` (ro) -> PCO: `onboarding`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `attachment-organization-attachments`: https://api.planningcenteronline.com/calendar/v2/attachments
/// - `conflict-organization-conflicts`: https://api.planningcenteronline.com/calendar/v2/conflicts
/// - `eventinstance-organization-event_instances`: https://api.planningcenteronline.com/calendar/v2/event_instances
/// - `eventresourcerequest-organization-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests
/// - `event-organization-events`: https://api.planningcenteronline.com/calendar/v2/events
/// - `feed-organization-feeds`: https://api.planningcenteronline.com/calendar/v2/feeds
/// - `person-organization-people`: https://api.planningcenteronline.com/calendar/v2/people
/// - `reporttemplate-organization-report_templates`: https://api.planningcenteronline.com/calendar/v2/report_templates
/// - `resourceapprovalgroup-organization-resource_approval_groups`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups
/// - `resourcebooking-organization-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/resource_bookings
/// - `resourcefolder-organization-resource_folders`: https://api.planningcenteronline.com/calendar/v2/resource_folders
/// - `resourcequestion-organization-resource_questions`: https://api.planningcenteronline.com/calendar/v2/resource_questions
/// - `resource-organization-resources`: https://api.planningcenteronline.com/calendar/v2/resources
/// - `roomsetup-organization-room_setups`: https://api.planningcenteronline.com/calendar/v2/room_setups
/// - `taggroup-organization-tag_groups`: https://api.planningcenteronline.com/calendar/v2/tag_groups
/// - `tag-organization-tags`: https://api.planningcenteronline.com/calendar/v2/tags
///
/// Inbound Edges:
/// - `organization-person-organization`: https://api.planningcenteronline.com/calendar/v2/people/1/organization
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Organization",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "time_zone": "string",
///     "twenty_four_hour_time": true,
///     "date_format": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCalendarOrganization extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2021-07-20';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2';
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
  static const kName = 'name';
  static const kTimeZone = 'time_zone';
  static const kTwentyFourHourTime = 'twenty_four_hour_time';
  static const kDateFormat = 'date_format';
  static const kOnboarding = 'onboarding';

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
  String get timeZone => _attributes[kTimeZone] ?? '';
  bool get isTwentyFourHourTime => _attributes[kTwentyFourHourTime] == true;
  String get dateFormat => _attributes[kDateFormat] ?? '';
  bool get isOnboarding => _attributes[kOnboarding] == true;

  // Class Constructors
  PcoCalendarOrganization.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCalendarOrganization.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarOrganization] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCalendarOrganization(
      {String? id,
      String? name,
      String? timeZone,
      bool? isTwentyFourHourTime,
      String? dateFormat,
      bool? isOnboarding,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCalendarOrganization.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
    if (timeZone != null) obj._attributes['time_zone'] = timeZone;
    if (isTwentyFourHourTime != null)
      obj._attributes['twenty_four_hour_time'] = isTwentyFourHourTime;
    if (dateFormat != null) obj._attributes['date_format'] = dateFormat;
    if (isOnboarding != null) obj._attributes['onboarding'] = isOnboarding;

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

  /// Will get a collection of [PcoCalendarOrganization] objects (expecting many)
  /// using a path like this: `/calendar/v2/people/$personId/organization`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarOrganization>> getFromPerson(
    String personId, {
    String? id,
    PcoCalendarOrganizationQuery? query,
  }) async {
    query ??= PcoCalendarOrganizationQuery();

    var url = '/calendar/v2/people/$personId/organization';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarOrganization>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/attachments`
  Future<PcoCollection<PcoCalendarAttachment>> getAttachments(
      {PcoCalendarAttachmentQuery? query}) async {
    query ??= PcoCalendarAttachmentQuery();
    var url = '$apiEndpoint/attachments';
    return PcoCollection.fromApiCall<PcoCalendarAttachment>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarConflict] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/conflicts`
  ///
  /// Available Query Filters:
  /// - `future`
  /// - `resolved`
  /// - `unresolved`
  Future<PcoCollection<PcoCalendarConflict>> getConflicts(
      {PcoCalendarConflictQuery? query}) async {
    query ??= PcoCalendarConflictQuery();
    var url = '$apiEndpoint/conflicts';
    return PcoCollection.fromApiCall<PcoCalendarConflict>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEventInstance] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_instances`
  ///
  /// Available Query Filters:
  /// - `all`
  /// - `approved`
  /// - `approved_pending`
  /// - `approved_pending_rejected`
  /// - `approved_rejected`
  /// - `approver`
  /// - `approver_subscriber`
  /// - `future`
  /// - `lost`
  /// - `owner`
  /// - `owner_approver`
  /// - `owner_approver_subscriber`
  /// - `owner_subscriber`
  /// - `pending`
  /// - `pending_rejected`
  /// - `rejected`
  /// - `shared`
  /// - `subscriber`
  /// - `unresolved`
  Future<PcoCollection<PcoCalendarEventInstance>> getEventInstances(
      {PcoCalendarEventInstanceQuery? query}) async {
    query ??= PcoCalendarEventInstanceQuery();
    var url = '$apiEndpoint/event_instances';
    return PcoCollection.fromApiCall<PcoCalendarEventInstance>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests`
  Future<PcoCollection<PcoCalendarEventResourceRequest>>
      getEventResourceRequests(
          {PcoCalendarEventResourceRequestQuery? query}) async {
    query ??= PcoCalendarEventResourceRequestQuery();
    var url = '$apiEndpoint/event_resource_requests';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events`
  ///
  /// Available Query Filters:
  /// - `future`
  Future<PcoCollection<PcoCalendarEvent>> getEvents(
      {PcoCalendarEventQuery? query}) async {
    query ??= PcoCalendarEventQuery();
    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarFeed] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/feeds`
  Future<PcoCollection<PcoCalendarFeed>> getFeeds(
      {PcoCalendarFeedQuery? query}) async {
    query ??= PcoCalendarFeedQuery();
    var url = '$apiEndpoint/feeds';
    return PcoCollection.fromApiCall<PcoCalendarFeed>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/people`
  ///
  /// Available Query Filters:
  /// - `event_owners`
  Future<PcoCollection<PcoCalendarPerson>> getPeople(
      {PcoCalendarPersonQuery? query}) async {
    query ??= PcoCalendarPersonQuery();
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarReportTemplate] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/report_templates`
  Future<PcoCollection<PcoCalendarReportTemplate>> getReportTemplates(
      {PcoCalendarReportTemplateQuery? query}) async {
    query ??= PcoCalendarReportTemplateQuery();
    var url = '$apiEndpoint/report_templates';
    return PcoCollection.fromApiCall<PcoCalendarReportTemplate>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceApprovalGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_approval_groups`
  Future<PcoCollection<PcoCalendarResourceApprovalGroup>>
      getResourceApprovalGroups(
          {PcoCalendarResourceApprovalGroupQuery? query}) async {
    query ??= PcoCalendarResourceApprovalGroupQuery();
    var url = '$apiEndpoint/resource_approval_groups';
    return PcoCollection.fromApiCall<PcoCalendarResourceApprovalGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_bookings`
  ///
  /// Available Query Filters:
  /// - `approved`
  /// - `approved_pending`
  /// - `approved_pending_rejected`
  /// - `approved_rejected`
  /// - `future`
  /// - `pending`
  /// - `pending_rejected`
  /// - `rejected`
  /// - `resources`
  /// - `rooms`
  Future<PcoCollection<PcoCalendarResourceBooking>> getResourceBookings(
      {PcoCalendarResourceBookingQuery? query}) async {
    query ??= PcoCalendarResourceBookingQuery();
    var url = '$apiEndpoint/resource_bookings';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceFolder] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_folders`
  ///
  /// Available Query Filters:
  /// - `resources`
  /// - `rooms`
  Future<PcoCollection<PcoCalendarResourceFolder>> getResourceFolders(
      {PcoCalendarResourceFolderQuery? query}) async {
    query ??= PcoCalendarResourceFolderQuery();
    var url = '$apiEndpoint/resource_folders';
    return PcoCollection.fromApiCall<PcoCalendarResourceFolder>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceQuestion] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_questions`
  Future<PcoCollection<PcoCalendarResourceQuestion>> getResourceQuestions(
      {PcoCalendarResourceQuestionQuery? query}) async {
    query ??= PcoCalendarResourceQuestionQuery();
    var url = '$apiEndpoint/resource_questions';
    return PcoCollection.fromApiCall<PcoCalendarResourceQuestion>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources`
  ///
  /// Available Query Filters:
  /// - `resources`
  /// - `rooms`
  Future<PcoCollection<PcoCalendarResource>> getResources(
      {PcoCalendarResourceQuery? query}) async {
    query ??= PcoCalendarResourceQuery();
    var url = '$apiEndpoint/resources';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarRoomSetup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/room_setups`
  ///
  /// Available Query Filters:
  /// - `shared_room_setups`
  Future<PcoCollection<PcoCalendarRoomSetup>> getRoomSetups(
      {PcoCalendarRoomSetupQuery? query}) async {
    query ??= PcoCalendarRoomSetupQuery();
    var url = '$apiEndpoint/room_setups';
    return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarTagGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tag_groups`
  ///
  /// Available Query Filters:
  /// - `required`
  Future<PcoCollection<PcoCalendarTagGroup>> getTagGroups(
      {PcoCalendarTagGroupQuery? query}) async {
    query ??= PcoCalendarTagGroupQuery();
    var url = '$apiEndpoint/tag_groups';
    return PcoCollection.fromApiCall<PcoCalendarTagGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tags`
  ///
  /// Available Query Filters:
  /// - `individual`
  Future<PcoCollection<PcoCalendarTag>> getTags(
      {PcoCalendarTagQuery? query}) async {
    query ??= PcoCalendarTagQuery();
    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
