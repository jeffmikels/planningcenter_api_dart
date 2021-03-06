/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.559370
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Calendar Organization Object
///
/// - Application:        calendar
/// - Id:                 organization
/// - Type:               Organization
/// - ApiVersion:         2020-04-08
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
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// NONE
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
/// NONE
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
  static const String kApiVersion = '2020-04-08';
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

  // Class Constructors
  PcoCalendarOrganization.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/attachments`
  Future<PcoCollection<PcoCalendarAttachment>> getAttachments({
    PlanningCenterApiQuery? query,
    bool includeEvent = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeEvent) query.include.add('event');
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
  Future<PcoCollection<PcoCalendarConflict>> getConflicts({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeResolvedBy = false,
    bool includeResource = false,
    bool includeWinner = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarOrganization.canInclude);
    if (includeResolvedBy) query.include.add('resolved_by');
    if (includeResource) query.include.add('resource');
    if (includeWinner) query.include.add('winner');
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
  Future<PcoCollection<PcoCalendarEventInstance>> getEventInstances({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
    bool includeResourceBookings = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarOrganization.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventTimes) query.include.add('event_times');
    if (includeResourceBookings) query.include.add('resource_bookings');
    if (includeTags) query.include.add('tags');
    var url = '$apiEndpoint/event_instances';
    return PcoCollection.fromApiCall<PcoCalendarEventInstance>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests`
  Future<PcoCollection<PcoCalendarEventResourceRequest>>
      getEventResourceRequests({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCreatedBy = false,
    bool includeEvent = false,
    bool includeResource = false,
    bool includeRoomSetup = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarOrganization.canInclude);
    if (includeCreatedBy) query.include.add('created_by');
    if (includeEvent) query.include.add('event');
    if (includeResource) query.include.add('resource');
    if (includeRoomSetup) query.include.add('room_setup');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '$apiEndpoint/event_resource_requests';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events`
  ///
  /// Available Query Filters:
  /// - `future`
  Future<PcoCollection<PcoCalendarEvent>> getEvents({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarOrganization.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarFeed] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/feeds`
  Future<PcoCollection<PcoCalendarFeed>> getFeeds({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/feeds';
    return PcoCollection.fromApiCall<PcoCalendarFeed>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/people`
  ///
  /// Available Query Filters:
  /// - `event_owners`
  Future<PcoCollection<PcoCalendarPerson>> getPeople({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarReportTemplate] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/report_templates`
  Future<PcoCollection<PcoCalendarReportTemplate>> getReportTemplates({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/report_templates';
    return PcoCollection.fromApiCall<PcoCalendarReportTemplate>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceApprovalGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_approval_groups`
  Future<PcoCollection<PcoCalendarResourceApprovalGroup>>
      getResourceApprovalGroups({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includePeople = false,
    bool includeResources = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarOrganization.canInclude);
    if (includePeople) query.include.add('people');
    if (includeResources) query.include.add('resources');
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
  Future<PcoCollection<PcoCalendarResourceBooking>> getResourceBookings({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEventInstance = false,
    bool includeEventResourceRequest = false,
    bool includeResource = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarOrganization.canInclude);
    if (includeEventInstance) query.include.add('event_instance');
    if (includeEventResourceRequest)
      query.include.add('event_resource_request');
    if (includeResource) query.include.add('resource');
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
  Future<PcoCollection<PcoCalendarResourceFolder>> getResourceFolders({
    PlanningCenterApiQuery? query,
    bool includeResources = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeResources) query.include.add('resources');
    var url = '$apiEndpoint/resource_folders';
    return PcoCollection.fromApiCall<PcoCalendarResourceFolder>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceQuestion] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_questions`
  Future<PcoCollection<PcoCalendarResourceQuestion>> getResourceQuestions({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

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
  Future<PcoCollection<PcoCalendarResource>> getResources({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeResourceApprovalGroups = false,
    bool includeResourceFolder = false,
    bool includeResourceQuestions = false,
    bool includeRoomSetups = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarOrganization.canInclude);
    if (includeResourceApprovalGroups)
      query.include.add('resource_approval_groups');
    if (includeResourceFolder) query.include.add('resource_folder');
    if (includeResourceQuestions) query.include.add('resource_questions');
    if (includeRoomSetups) query.include.add('room_setups');
    var url = '$apiEndpoint/resources';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarRoomSetup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/room_setups`
  ///
  /// Available Query Filters:
  /// - `shared_room_setups`
  Future<PcoCollection<PcoCalendarRoomSetup>> getRoomSetups({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeContainingResource = false,
    bool includeResourceSuggestions = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarOrganization.canInclude);
    if (includeContainingResource) query.include.add('containing_resource');
    if (includeResourceSuggestions) query.include.add('resource_suggestions');
    var url = '$apiEndpoint/room_setups';
    return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarTagGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tag_groups`
  ///
  /// Available Query Filters:
  /// - `required`
  Future<PcoCollection<PcoCalendarTagGroup>> getTagGroups({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvents = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarOrganization.canInclude);
    if (includeEvents) query.include.add('events');
    if (includeTags) query.include.add('tags');
    var url = '$apiEndpoint/tag_groups';
    return PcoCollection.fromApiCall<PcoCalendarTagGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tags`
  ///
  /// Available Query Filters:
  /// - `individual`
  Future<PcoCollection<PcoCalendarTag>> getTags({
    PlanningCenterApiQuery? query,
    bool includeTagGroup = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeTagGroup) query.include.add('tag_group');
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
