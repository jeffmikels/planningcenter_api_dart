/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.847171
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People Message Object
/// 
/// - Application:        people
/// - Id:                 message
/// - Type:               Message
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/messages
/// 
/// Description:
/// A message is an individual email or sms text sent to a member. Every message has a parent message group.
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// - message_group: include associated message_group 
/// - to: include associated to 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
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
/// Possible orderings with parameter ?order=
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
/// All Outbound Edges:
/// - `messagegroup-message-message_group`: https://api.planningcenteronline.com/people/v2/messages/1/message_group
/// - `person-message-to`: https://api.planningcenteronline.com/people/v2/messages/1/to
/// 
/// All Inbound Edges:
/// - `message-messagegroup-messages`: https://api.planningcenteronline.com/people/v2/message_groups/1/messages
/// - `message-organization-messages`: https://api.planningcenteronline.com/people/v2/messages
/// - `message-person-messages`: https://api.planningcenteronline.com/people/v2/people/1/messages
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleMessage extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'Message';
  static kTypeId = 'message';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'message-organization-messages';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/messages';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/messages';

  /// possible includes with parameter ?include=a,b
  /// - `message_group`: include associated message_group 
  /// - `to`: include associated to 
  static get canInclude() { return ['message_group','to'] }

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
  static get canQuery() { return ['app_name','bounced_at','created_at','delivery_status','file','from_address','kind','reject_reason','rejection_notification_sent_at','sent_at','subject','to_addresses'] }

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
  static get canOrderBy() { return ['app_name','bounced_at','created_at','delivery_status','file','from_address','from_name','kind','reject_reason','rejection_notification_sent_at','sent_at','subject','to_addresses'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleMessage.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleMessage.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleMessage.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kKind() { return 'kind' }
  static get kToAddresses() { return 'to_addresses' }
  static get kSubject() { return 'subject' }
  static get kFile() { return 'file' }
  static get kDeliveryStatus() { return 'delivery_status' }
  static get kRejectReason() { return 'reject_reason' }
  static get kCreatedAt() { return 'created_at' }
  static get kSentAt() { return 'sent_at' }
  static get kBouncedAt() { return 'bounced_at' }
  static get kRejectionNotificationSentAt() { return 'rejection_notification_sent_at' }
  static get kFromName() { return 'from_name' }
  static get kFromAddress() { return 'from_address' }
  static get kReadAt() { return 'read_at' }
  static get kAppName() { return 'app_name' }


  // getters and setters
  // @override
  get createAllowed() { return []; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return false; }

  // @override
  get canUpdate() { return false; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get kind() { return attributes[this.constructor.kKind] ?? ''; }
  get toAddresses() { return attributes[this.constructor.kToAddresses] ?? ''; }
  get subject() { return attributes[this.constructor.kSubject] ?? ''; }
  get file() { return attributes[this.constructor.kFile] ?? ''; }
  get deliveryStatus() { return attributes[this.constructor.kDeliveryStatus] ?? ''; }
  get rejectReason() { return attributes[this.constructor.kRejectReason] ?? ''; }
  get sentAt() { return Date.parse(attributes[this.constructor.kSentAt] ?? 0); }
  get bouncedAt() { return Date.parse(attributes[this.constructor.kBouncedAt] ?? 0); }
  get rejectionNotificationSentAt() { return Date.parse(attributes[this.constructor.kRejectionNotificationSentAt] ?? 0); }
  get fromName() { return attributes[this.constructor.kFromName] ?? ''; }
  get fromAddress() { return attributes[this.constructor.kFromAddress] ?? ''; }
  get readAt() { return Date.parse(attributes[this.constructor.kReadAt] ?? 0); }
  get appName() { return attributes[this.constructor.kAppName] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleMessage._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleMessage({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `/people/v2/messages`
  /// 
  /// Available Query Filters:
  /// - `created_after`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleMessage.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/messages`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `/people/v2/message_groups/${messageGroupId}/messages`
  static getFromMessageGroup(messageGroupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleMessage.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/message_groups/${messageGroupId}/messages`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/messages`
  /// 
  /// Available Query Filters:
  /// - `created_after`
  /// - `received`
  /// - `sent`
  /// - `unread`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleMessage.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/messages`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/messages/1/message_group`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getMessageGroup({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
    let url = `${apiEndpoint}/message_group`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/messages/1/to`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTo({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/to`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
