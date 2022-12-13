/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:26.151213
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoPeopleMailchimpSyncStatusOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleMailchimpSyncStatusFilter { none }

/// Creates a [PcoPeopleMailchimpSyncStatusQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleMailchimpSyncStatusQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleMailchimpSyncStatusOrder, String> _orderMap = {};
  static String orderString(PcoPeopleMailchimpSyncStatusOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleMailchimpSyncStatusFilter, String> _filterMap = {};
  static String filterString(PcoPeopleMailchimpSyncStatusFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleMailchimpSyncStatusQuery({
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

/// This class represents a PCO People MailchimpSyncStatus Object
///
/// - Application:        people
/// - Id:                 mailchimp_sync_status
/// - Type:               MailchimpSyncStatus
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleMailchimpSyncStatus.fromJson()` constructor.
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
/// The status of syncing a List with Mailchimp.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `status` (ro) -> PCO: `status`
/// - `error` (ro) -> PCO: `error`
/// - `progress` (ro) -> PCO: `progress`
/// - `completedAt` (ro) -> PCO: `completed_at`
/// - `segmentId` (ro) -> PCO: `segment_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `mailchimpsyncstatus-list-mailchimp_sync_status`: https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "MailchimpSyncStatus",
///   "id": "1",
///   "attributes": {
///     "status": "string",
///     "error": "string",
///     "progress": 1,
///     "completed_at": "2000-01-01T12:00:00Z",
///     "segment_id": 1
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeopleMailchimpSyncStatus extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'MailchimpSyncStatus';
  static const String kTypeId = 'mailchimp_sync_status';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status';
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
  static const kStatus = 'status';
  static const kError = 'error';
  static const kProgress = 'progress';
  static const kCompletedAt = 'completed_at';
  static const kSegmentId = 'segment_id';

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
  String get status => _attributes[kStatus] ?? '';
  String get error => _attributes[kError] ?? '';
  int get progress => _attributes[kProgress] ?? 0;
  DateTime get completedAt => DateTime.parse(_attributes[kCompletedAt] ?? '');
  int get segmentId => _attributes[kSegmentId] ?? 0;

  // Class Constructors
  PcoPeopleMailchimpSyncStatus.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleMailchimpSyncStatus.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleMailchimpSyncStatus] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeopleMailchimpSyncStatus(
      {String? id,
      String? status,
      String? error,
      int? progress,
      DateTime? completedAt,
      int? segmentId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleMailchimpSyncStatus.empty();
    obj._id = id;
    if (status != null) obj._attributes['status'] = status;
    if (error != null) obj._attributes['error'] = error;
    if (progress != null) obj._attributes['progress'] = progress;
    if (completedAt != null)
      obj._attributes['completed_at'] = completedAt.toIso8601String();
    if (segmentId != null) obj._attributes['segment_id'] = segmentId;

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

  /// Will get a collection of [PcoPeopleMailchimpSyncStatus] objects (expecting many)
  /// using a path like this: `/people/v2/lists/$listId/mailchimp_sync_status`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleMailchimpSyncStatus>> getFromList(
    String listId, {
    String? id,
    PcoPeopleMailchimpSyncStatusQuery? query,
  }) async {
    query ??= PcoPeopleMailchimpSyncStatusQuery();

    var url = '/people/v2/lists/$listId/mailchimp_sync_status';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMailchimpSyncStatus>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
