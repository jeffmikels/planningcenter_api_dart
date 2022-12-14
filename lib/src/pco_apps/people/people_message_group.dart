/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:38.004834
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `fromAddress` -> `?order=from_address`
/// - `messageCount` -> `?order=message_count`
/// - `messageType` -> `?order=message_type`
/// - `subject` -> `?order=subject`
/// - `systemMessage` -> `?order=system_message`
/// - `uuid` -> `?order=uuid`
enum PcoPeopleMessageGroupOrder {
  createdAt,
  fromAddress,
  messageCount,
  messageType,
  subject,
  systemMessage,
  uuid
}

/// Filtering is not allowed when requesting this object.
enum PcoPeopleMessageGroupFilter { none }

/// Creates a [PcoPeopleMessageGroupQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeApp`: include associated app
/// - `includeFrom`: include associated from
/// - `includeMessages`: include associated messages
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleMessageGroupQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleMessageGroup] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereFromAddress`: query on a specific from_address, example: ?where[from_address]=string
/// - `whereMessageCount`: query on a specific message_count, example: ?where[message_count]=1
/// - `whereMessageType`: query on a specific message_type, example: ?where[message_type]=string
/// - `whereSubject`: query on a specific subject, example: ?where[subject]=string
/// - `whereSystemMessage`: query on a specific system_message, example: ?where[system_message]=true
/// - `whereUuid`: query on a specific uuid, example: ?where[uuid]=string
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
/// - `PcoPeopleMessageGroupOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleMessageGroupOrder.fromAddress` : will order by `from_address`
/// - `PcoPeopleMessageGroupOrder.messageCount` : will order by `message_count`
/// - `PcoPeopleMessageGroupOrder.messageType` : will order by `message_type`
/// - `PcoPeopleMessageGroupOrder.subject` : will order by `subject`
/// - `PcoPeopleMessageGroupOrder.systemMessage` : will order by `system_message`
/// - `PcoPeopleMessageGroupOrder.uuid` : will order by `uuid`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleMessageGroupQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleMessageGroupOrder, String> _orderMap = {
    PcoPeopleMessageGroupOrder.createdAt: 'created_at',
    PcoPeopleMessageGroupOrder.fromAddress: 'from_address',
    PcoPeopleMessageGroupOrder.messageCount: 'message_count',
    PcoPeopleMessageGroupOrder.messageType: 'message_type',
    PcoPeopleMessageGroupOrder.subject: 'subject',
    PcoPeopleMessageGroupOrder.systemMessage: 'system_message',
    PcoPeopleMessageGroupOrder.uuid: 'uuid',
  };
  static String orderString(PcoPeopleMessageGroupOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleMessageGroupFilter, String> _filterMap = {};
  static String filterString(PcoPeopleMessageGroupFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleMessageGroupQuery({
    /// include associated app
    /// when true, adds `?include=app` to url
    bool includeApp = false,

    /// include associated from
    /// when true, adds `?include=from` to url
    bool includeFrom = false,

    /// include associated messages
    /// when true, adds `?include=messages` to url
    bool includeMessages = false,

    /// when true, adds `?include=app,from,messages` to url parameters
    bool includeAllRelated = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `from_address`
    /// query on a specific from_address, url example: ?where[from_address]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereFromAddress,

    /// Query by `message_count`
    /// query on a specific message_count, url example: ?where[message_count]=1
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereMessageCount,

    /// Query by `message_type`
    /// query on a specific message_type, url example: ?where[message_type]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereMessageType,

    /// Query by `subject`
    /// query on a specific subject, url example: ?where[subject]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereSubject,

    /// Query by `system_message`
    /// query on a specific system_message, url example: ?where[system_message]=true
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereSystemMessage,

    /// Query by `uuid`
    /// query on a specific uuid, url example: ?where[uuid]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUuid,
    PcoPeopleMessageGroupOrder? orderBy,

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
    if (includeAllRelated || includeApp) include.add('app');
    if (includeAllRelated || includeFrom) include.add('from');
    if (includeAllRelated || includeMessages) include.add('messages');

    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereFromAddress != null)
      where.add(PlanningCenterApiWhere.parse('from_address', whereFromAddress));
    if (whereMessageCount != null)
      where.add(
          PlanningCenterApiWhere.parse('message_count', whereMessageCount));
    if (whereMessageType != null)
      where.add(PlanningCenterApiWhere.parse('message_type', whereMessageType));
    if (whereSubject != null)
      where.add(PlanningCenterApiWhere.parse('subject', whereSubject));
    if (whereSystemMessage != null)
      where.add(
          PlanningCenterApiWhere.parse('system_message', whereSystemMessage));
    if (whereUuid != null)
      where.add(PlanningCenterApiWhere.parse('uuid', whereUuid));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People MessageGroup Object
///
/// - Application:        people
/// - Id:                 message_group
/// - Type:               MessageGroup
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/message_groups
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleMessageGroup.fromJson()` constructor.
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
/// A message group represents one or more emails or text messages sent from one of the Planning Center apps. The message group indicates the from person, app, etc.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `uuid` (ro) -> PCO: `uuid`
/// - `messageType` (ro) -> PCO: `message_type`
/// - `fromAddress` (ro) -> PCO: `from_address`
/// - `subject` (ro) -> PCO: `subject`
/// - `messageCount` (ro) -> PCO: `message_count`
/// - `isSystemMessage` (ro) -> PCO: `system_message`
/// - `createdAt` (ro) -> PCO: `created_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `app-messagegroup-app`: https://api.planningcenteronline.com/people/v2/message_groups/1/app
/// - `person-messagegroup-from`: https://api.planningcenteronline.com/people/v2/message_groups/1/from
/// - `message-messagegroup-messages`: https://api.planningcenteronline.com/people/v2/message_groups/1/messages
///
/// Inbound Edges:
/// - `messagegroup-message-message_group`: https://api.planningcenteronline.com/people/v2/messages/1/message_group
/// - `messagegroup-organization-message_groups`: https://api.planningcenteronline.com/people/v2/message_groups
/// - `messagegroup-person-message_groups`: https://api.planningcenteronline.com/people/v2/people/1/message_groups
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "MessageGroup",
///   "id": "1",
///   "attributes": {
///     "uuid": "string",
///     "message_type": "string",
///     "from_address": "string",
///     "subject": "string",
///     "message_count": 1,
///     "system_message": true,
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeopleMessageGroup extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'MessageGroup';
  static const String kTypeId = 'message_group';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/message_groups';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `app`: include associated app
  /// - `from`: include associated from
  /// - `messages`: include associated messages
  static List<String> get canInclude => ['app', 'from', 'messages'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `from_address`: (URLParameter), query on a specific from_address, example: ?where[from_address]=string
  /// - `message_count`: (URLParameter), query on a specific message_count, example: ?where[message_count]=1
  /// - `message_type`: (URLParameter), query on a specific message_type, example: ?where[message_type]=string
  /// - `subject`: (URLParameter), query on a specific subject, example: ?where[subject]=string
  /// - `system_message`: (URLParameter), query on a specific system_message, example: ?where[system_message]=true
  /// - `uuid`: (URLParameter), query on a specific uuid, example: ?where[uuid]=string
  static List<String> get canQuery => [
        'created_at',
        'from_address',
        'message_count',
        'message_type',
        'subject',
        'system_message',
        'uuid'
      ];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `from_address`: (URLParameter), prefix with a hyphen (-from_address) to reverse the order
  /// - `message_count`: (URLParameter), prefix with a hyphen (-message_count) to reverse the order
  /// - `message_type`: (URLParameter), prefix with a hyphen (-message_type) to reverse the order
  /// - `subject`: (URLParameter), prefix with a hyphen (-subject) to reverse the order
  /// - `system_message`: (URLParameter), prefix with a hyphen (-system_message) to reverse the order
  /// - `uuid`: (URLParameter), prefix with a hyphen (-uuid) to reverse the order
  static List<String> get canOrderBy => [
        'created_at',
        'from_address',
        'message_count',
        'message_type',
        'subject',
        'system_message',
        'uuid'
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
  static const kUuid = 'uuid';
  static const kMessageType = 'message_type';
  static const kFromAddress = 'from_address';
  static const kSubject = 'subject';
  static const kMessageCount = 'message_count';
  static const kSystemMessage = 'system_message';
  static const kCreatedAt = 'created_at';

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
  String get uuid => _attributes[kUuid] ?? '';
  String get messageType => _attributes[kMessageType] ?? '';
  String get fromAddress => _attributes[kFromAddress] ?? '';
  String get subject => _attributes[kSubject] ?? '';
  int get messageCount => _attributes[kMessageCount] ?? 0;
  bool get isSystemMessage => _attributes[kSystemMessage] == true;

  // typed getters for each relationship

  PcoPeopleApp? get includedApp =>
      _firstOrNull<PcoPeopleApp>(relationships['app']);

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedFrom<T extends PcoResource>() =>
      (relationships['from'] as List?)?.cast<T>() ?? [];

  List<PcoPeopleMessage> get includedMessages =>
      (relationships['messages'] as List?)?.cast<PcoPeopleMessage>() ?? [];

  // Class Constructors
  PcoPeopleMessageGroup.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleMessageGroup.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleMessageGroup] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeopleMessageGroup(
      {String? id,
      String? uuid,
      String? messageType,
      String? fromAddress,
      String? subject,
      int? messageCount,
      bool? isSystemMessage,
      DateTime? createdAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleMessageGroup.empty();
    obj._id = id;
    if (uuid != null) obj._attributes['uuid'] = uuid;
    if (messageType != null) obj._attributes['message_type'] = messageType;
    if (fromAddress != null) obj._attributes['from_address'] = fromAddress;
    if (subject != null) obj._attributes['subject'] = subject;
    if (messageCount != null) obj._attributes['message_count'] = messageCount;
    if (isSystemMessage != null)
      obj._attributes['system_message'] = isSystemMessage;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();

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

  /// Will get a [PcoCollection] of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `/people/v2/message_groups`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleMessageGroup>> get({
    String? id,
    PcoPeopleMessageGroupQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeApp = false,
    bool includeFrom = false,
    bool includeMessages = false,
  }) async {
    query ??= PcoPeopleMessageGroupQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoPeopleMessageGroup.canInclude);
    if (includeApp) query.include.add('app');
    if (includeFrom) query.include.add('from');
    if (includeMessages) query.include.add('messages');
    var url = '/people/v2/message_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleMessageGroup] object
  /// using a path like this: `/people/v2/message_groups/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleMessageGroup?> getSingle(
    String id, {
    PcoPeopleMessageGroupQuery? query,
    bool includeAllRelated = false,
    bool includeApp = false,
    bool includeFrom = false,
    bool includeMessages = false,
  }) async {
    query ??= PcoPeopleMessageGroupQuery();
    if (includeAllRelated)
      query.include.addAll(PcoPeopleMessageGroup.canInclude);
    if (includeApp) query.include.add('app');
    if (includeFrom) query.include.add('from');
    if (includeMessages) query.include.add('messages');
    var url = '/people/v2/message_groups/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `/people/v2/message_groups`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleMessageGroup>> getAll({
    String? id,
    PcoPeopleMessageGroupQuery? query,
    bool includeAllRelated = false,
    bool includeApp = false,
    bool includeFrom = false,
    bool includeMessages = false,
  }) async {
    query ??= PcoPeopleMessageGroupQuery();
    query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoPeopleMessageGroup.canInclude);
    if (includeApp) query.include.add('app');
    if (includeFrom) query.include.add('from');
    if (includeMessages) query.include.add('messages');
    var url = '/people/v2/message_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `/people/v2/messages/$messageId/message_group`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleMessageGroup>> getFromMessage(
    String messageId, {
    String? id,
    PcoPeopleMessageGroupQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeApp = false,
    bool includeFrom = false,
    bool includeMessages = false,
  }) async {
    query ??= PcoPeopleMessageGroupQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoPeopleMessageGroup.canInclude);
    if (includeApp) query.include.add('app');
    if (includeFrom) query.include.add('from');
    if (includeMessages) query.include.add('messages');
    var url = '/people/v2/messages/$messageId/message_group';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleMessageGroup] object
  /// using a path like this: `/people/v2/messages/$messageId/message_group/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleMessageGroup?> getSingleFromMessage(
    String messageId,
    String id, {
    PcoPeopleMessageGroupQuery? query,
    bool includeAllRelated = false,
    bool includeApp = false,
    bool includeFrom = false,
    bool includeMessages = false,
  }) async {
    query ??= PcoPeopleMessageGroupQuery();
    if (includeAllRelated)
      query.include.addAll(PcoPeopleMessageGroup.canInclude);
    if (includeApp) query.include.add('app');
    if (includeFrom) query.include.add('from');
    if (includeMessages) query.include.add('messages');
    var url = '/people/v2/messages/$messageId/message_group/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `/people/v2/messages/$messageId/message_group`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleMessageGroup>> getAllFromMessage(
    String messageId, {
    String? id,
    PcoPeopleMessageGroupQuery? query,
    bool includeAllRelated = false,
    bool includeApp = false,
    bool includeFrom = false,
    bool includeMessages = false,
  }) async {
    query ??= PcoPeopleMessageGroupQuery();
    query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoPeopleMessageGroup.canInclude);
    if (includeApp) query.include.add('app');
    if (includeFrom) query.include.add('from');
    if (includeMessages) query.include.add('messages');
    var url = '/people/v2/messages/$messageId/message_group';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/message_groups`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleMessageGroup>> getFromPerson(
    String personId, {
    String? id,
    PcoPeopleMessageGroupQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeApp = false,
    bool includeFrom = false,
    bool includeMessages = false,
  }) async {
    query ??= PcoPeopleMessageGroupQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoPeopleMessageGroup.canInclude);
    if (includeApp) query.include.add('app');
    if (includeFrom) query.include.add('from');
    if (includeMessages) query.include.add('messages');
    var url = '/people/v2/people/$personId/message_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleMessageGroup] object
  /// using a path like this: `/people/v2/people/$personId/message_groups/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleMessageGroup?> getSingleFromPerson(
    String personId,
    String id, {
    PcoPeopleMessageGroupQuery? query,
    bool includeAllRelated = false,
    bool includeApp = false,
    bool includeFrom = false,
    bool includeMessages = false,
  }) async {
    query ??= PcoPeopleMessageGroupQuery();
    if (includeAllRelated)
      query.include.addAll(PcoPeopleMessageGroup.canInclude);
    if (includeApp) query.include.add('app');
    if (includeFrom) query.include.add('from');
    if (includeMessages) query.include.add('messages');
    var url = '/people/v2/people/$personId/message_groups/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/message_groups`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleMessageGroup>> getAllFromPerson(
    String personId, {
    String? id,
    PcoPeopleMessageGroupQuery? query,
    bool includeAllRelated = false,
    bool includeApp = false,
    bool includeFrom = false,
    bool includeMessages = false,
  }) async {
    query ??= PcoPeopleMessageGroupQuery();
    query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoPeopleMessageGroup.canInclude);
    if (includeApp) query.include.add('app');
    if (includeFrom) query.include.add('from');
    if (includeMessages) query.include.add('messages');
    var url = '/people/v2/people/$personId/message_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/message_groups/1/app`
  Future<PcoCollection<PcoPeopleApp>> getApp({PcoPeopleAppQuery? query}) async {
    query ??= PcoPeopleAppQuery();
    var url = '$apiEndpoint/app';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/message_groups/1/from`
  Future<PcoCollection<PcoPeoplePerson>> getFrom(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/from';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/message_groups/1/messages`
  Future<PcoCollection<PcoPeopleMessage>> getMessages(
      {PcoPeopleMessageQuery? query}) async {
    query ??= PcoPeopleMessageQuery();
    var url = '$apiEndpoint/messages';
    return PcoCollection.fromApiCall<PcoPeopleMessage>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
