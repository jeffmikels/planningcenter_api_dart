/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.726162
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// This class represents a PCO People MessageGroup Object
/// 
/// - Application:        people
/// - Id:                 message_group
/// - Type:               MessageGroup
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/message_groups
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleMessageGroup.fromJson()` constructor.
/// - Manually create an object using the `PcoPeopleMessageGroup.manual()` constructor.
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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `app`: include associated app 
/// - `from`: include associated from 
/// - `messages`: include associated messages 
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `from_address`: (URLParameter), query on a specific from_address, example: ?where[from_address]=string
/// - `message_count`: (URLParameter), query on a specific message_count, example: ?where[message_count]=1
/// - `message_type`: (URLParameter), query on a specific message_type, example: ?where[message_type]=string
/// - `subject`: (URLParameter), query on a specific subject, example: ?where[subject]=string
/// - `system_message`: (URLParameter), query on a specific system_message, example: ?where[system_message]=true
/// - `uuid`: (URLParameter), query on a specific uuid, example: ?where[uuid]=string
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `from_address`: (URLParameter), prefix with a hyphen (-from_address) to reverse the order
/// - `message_count`: (URLParameter), prefix with a hyphen (-message_count) to reverse the order
/// - `message_type`: (URLParameter), prefix with a hyphen (-message_type) to reverse the order
/// - `subject`: (URLParameter), prefix with a hyphen (-subject) to reverse the order
/// - `system_message`: (URLParameter), prefix with a hyphen (-system_message) to reverse the order
/// - `uuid`: (URLParameter), prefix with a hyphen (-uuid) to reverse the order
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
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/message_groups';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `app`: include associated app 
  /// - `from`: include associated from 
  /// - `messages`: include associated messages 
  static List<String> get canInclude => ['app','from','messages'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `from_address`: (URLParameter), query on a specific from_address, example: ?where[from_address]=string
  /// - `message_count`: (URLParameter), query on a specific message_count, example: ?where[message_count]=1
  /// - `message_type`: (URLParameter), query on a specific message_type, example: ?where[message_type]=string
  /// - `subject`: (URLParameter), query on a specific subject, example: ?where[subject]=string
  /// - `system_message`: (URLParameter), query on a specific system_message, example: ?where[system_message]=true
  /// - `uuid`: (URLParameter), query on a specific uuid, example: ?where[uuid]=string
  static List<String> get canQuery => ['created_at','from_address','message_count','message_type','subject','system_message','uuid'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `from_address`: (URLParameter), prefix with a hyphen (-from_address) to reverse the order
  /// - `message_count`: (URLParameter), prefix with a hyphen (-message_count) to reverse the order
  /// - `message_type`: (URLParameter), prefix with a hyphen (-message_type) to reverse the order
  /// - `subject`: (URLParameter), prefix with a hyphen (-subject) to reverse the order
  /// - `system_message`: (URLParameter), prefix with a hyphen (-system_message) to reverse the order
  /// - `uuid`: (URLParameter), prefix with a hyphen (-uuid) to reverse the order
  static List<String> get canOrderBy => ['created_at','from_address','message_count','message_type','subject','system_message','uuid'];

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
  
  PcoPeopleApp? get includedApp => _firstOrNull<PcoPeopleApp>(relationships['app']);
  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it here.
  List<T> includedFrom<T extends PcoResource>() => (relationships['from'] as List?)?.cast<T>() ?? [];
  List<PcoPeopleMessage> get includedMessages => (relationships['messages'] as List?)?.cast<PcoPeopleMessage>() ?? [];

  // Class Constructors
  PcoPeopleMessageGroup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


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
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoPeopleMessageGroup({String? id, String? uuid, String? messageType, String? fromAddress, String? subject, int? messageCount, bool? isSystemMessage, DateTime? createdAt, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoPeopleMessageGroup.empty();
    obj._id = id;
    if (uuid != null) obj._attributes['uuid'] = uuid;
    if (messageType != null) obj._attributes['message_type'] = messageType;
    if (fromAddress != null) obj._attributes['from_address'] = fromAddress;
    if (subject != null) obj._attributes['subject'] = subject;
    if (messageCount != null) obj._attributes['message_count'] = messageCount;
    if (isSystemMessage != null) obj._attributes['system_message'] = isSystemMessage;
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();
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



  /// Will get a collection of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `/people/v2/message_groups`
  static Future<PcoCollection<PcoPeopleMessageGroup>> get( {String? id, PlanningCenterApiQuery? query, bool includeAll = false, bool includeApp = false, bool includeFrom = false, bool includeMessages = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleMessageGroup.canInclude);
    if (includeApp) query.include.add('app');
    if (includeFrom) query.include.add('from');
    if (includeMessages) query.include.add('messages');
    var url = '/people/v2/message_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `/people/v2/messages/$messageId/message_group`
  static Future<PcoCollection<PcoPeopleMessageGroup>> getFromMessage(String messageId, {String? id, PlanningCenterApiQuery? query, bool includeAll = false, bool includeApp = false, bool includeFrom = false, bool includeMessages = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleMessageGroup.canInclude);
    if (includeApp) query.include.add('app');
    if (includeFrom) query.include.add('from');
    if (includeMessages) query.include.add('messages');
    var url = '/people/v2/messages/$messageId/message_group';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/message_groups`
  static Future<PcoCollection<PcoPeopleMessageGroup>> getFromPerson(String personId, {String? id, PlanningCenterApiQuery? query, bool includeAll = false, bool includeApp = false, bool includeFrom = false, bool includeMessages = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleMessageGroup.canInclude);
    if (includeApp) query.include.add('app');
    if (includeFrom) query.include.add('from');
    if (includeMessages) query.include.add('messages');
    var url = '/people/v2/people/$personId/message_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/message_groups/1/app`
  Future<PcoCollection<PcoPeopleApp>> getApp({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/app';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/message_groups/1/from`
  Future<PcoCollection<PcoPeoplePerson>> getFrom({PlanningCenterApiQuery? query, bool includeAll = false, bool includeAddresses = false, bool includeEmails = false, bool includeFieldData = false, bool includeHouseholds = false, bool includeInactiveReason = false, bool includeMaritalStatus = false, bool includeNamePrefix = false, bool includeNameSuffix = false, bool includeOrganization = false, bool includePersonApps = false, bool includePhoneNumbers = false, bool includePlatformNotifications = false, bool includePrimaryCampus = false, bool includeSchool = false, bool includeSocialProfiles = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleMessageGroup.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications) query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '$apiEndpoint/from';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/message_groups/1/messages`
  Future<PcoCollection<PcoPeopleMessage>> getMessages({PlanningCenterApiQuery? query, bool includeAll = false, bool includeMessageGroup = false, bool includeTo = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleMessageGroup.canInclude);
    if (includeMessageGroup) query.include.add('message_group');
    if (includeTo) query.include.add('to');
    var url = '$apiEndpoint/messages';
    return PcoCollection.fromApiCall<PcoPeopleMessage>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
