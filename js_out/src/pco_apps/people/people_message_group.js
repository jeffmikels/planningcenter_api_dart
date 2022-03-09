/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.848356
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People MessageGroup Object
/// 
/// - Application:        people
/// - Id:                 message_group
/// - Type:               MessageGroup
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/message_groups
/// 
/// Description:
/// A message group represents one or more emails or text messages sent from one of the Planning Center apps. The message group indicates the from person, app, etc.
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// - app: include associated app 
/// - from: include associated from 
/// - messages: include associated messages 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `from_address`: (URLParameter), query on a specific from_address, example: ?where[from_address]=string
/// - `message_count`: (URLParameter), query on a specific message_count, example: ?where[message_count]=1
/// - `message_type`: (URLParameter), query on a specific message_type, example: ?where[message_type]=string
/// - `subject`: (URLParameter), query on a specific subject, example: ?where[subject]=string
/// - `system_message`: (URLParameter), query on a specific system_message, example: ?where[system_message]=true
/// - `uuid`: (URLParameter), query on a specific uuid, example: ?where[uuid]=string
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `from_address`: (URLParameter), prefix with a hyphen (-from_address) to reverse the order
/// - `message_count`: (URLParameter), prefix with a hyphen (-message_count) to reverse the order
/// - `message_type`: (URLParameter), prefix with a hyphen (-message_type) to reverse the order
/// - `subject`: (URLParameter), prefix with a hyphen (-subject) to reverse the order
/// - `system_message`: (URLParameter), prefix with a hyphen (-system_message) to reverse the order
/// - `uuid`: (URLParameter), prefix with a hyphen (-uuid) to reverse the order
///
/// All Outbound Edges:
/// - `app-messagegroup-app`: https://api.planningcenteronline.com/people/v2/message_groups/1/app
/// - `person-messagegroup-from`: https://api.planningcenteronline.com/people/v2/message_groups/1/from
/// - `message-messagegroup-messages`: https://api.planningcenteronline.com/people/v2/message_groups/1/messages
/// 
/// All Inbound Edges:
/// - `messagegroup-message-message_group`: https://api.planningcenteronline.com/people/v2/messages/1/message_group
/// - `messagegroup-organization-message_groups`: https://api.planningcenteronline.com/people/v2/message_groups
/// - `messagegroup-person-message_groups`: https://api.planningcenteronline.com/people/v2/people/1/message_groups
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleMessageGroup extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'MessageGroup';
  static kTypeId = 'message_group';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'messagegroup-organization-message_groups';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/message_groups';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/message_groups';

  /// possible includes with parameter ?include=a,b
  /// - `app`: include associated app 
  /// - `from`: include associated from 
  /// - `messages`: include associated messages 
  static get canInclude() { return ['app','from','messages'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `from_address`: (URLParameter), query on a specific from_address, example: ?where[from_address]=string
  /// - `message_count`: (URLParameter), query on a specific message_count, example: ?where[message_count]=1
  /// - `message_type`: (URLParameter), query on a specific message_type, example: ?where[message_type]=string
  /// - `subject`: (URLParameter), query on a specific subject, example: ?where[subject]=string
  /// - `system_message`: (URLParameter), query on a specific system_message, example: ?where[system_message]=true
  /// - `uuid`: (URLParameter), query on a specific uuid, example: ?where[uuid]=string
  static get canQuery() { return ['created_at','from_address','message_count','message_type','subject','system_message','uuid'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `from_address`: (URLParameter), prefix with a hyphen (-from_address) to reverse the order
  /// - `message_count`: (URLParameter), prefix with a hyphen (-message_count) to reverse the order
  /// - `message_type`: (URLParameter), prefix with a hyphen (-message_type) to reverse the order
  /// - `subject`: (URLParameter), prefix with a hyphen (-subject) to reverse the order
  /// - `system_message`: (URLParameter), prefix with a hyphen (-system_message) to reverse the order
  /// - `uuid`: (URLParameter), prefix with a hyphen (-uuid) to reverse the order
  static get canOrderBy() { return ['created_at','from_address','message_count','message_type','subject','system_message','uuid'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleMessageGroup.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleMessageGroup.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleMessageGroup.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kUuid() { return 'uuid' }
  static get kMessageType() { return 'message_type' }
  static get kFromAddress() { return 'from_address' }
  static get kSubject() { return 'subject' }
  static get kMessageCount() { return 'message_count' }
  static get kSystemMessage() { return 'system_message' }
  static get kCreatedAt() { return 'created_at' }


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

  get uuid() { return attributes[this.constructor.kUuid] ?? ''; }
  get messageType() { return attributes[this.constructor.kMessageType] ?? ''; }
  get fromAddress() { return attributes[this.constructor.kFromAddress] ?? ''; }
  get subject() { return attributes[this.constructor.kSubject] ?? ''; }
  get messageCount() { return attributes[this.constructor.kMessageCount] ?? 0; }
  get isSystemMessage() { return attributes[this.constructor.kSystemMessage] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleMessageGroup._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleMessageGroup({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `/people/v2/message_groups`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/message_groups`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `/people/v2/messages/${messageId}/message_group`
  static getFromMessage(messageId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/messages/${messageId}/message_group`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/message_groups`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/message_groups`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/message_groups/1/app`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getApp({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    let url = `${apiEndpoint}/app`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/message_groups/1/from`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFrom({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/from`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/message_groups/1/messages`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getMessages({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleMessage.canInclude;
    let url = `${apiEndpoint}/messages`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
