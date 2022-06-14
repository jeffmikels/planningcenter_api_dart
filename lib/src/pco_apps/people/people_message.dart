/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T21:46:38.898899
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

// import '../../pco.dart';
part of pco;

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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `message_group`: include associated message_group
/// - `to`: include associated to
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
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
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
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

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  List<T> includedMessageGroup<T extends PcoResource>() =>
      relationships['message_group']?.cast<T>() ?? [];
  List<T> includedTo<T extends PcoResource>() =>
      relationships['to']?.cast<T>() ?? [];

  // Class Constructors
  PcoPeopleMessage.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleMessage.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `/people/v2/messages`
  ///
  /// Available Query Filters:
  /// - `created_after`
  static Future<PcoCollection<PcoPeopleMessage>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessage.canInclude;
    var url = '/people/v2/messages';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMessage>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `/people/v2/message_groups/$messageGroupId/messages`
  static Future<PcoCollection<PcoPeopleMessage>> getFromMessageGroup(
      String messageGroupId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessage.canInclude;
    var url = '/people/v2/message_groups/$messageGroupId/messages';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMessage>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/messages`
  ///
  /// Available Query Filters:
  /// - `created_after`
  /// - `received`
  /// - `sent`
  /// - `unread`
  static Future<PcoCollection<PcoPeopleMessage>> getFromPeople(String peopleId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessage.canInclude;
    var url = '/people/v2/people/$peopleId/messages';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMessage>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/messages/1/message_group`
  Future<PcoCollection<PcoPeopleMessageGroup>> getMessageGroup(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
    var url = '$apiEndpoint/message_group';
    return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/messages/1/to`
  Future<PcoCollection<PcoPeoplePerson>> getTo(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/to';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
