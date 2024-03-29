/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:20.943114
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesAttachmentActivityOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesAttachmentActivityFilter { none }

/// Creates a [PcoServicesAttachmentActivityQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesAttachmentActivityQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesAttachmentActivityOrder, String> _orderMap = {};
  static String orderString(PcoServicesAttachmentActivityOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesAttachmentActivityFilter, String> _filterMap = {};
  static String filterString(PcoServicesAttachmentActivityFilter filter) =>
      _filterMap[filter]!;

  PcoServicesAttachmentActivityQuery({
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

/// This class represents a PCO Services AttachmentActivity Object
///
/// - Application:        services
/// - Id:                 attachment_activity
/// - Type:               AttachmentActivity
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesAttachmentActivity.fromJson()` constructor.
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
/// Returned from the `open` attachment action.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `date` (ro) -> PCO: `date`
/// - `attachmentUrl` (ro) -> PCO: `attachment_url`
/// - `activityType` (ro) -> PCO: `activity_type`
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
///   "type": "AttachmentActivity",
///   "id": "1",
///   "attributes": {
///     "date": "2000-01-01",
///     "attachment_url": "string",
///     "activity_type": "string"
///   },
///   "relationships": {
///     "attachment": {
///       "data": {
///         "type": "Attachment",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesAttachmentActivity extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'AttachmentActivity';
  static const String kTypeId = 'attachment_activity';
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
  static const kDate = 'date';
  static const kAttachmentUrl = 'attachment_url';
  static const kActivityType = 'activity_type';

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
  String get date => _getAttribute<String>(kDate, '');
  String get attachmentUrl => _getAttribute<String>(kAttachmentUrl, '');
  String get activityType => _getAttribute<String>(kActivityType, '');

  // Class Constructors
  PcoServicesAttachmentActivity.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesAttachmentActivity.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesAttachmentActivity] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesAttachmentActivity(
      {String? id,
      String? date,
      String? attachmentUrl,
      String? activityType,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesAttachmentActivity.empty();
    obj._id = id;
    if (date != null) obj._attributes['date'] = date;
    if (attachmentUrl != null)
      obj._attributes['attachment_url'] = attachmentUrl;
    if (activityType != null) obj._attributes['activity_type'] = activityType;

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
