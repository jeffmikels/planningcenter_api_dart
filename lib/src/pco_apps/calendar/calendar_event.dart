/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:38.045730
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCalendarEventOrder { none }

/// Possible Inbound Filters:
/// - `future` -> `?filter=future` : -- no description
enum PcoCalendarEventFilter { future }

/// Creates a [PcoCalendarEventQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeAttachments`: include associated attachments
/// - `includeOwner`: include associated owner
/// - `includeTags`: include associated tags
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCalendarEventQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoCalendarEvent] objects can be requested with one or more of the following criteria:
/// - `whereApprovalStatus`: query on a specific approval_status, example: ?where[approval_status]=string
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `wherePercentApproved`: query on a specific percent_approved, example: ?where[percent_approved]=1
/// - `wherePercentRejected`: query on a specific percent_rejected, example: ?where[percent_rejected]=1
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// - `whereVisibleInChurchCenter`: query on a specific visible_in_church_center, example: ?where[visible_in_church_center]=true
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarEventQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarEventOrder, String> _orderMap = {};
  static String orderString(PcoCalendarEventOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarEventFilter, String> _filterMap = {
    PcoCalendarEventFilter.future: 'future',
  };
  static String filterString(PcoCalendarEventFilter filter) =>
      _filterMap[filter]!;

  PcoCalendarEventQuery({
    /// include associated attachments
    /// when true, adds `?include=attachments` to url
    bool includeAttachments = false,

    /// include associated owner
    /// when true, adds `?include=owner` to url
    bool includeOwner = false,

    /// include associated tags
    /// when true, adds `?include=tags` to url
    bool includeTags = false,

    /// when true, adds `?include=attachments,owner,tags` to url parameters
    bool includeAllRelated = false,

    /// Query by `approval_status`
    /// query on a specific approval_status, url example: ?where[approval_status]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereApprovalStatus,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,

    /// Query by `percent_approved`
    /// query on a specific percent_approved, url example: ?where[percent_approved]=1
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? wherePercentApproved,

    /// Query by `percent_rejected`
    /// query on a specific percent_rejected, url example: ?where[percent_rejected]=1
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? wherePercentRejected,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,

    /// Query by `visible_in_church_center`
    /// query on a specific visible_in_church_center, url example: ?where[visible_in_church_center]=true
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereVisibleInChurchCenter,
    PcoCalendarEventFilter? filterBy,

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
    if (includeAllRelated || includeAttachments) include.add('attachments');
    if (includeAllRelated || includeOwner) include.add('owner');
    if (includeAllRelated || includeTags) include.add('tags');

    if (whereApprovalStatus != null)
      where.add(
          PlanningCenterApiWhere.parse('approval_status', whereApprovalStatus));
    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (wherePercentApproved != null)
      where.add(PlanningCenterApiWhere.parse(
          'percent_approved', wherePercentApproved));
    if (wherePercentRejected != null)
      where.add(PlanningCenterApiWhere.parse(
          'percent_rejected', wherePercentRejected));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));
    if (whereVisibleInChurchCenter != null)
      where.add(PlanningCenterApiWhere.parse(
          'visible_in_church_center', whereVisibleInChurchCenter));
  }
}

