/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T15:11:03.905088
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `appName` -> `?order=app_name`
/// - `bouncedAt` -> `?order=bounced_at`
/// - `createdAt` -> `?order=created_at`
/// - `deliveryStatus` -> `?order=delivery_status`
/// - `file` -> `?order=file`
/// - `fromAddress` -> `?order=from_address`
/// - `fromName` -> `?order=from_name`
/// - `kind` -> `?order=kind`
/// - `rejectReason` -> `?order=reject_reason`
/// - `rejectionNotificationSentAt` -> `?order=rejection_notification_sent_at`
/// - `sentAt` -> `?order=sent_at`
/// - `subject` -> `?order=subject`
/// - `toAddresses` -> `?order=to_addresses`
enum PcoPeopleMessageOrder {
  appName,
  bouncedAt,
  createdAt,
  deliveryStatus,
  file,
  fromAddress,
  fromName,
  kind,
  rejectReason,
  rejectionNotificationSentAt,
  sentAt,
  subject,
  toAddresses
}

/// Possible Inbound Filters:
/// - `createdAfter` -> `?filter=created_after` : -- no description
enum PcoPeopleMessageFilter { createdAfter }

/// Creates a [PcoPeopleMessageQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeMessageGroup`: include associated message_group
/// - `includeTo`: include associated to
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleMessageQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleMessage] objects can be requested with one or more of the following criteria:
/// - `whereAppName`: query on a specific app_name, example: ?where[app_name]=string
/// - `whereBouncedAt`: query on a specific bounced_at, example: ?where[bounced_at]=2000-01-01T12:00:00Z
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereDeliveryStatus`: query on a specific delivery_status, example: ?where[delivery_status]=string
/// - `whereFile`: query on a specific file, example: ?where[file]=string
/// - `whereFromAddress`: query on a specific from_address, example: ?where[from_address]=string
/// - `whereKind`: query on a specific kind, example: ?where[kind]=value
/// - `whereRejectReason`: query on a specific reject_reason, example: ?where[reject_reason]=string
/// - `whereRejectionNotificationSentAt`: query on a specific rejection_notification_sent_at, example: ?where[rejection_notification_sent_at]=2000-01-01T12:00:00Z
/// - `whereSentAt`: query on a specific sent_at, example: ?where[sent_at]=2000-01-01T12:00:00Z
/// - `whereSubject`: query on a specific subject, example: ?where[subject]=string
/// - `whereToAddresses`: query on a specific to_addresses, example: ?where[to_addresses]=string
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoPeopleMessageOrder.appName` : will order by `app_name`
/// - `PcoPeopleMessageOrder.bouncedAt` : will order by `bounced_at`
/// - `PcoPeopleMessageOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleMessageOrder.deliveryStatus` : will order by `delivery_status`
/// - `PcoPeopleMessageOrder.file` : will order by `file`
/// - `PcoPeopleMessageOrder.fromAddress` : will order by `from_address`
/// - `PcoPeopleMessageOrder.fromName` : will order by `from_name`
/// - `PcoPeopleMessageOrder.kind` : will order by `kind`
/// - `PcoPeopleMessageOrder.rejectReason` : will order by `reject_reason`
/// - `PcoPeopleMessageOrder.rejectionNotificationSentAt` : will order by `rejection_notification_sent_at`
/// - `PcoPeopleMessageOrder.sentAt` : will order by `sent_at`
/// - `PcoPeopleMessageOrder.subject` : will order by `subject`
/// - `PcoPeopleMessageOrder.toAddresses` : will order by `to_addresses`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleMessageQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleMessageOrder, String> _orderMap = {
    PcoPeopleMessageOrder.appName: 'app_name',
    PcoPeopleMessageOrder.bouncedAt: 'bounced_at',
    PcoPeopleMessageOrder.createdAt: 'created_at',
    PcoPeopleMessageOrder.deliveryStatus: 'delivery_status',
    PcoPeopleMessageOrder.file: 'file',
    PcoPeopleMessageOrder.fromAddress: 'from_address',
    PcoPeopleMessageOrder.fromName: 'from_name',
    PcoPeopleMessageOrder.kind: 'kind',
    PcoPeopleMessageOrder.rejectReason: 'reject_reason',
    PcoPeopleMessageOrder.rejectionNotificationSentAt:
        'rejection_notification_sent_at',
    PcoPeopleMessageOrder.sentAt: 'sent_at',
    PcoPeopleMessageOrder.subject: 'subject',
    PcoPeopleMessageOrder.toAddresses: 'to_addresses',
  };
  static String orderString(PcoPeopleMessageOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleMessageFilter, String> _filterMap = {
    PcoPeopleMessageFilter.createdAfter: 'created_after',
  };
  static String filterString(PcoPeopleMessageFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleMessageQuery({
    /// include associated message_group
    /// when true, adds `?include=message_group` to url
    bool includeMessageGroup = false,

    /// include associated to
    /// when true, adds `?include=to` to url
    bool includeTo = false,

    /// when true, adds `?include=message_group,to` to url parameters
    bool includeAll = false,

    /// Query by `app_name`
    /// query on a specific app_name, url example: ?where[app_name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereAppName,

    /// Query by `bounced_at`
    /// query on a specific bounced_at, url example: ?where[bounced_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereBouncedAt,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `delivery_status`
    /// query on a specific delivery_status, url example: ?where[delivery_status]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereDeliveryStatus,

    /// Query by `file`
    /// query on a specific file, url example: ?where[file]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereFile,

    /// Query by `from_address`
    /// query on a specific from_address, url example: ?where[from_address]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereFromAddress,

    /// Query by `kind`
    /// query on a specific kind, url example: ?where[kind]=value
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereKind,

    /// Query by `reject_reason`
    /// query on a specific reject_reason, url example: ?where[reject_reason]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereRejectReason,

    /// Query by `rejection_notification_sent_at`
    /// query on a specific rejection_notification_sent_at, url example: ?where[rejection_notification_sent_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereRejectionNotificationSentAt,

    /// Query by `sent_at`
    /// query on a specific sent_at, url example: ?where[sent_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereSentAt,

    /// Query by `subject`
    /// query on a specific subject, url example: ?where[subject]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereSubject,

    /// Query by `to_addresses`
    /// query on a specific to_addresses, url example: ?where[to_addresses]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereToAddresses,
    PcoPeopleMessageFilter? filterBy,
    PcoPeopleMessageOrder? orderBy,

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
    if (includeAll || includeMessageGroup) include.add('message_group');
    if (includeAll || includeTo) include.add('to');

    if (whereAppName != null)
      where.add(PlanningCenterApiWhere.parse('app_name', whereAppName));
    if (whereBouncedAt != null)
      where.add(PlanningCenterApiWhere.parse('bounced_at', whereBouncedAt));
    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereDeliveryStatus != null)
      where.add(
          PlanningCenterApiWhere.parse('delivery_status', whereDeliveryStatus));
    if (whereFile != null)
      where.add(PlanningCenterApiWhere.parse('file', whereFile));
    if (whereFromAddress != null)
      where.add(PlanningCenterApiWhere.parse('from_address', whereFromAddress));
    if (whereKind != null)
      where.add(PlanningCenterApiWhere.parse('kind', whereKind));
    if (whereRejectReason != null)
      where.add(
          PlanningCenterApiWhere.parse('reject_reason', whereRejectReason));
    if (whereRejectionNotificationSentAt != null)
      where.add(PlanningCenterApiWhere.parse(
          'rejection_notification_sent_at', whereRejectionNotificationSentAt));
    if (whereSentAt != null)
      where.add(PlanningCenterApiWhere.parse('sent_at', whereSentAt));
    if (whereSubject != null)
      where.add(PlanningCenterApiWhere.parse('subject', whereSubject));
    if (whereToAddresses != null)
      where.add(PlanningCenterApiWhere.parse('to_addresses', whereToAddresses));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People Message Object
///
/// - Application:        people
/// - Id:                 message
/// - Type:               Message
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/messages
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleMessage.fromJson()` constructor.
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
/// A message is an individual email or sms text sent to a member. Every message has a parent message group.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `kind` (ro) -> PCO: `kind`
/// - `toAddresses` (ro) -> PCO: `to_addresses`
/// - `subject` (ro) -> PCO: `subject`
/// - `file` (ro) -> PCO: `file`
/// - `deliveryStatus` (ro) -> PCO: `delivery_status`
/// - `rejectReason` (ro) -> PCO: `reject_reason`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `sentAt` (ro) -> PCO: `sent_at`
/// - `bouncedAt` (ro) -> PCO: `bounced_at`
/// - `rejectionNotificationSentAt` (ro) -> PCO: `rejection_notification_sent_at`
/// - `fromName` (ro) -> PCO: `from_name`
/// - `fromAddress` (ro) -> PCO: `from_address`
/// - `readAt` (ro) -> PCO: `read_at`
/// - `appName` (ro) -> PCO: `app_name`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `messagegroup-message-message_group`: https://api.planningcenteronline.com/people/v2/messages/1/message_group
/// - `person-message-to`: https://api.planningcenteronline.com/people/v2/messages/1/to
///
/// Inbound Edges:
/// - `message-messagegroup-messages`: https://api.planningcenteronline.com/people/v2/message_groups/1/messages
/// - `message-organization-messages`: https://api.planningcenteronline.com/people/v2/messages
/// - `message-person-messages`: https://api.planningcenteronline.com/people/v2/people/1/messages
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Message",
///   "id": "1",
///   "attributes": {
///     "kind": "value",
///     "to_addresses": "string",
///     "subject": "string",
///     "file": "string",
///     "delivery_status": "string",
///     "reject_reason": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "sent_at": "2000-01-01T12:00:00Z",
///     "bounced_at": "2000-01-01T12:00:00Z",
///     "rejection_notification_sent_at": "2000-01-01T12:00:00Z",
///     "from_name": "string",
///     "from_address": "string",
///     "read_at": "2000-01-01T12:00:00Z",
///     "app_name": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeopleMessage extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Message';
  static const String kTypeId = 'message';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/messages';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `message_group`: include associated message_group
  /// - `to`: include associated to
  static List<String> get canInclude => ['message_group', 'to'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `app_name`: (URLParameter), query on a specific app_name, example: ?where[app_name]=string
  /// - `bounced_at`: (URLParameter), query on a specific bounced_at, example: ?where[bounced_at]=2000-01-01T12:00:00Z
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `delivery_status`: (URLParameter), query on a specific delivery_status, example: ?where[delivery_status]=string
  /// - `file`: (URLParameter), query on a specific file, example: ?where[file]=string
  /// - `from_address`: (URLParameter), query on a specific from_address, example: ?where[from_address]=string
  /// - `kind`: (URLParameter), query on a specific kind, example: ?where[kind]=value
  /// - `reject_reason`: (URLParameter), query on a specific reject_reason, example: ?where[reject_reason]=string
  /// - `rejection_notification_sent_at`: (URLParameter), query on a specific rejection_notification_sent_at, example: ?where[rejection_notification_sent_at]=2000-01-01T12:00:00Z
  /// - `sent_at`: (URLParameter), query on a specific sent_at, example: ?where[sent_at]=2000-01-01T12:00:00Z
  /// - `subject`: (URLParameter), query on a specific subject, example: ?where[subject]=string
  /// - `to_addresses`: (URLParameter), query on a specific to_addresses, example: ?where[to_addresses]=string
  static List<String> get canQuery => [
        'app_name',
        'bounced_at',
        'created_at',
        'delivery_status',
        'file',
        'from_address',
        'kind',
        'reject_reason',
        'rejection_notification_sent_at',
        'sent_at',
        'subject',
        'to_addresses'
      ];

  /// possible orderings with parameter ?order=
  /// - `app_name`: (URLParameter), prefix with a hyphen (-app_name) to reverse the order
  /// - `bounced_at`: (URLParameter), prefix with a hyphen (-bounced_at) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `delivery_status`: (URLParameter), prefix with a hyphen (-delivery_status) to reverse the order
  /// - `file`: (URLParameter), prefix with a hyphen (-file) to reverse the order
  /// - `from_address`: (URLParameter), prefix with a hyphen (-from_address) to reverse the order
  /// - `from_name`: (URLParameter), prefix with a hyphen (-from_name) to reverse the order
  /// - `kind`: (URLParameter), prefix with a hyphen (-kind) to reverse the order
  /// - `reject_reason`: (URLParameter), prefix with a hyphen (-reject_reason) to reverse the order
  /// - `rejection_notification_sent_at`: (URLParameter), prefix with a hyphen (-rejection_notification_sent_at) to reverse the order
  /// - `sent_at`: (URLParameter), prefix with a hyphen (-sent_at) to reverse the order
  /// - `subject`: (URLParameter), prefix with a hyphen (-subject) to reverse the order
  /// - `to_addresses`: (URLParameter), prefix with a hyphen (-to_addresses) to reverse the order
  static List<String> get canOrderBy => [
        'app_name',
        'bounced_at',
        'created_at',
        'delivery_status',
        'file',
        'from_address',
        'from_name',
        'kind',
        'reject_reason',
        'rejection_notification_sent_at',
        'sent_at',
        'subject',
        'to_addresses'
      ];

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
  static const kKind = 'kind';
  static const kToAddresses = 'to_addresses';
  static const kSubject = 'subject';
  static const kFile = 'file';
  static const kDeliveryStatus = 'delivery_status';
  static const kRejectReason = 'reject_reason';
  static const kCreatedAt = 'created_at';
  static const kSentAt = 'sent_at';
  static const kBouncedAt = 'bounced_at';
  static const kRejectionNotificationSentAt = 'rejection_notification_sent_at';
  static const kFromName = 'from_name';
  static const kFromAddress = 'from_address';
  static const kReadAt = 'read_at';
  static const kAppName = 'app_name';

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
  String get kind => _attributes[kKind] ?? '';
  String get toAddresses => _attributes[kToAddresses] ?? '';
  String get subject => _attributes[kSubject] ?? '';
  String get file => _attributes[kFile] ?? '';
  String get deliveryStatus => _attributes[kDeliveryStatus] ?? '';
  String get rejectReason => _attributes[kRejectReason] ?? '';
  DateTime get sentAt => DateTime.parse(_attributes[kSentAt] ?? '');
  DateTime get bouncedAt => DateTime.parse(_attributes[kBouncedAt] ?? '');
  DateTime get rejectionNotificationSentAt =>
      DateTime.parse(_attributes[kRejectionNotificationSentAt] ?? '');
  String get fromName => _attributes[kFromName] ?? '';
  String get fromAddress => _attributes[kFromAddress] ?? '';
  DateTime get readAt => DateTime.parse(_attributes[kReadAt] ?? '');
  String get appName => _attributes[kAppName] ?? '';

  // typed getters for each relationship

  PcoPeopleMessageGroup? get includedMessageGroup =>
      _firstOrNull<PcoPeopleMessageGroup>(relationships['message_group']);

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedTo<T extends PcoResource>() =>
      (relationships['to'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoPeopleMessage.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleMessage.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleMessage] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoPeopleMessage(
      {String? id,
      String? kind,
      String? toAddresses,
      String? subject,
      String? file,
      String? deliveryStatus,
      String? rejectReason,
      DateTime? createdAt,
      DateTime? sentAt,
      DateTime? bouncedAt,
      DateTime? rejectionNotificationSentAt,
      String? fromName,
      String? fromAddress,
      DateTime? readAt,
      String? appName,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleMessage.empty();
    obj._id = id;
    if (kind != null) obj._attributes['kind'] = kind;
    if (toAddresses != null) obj._attributes['to_addresses'] = toAddresses;
    if (subject != null) obj._attributes['subject'] = subject;
    if (file != null) obj._attributes['file'] = file;
    if (deliveryStatus != null)
      obj._attributes['delivery_status'] = deliveryStatus;
    if (rejectReason != null) obj._attributes['reject_reason'] = rejectReason;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (sentAt != null) obj._attributes['sent_at'] = sentAt.toIso8601String();
    if (bouncedAt != null)
      obj._attributes['bounced_at'] = bouncedAt.toIso8601String();
    if (rejectionNotificationSentAt != null)
      obj._attributes['rejection_notification_sent_at'] =
          rejectionNotificationSentAt.toIso8601String();
    if (fromName != null) obj._attributes['from_name'] = fromName;
    if (fromAddress != null) obj._attributes['from_address'] = fromAddress;
    if (readAt != null) obj._attributes['read_at'] = readAt.toIso8601String();
    if (appName != null) obj._attributes['app_name'] = appName;

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

  /// Will get a collection of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `/people/v2/messages`
  ///
  /// Available Query Filters:
  /// - `created_after`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleMessage>> get({
    String? id,
    PcoPeopleMessageQuery? query,
    bool includeAll = false,
    bool includeMessageGroup = false,
    bool includeTo = false,
  }) async {
    query ??= PcoPeopleMessageQuery();
    if (includeAll) query.include.addAll(PcoPeopleMessage.canInclude);
    if (includeMessageGroup) query.include.add('message_group');
    if (includeTo) query.include.add('to');
    var url = '/people/v2/messages';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMessage>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `/people/v2/message_groups/$messageGroupId/messages`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleMessage>> getFromMessageGroup(
    String messageGroupId, {
    String? id,
    PcoPeopleMessageQuery? query,
    bool includeAll = false,
    bool includeMessageGroup = false,
    bool includeTo = false,
  }) async {
    query ??= PcoPeopleMessageQuery();
    if (includeAll) query.include.addAll(PcoPeopleMessage.canInclude);
    if (includeMessageGroup) query.include.add('message_group');
    if (includeTo) query.include.add('to');
    var url = '/people/v2/message_groups/$messageGroupId/messages';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMessage>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/messages`
  ///
  /// Available Query Filters:
  /// - `created_after`
  /// - `received`
  /// - `sent`
  /// - `unread`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleMessage>> getFromPerson(
    String personId, {
    String? id,
    PcoPeopleMessageQuery? query,
    bool includeAll = false,
    bool includeMessageGroup = false,
    bool includeTo = false,
  }) async {
    query ??= PcoPeopleMessageQuery();
    if (includeAll) query.include.addAll(PcoPeopleMessage.canInclude);
    if (includeMessageGroup) query.include.add('message_group');
    if (includeTo) query.include.add('to');
    var url = '/people/v2/people/$personId/messages';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMessage>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/messages/1/message_group`
  Future<PcoCollection<PcoPeopleMessageGroup>> getMessageGroup(
      {PcoPeopleMessageGroupQuery? query}) async {
    query ??= PcoPeopleMessageGroupQuery();
    var url = '$apiEndpoint/message_group';
    return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/messages/1/to`
  Future<PcoCollection<PcoPeoplePerson>> getTo(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/to';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