/// This class represents a PCO Calendar Event Object
///
/// - Application:        calendar
/// - Id:                 event
/// - Type:               Event
/// - ApiVersion:         2021-07-20
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/events
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCalendarEvent.fromJson()` constructor.
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
/// An event.
///
/// May contain information such as who owns
/// the event, visibility on Church Center and a public-facing summary.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `approvalStatus` (ro) -> PCO: `approval_status`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `description` (ro) -> PCO: `description`
/// - `imageUrl` (ro) -> PCO: `image_url`
/// - `name` (ro) -> PCO: `name`
/// - `percentApproved` (ro) -> PCO: `percent_approved`
/// - `percentRejected` (ro) -> PCO: `percent_rejected`
/// - `registrationUrl` (ro) -> PCO: `registration_url`
/// - `summary` (ro) -> PCO: `summary`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `isVisibleInChurchCenter` (ro) -> PCO: `visible_in_church_center`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `attachment-event-attachments`: https://api.planningcenteronline.com/calendar/v2/events/1/attachments
/// - `conflict-event-conflicts`: https://api.planningcenteronline.com/calendar/v2/events/1/conflicts
/// - `eventinstance-event-event_instances`: https://api.planningcenteronline.com/calendar/v2/events/1/event_instances
/// - `eventresourcerequest-event-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/events/1/event_resource_requests
/// - `feed-event-feed`: https://api.planningcenteronline.com/calendar/v2/events/1/feed
/// - `person-event-owner`: https://api.planningcenteronline.com/calendar/v2/events/1/owner
/// - `resourcebooking-event-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/events/1/resource_bookings
/// - `tag-event-tags`: https://api.planningcenteronline.com/calendar/v2/events/1/tags
///
/// Inbound Edges:
/// - `event-attachment-event`: https://api.planningcenteronline.com/calendar/v2/attachments/1/event
/// - `event-conflict-winner`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/winner
/// - `event-eventinstance-event`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event
/// - `event-eventresourcerequest-event`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/event
/// - `event-eventtime-event`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times/1/event
/// - `event-organization-events`: https://api.planningcenteronline.com/calendar/v2/events
/// - `event-tag-events`: https://api.planningcenteronline.com/calendar/v2/tags/1/events
/// - `event-taggroup-events`: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/events
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Event",
///   "id": "1",
///   "attributes": {
///     "approval_status": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "description": "string",
///     "image_url": "string",
///     "name": "string",
///     "percent_approved": 1,
///     "percent_rejected": 1,
///     "registration_url": "string",
///     "summary": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "visible_in_church_center": true
///   },
///   "relationships": {
///     "owner": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCalendarEvent extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Event';
  static const String kTypeId = 'event';
  static const String kApiVersion = '2021-07-20';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/events';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `attachments`: include associated attachments
  /// - `owner`: include associated owner
  /// - `tags`: include associated tags
  static List<String> get canInclude => ['attachments', 'owner', 'tags'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `approval_status`: (URLParameter), query on a specific approval_status, example: ?where[approval_status]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `percent_approved`: (URLParameter), query on a specific percent_approved, example: ?where[percent_approved]=1
  /// - `percent_rejected`: (URLParameter), query on a specific percent_rejected, example: ?where[percent_rejected]=1
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  /// - `visible_in_church_center`: (URLParameter), query on a specific visible_in_church_center, example: ?where[visible_in_church_center]=true
  static List<String> get canQuery => [
        'approval_status',
        'created_at',
        'name',
        'percent_approved',
        'percent_rejected',
        'updated_at',
        'visible_in_church_center'
      ];

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
  static const kApprovalStatus = 'approval_status';
  static const kCreatedAt = 'created_at';
  static const kDescription = 'description';
  static const kImageUrl = 'image_url';
  static const kName = 'name';
  static const kPercentApproved = 'percent_approved';
  static const kPercentRejected = 'percent_rejected';
  static const kRegistrationUrl = 'registration_url';
  static const kSummary = 'summary';
  static const kUpdatedAt = 'updated_at';
  static const kVisibleInChurchCenter = 'visible_in_church_center';

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
  String get approvalStatus => _attributes[kApprovalStatus] ?? '';
  String get description => _attributes[kDescription] ?? '';
  String get imageUrl => _attributes[kImageUrl] ?? '';
  String get name => _attributes[kName] ?? '';
  int get percentApproved => _attributes[kPercentApproved] ?? 0;
  int get percentRejected => _attributes[kPercentRejected] ?? 0;
  String get registrationUrl => _attributes[kRegistrationUrl] ?? '';
  String get summary => _attributes[kSummary] ?? '';
  bool get isVisibleInChurchCenter =>
      _attributes[kVisibleInChurchCenter] == true;

  // typed getters for each relationship

  List<PcoCalendarAttachment> get includedAttachments =>
      (relationships['attachments'] as List?)?.cast<PcoCalendarAttachment>() ??
      [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedOwner<T extends PcoResource>() =>
      (relationships['owner'] as List?)?.cast<T>() ?? [];

  List<PcoCalendarTag> get includedTags =>
      (relationships['tags'] as List?)?.cast<PcoCalendarTag>() ?? [];

  // Class Constructors
  PcoCalendarEvent.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCalendarEvent.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarEvent] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCalendarEvent(
      {String? id,
      String? approvalStatus,
      DateTime? createdAt,
      String? description,
      String? imageUrl,
      String? name,
      int? percentApproved,
      int? percentRejected,
      String? registrationUrl,
      String? summary,
      DateTime? updatedAt,
      bool? isVisibleInChurchCenter,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCalendarEvent.empty();
    obj._id = id;
    if (approvalStatus != null)
      obj._attributes['approval_status'] = approvalStatus;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (description != null) obj._attributes['description'] = description;
    if (imageUrl != null) obj._attributes['image_url'] = imageUrl;
    if (name != null) obj._attributes['name'] = name;
    if (percentApproved != null)
      obj._attributes['percent_approved'] = percentApproved;
    if (percentRejected != null)
      obj._attributes['percent_rejected'] = percentRejected;
    if (registrationUrl != null)
      obj._attributes['registration_url'] = registrationUrl;
    if (summary != null) obj._attributes['summary'] = summary;
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (isVisibleInChurchCenter != null)
      obj._attributes['visible_in_church_center'] = isVisibleInChurchCenter;

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

  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `/calendar/v2/events`
  ///
  /// Available Query Filters:
  /// - `future`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEvent>> get({
    String? id,
    PcoCalendarEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCalendarEvent] object
  /// using a path like this: `/calendar/v2/events/[id]`
  ///
  /// Available Query Filters:
  /// - `future`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCalendarEvent?> getSingle(
    String id, {
    PcoCalendarEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventQuery();
    if (includeAllRelated) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/events/$id';
    var retval = await PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `/calendar/v2/events`
  ///
  /// Available Query Filters:
  /// - `future`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCalendarEvent>> getAll({
    String? id,
    PcoCalendarEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `/calendar/v2/attachments/$attachmentId/event`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEvent>> getFromAttachment(
    String attachmentId, {
    PcoCalendarEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/attachments/$attachmentId/event';

    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `/calendar/v2/conflicts/$conflictId/winner`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEvent>> getWinnerFromConflict(
    String conflictId, {
    PcoCalendarEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/conflicts/$conflictId/winner';

    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `/calendar/v2/event_instances/$eventInstanceId/event`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEvent>> getFromEventInstance(
    String eventInstanceId, {
    PcoCalendarEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/event_instances/$eventInstanceId/event';

    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `/calendar/v2/event_resource_requests/$eventResourceRequestId/event`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEvent>> getFromEventResourceRequest(
    String eventResourceRequestId, {
    PcoCalendarEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url =
        '/calendar/v2/event_resource_requests/$eventResourceRequestId/event';

    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `/calendar/v2/event_instances/$eventInstanceId/event_times/$eventTimeId/event`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEvent>>
      getFromEventInstanceAndEventTime(
    String eventInstanceId,
    String eventTimeId, {
    PcoCalendarEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url =
        '/calendar/v2/event_instances/$eventInstanceId/event_times/$eventTimeId/event';

    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `/calendar/v2/tags/$tagId/events`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEvent>> getFromTag(
    String tagId, {
    String? id,
    PcoCalendarEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/tags/$tagId/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCalendarEvent] object
  /// using a path like this: `/calendar/v2/tags/$tagId/events/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCalendarEvent?> getSingleFromTag(
    String tagId,
    String id, {
    PcoCalendarEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventQuery();
    if (includeAllRelated) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/tags/$tagId/events/$id';
    var retval = await PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `/calendar/v2/tags/$tagId/events`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCalendarEvent>> getAllFromTag(
    String tagId, {
    String? id,
    PcoCalendarEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/tags/$tagId/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `/calendar/v2/tag_groups/$tagGroupId/events`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEvent>> getFromTagGroup(
    String tagGroupId, {
    String? id,
    PcoCalendarEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/tag_groups/$tagGroupId/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCalendarEvent] object
  /// using a path like this: `/calendar/v2/tag_groups/$tagGroupId/events/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCalendarEvent?> getSingleFromTagGroup(
    String tagGroupId,
    String id, {
    PcoCalendarEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventQuery();
    if (includeAllRelated) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/tag_groups/$tagGroupId/events/$id';
    var retval = await PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `/calendar/v2/tag_groups/$tagGroupId/events`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCalendarEvent>> getAllFromTagGroup(
    String tagGroupId, {
    String? id,
    PcoCalendarEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/tag_groups/$tagGroupId/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/attachments`
  Future<PcoCollection<PcoCalendarAttachment>> getAttachments(
      {PcoCalendarAttachmentQuery? query}) async {
    query ??= PcoCalendarAttachmentQuery();
    var url = '$apiEndpoint/attachments';
    return PcoCollection.fromApiCall<PcoCalendarAttachment>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarConflict] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/conflicts`
  Future<PcoCollection<PcoCalendarConflict>> getConflicts(
      {PcoCalendarConflictQuery? query}) async {
    query ??= PcoCalendarConflictQuery();
    var url = '$apiEndpoint/conflicts';
    return PcoCollection.fromApiCall<PcoCalendarConflict>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEventInstance] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/event_instances`
  ///
  /// Available Query Filters:
  /// - `future`
  Future<PcoCollection<PcoCalendarEventInstance>> getEventInstances(
      {PcoCalendarEventInstanceQuery? query}) async {
    query ??= PcoCalendarEventInstanceQuery();
    var url = '$apiEndpoint/event_instances';
    return PcoCollection.fromApiCall<PcoCalendarEventInstance>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/event_resource_requests`
  Future<PcoCollection<PcoCalendarEventResourceRequest>>
      getEventResourceRequests(
          {PcoCalendarEventResourceRequestQuery? query}) async {
    query ??= PcoCalendarEventResourceRequestQuery();
    var url = '$apiEndpoint/event_resource_requests';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarFeed] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/feed`
  Future<PcoCollection<PcoCalendarFeed>> getFeed(
      {PcoCalendarFeedQuery? query}) async {
    query ??= PcoCalendarFeedQuery();
    var url = '$apiEndpoint/feed';
    return PcoCollection.fromApiCall<PcoCalendarFeed>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/owner`
  Future<PcoCollection<PcoCalendarPerson>> getOwner(
      {PcoCalendarPersonQuery? query}) async {
    query ??= PcoCalendarPersonQuery();
    var url = '$apiEndpoint/owner';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/resource_bookings`
  ///
  /// Available Query Filters:
  /// - `future`
  Future<PcoCollection<PcoCalendarResourceBooking>> getResourceBookings(
      {PcoCalendarResourceBookingQuery? query}) async {
    query ??= PcoCalendarResourceBookingQuery();
    var url = '$apiEndpoint/resource_bookings';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/tags`
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
