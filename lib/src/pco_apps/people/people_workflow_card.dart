/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T08:59:05.382468
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO People WorkflowCard Object
/// 
/// - Application:        people
/// - Id:                 workflow_card
/// - Type:               WorkflowCard
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/workflows/1/cards
/// 
/// ## Description
/// A Card
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `snoozeUntil` (ro) -> PCO: `snooze_until`
/// - `isOverdue` (ro) -> PCO: `overdue`
/// - `stage` (ro) -> PCO: `stage`
/// - `calculatedDueAtInDaysAgo` (ro) -> PCO: `calculated_due_at_in_days_ago`
/// - `isStickyAssignment` (rw) -> PCO: `sticky_assignment`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `completedAt` (ro) -> PCO: `completed_at`
/// - `flaggedForNotificationAt` (ro) -> PCO: `flagged_for_notification_at`
/// - `removedAt` (ro) -> PCO: `removed_at`
/// - `movedToStepAt` (ro) -> PCO: `moved_to_step_at`
/// - `assigneeId` (wo) -> PCO: `assignee_id`
/// - `personId` (wo) -> PCO: `person_id`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `assignee`: include associated assignee 
/// - `current_step`: include associated current_step 
/// - `person`: include associated person 
/// - `workflow`: include associated workflow 
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// - `stage`: (URLParameter), query on a specific stage, example: ?where[stage]=string
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// - `completed_at`: (URLParameter), prefix with a hyphen (-completed_at) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `flagged_for_notification_at`: (URLParameter), prefix with a hyphen (-flagged_for_notification_at) to reverse the order
/// - `moved_to_step_at`: (URLParameter), prefix with a hyphen (-moved_to_step_at) to reverse the order
/// - `removed_at`: (URLParameter), prefix with a hyphen (-removed_at) to reverse the order
/// - `stage`: (URLParameter), prefix with a hyphen (-stage) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `workflowcardactivity-workflowcard-activities`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities
/// - `person-workflowcard-assignee`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/assignee
/// - `workflowstep-workflowcard-current_step`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/current_step
/// - `workflowcardnote-workflowcard-notes`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes
/// - `person-workflowcard-person`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/person
/// - `workflow-workflowcard-workflow`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/workflow
/// 
/// Inbound Edges:
/// - `workflowcard-person-workflow_cards`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards
/// - `workflowcard-workflow-cards`: https://api.planningcenteronline.com/people/v2/workflows/1/cards
/// 
/// Actions:
/// - `go_back`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/go_back
/// - `promote`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/promote
/// - `remove`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/remove
/// - `restore`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/restore
/// - `send_email`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/send_email
/// - `skip_step`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/skip_step
/// - `snooze`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/snooze
/// - `unsnooze`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/unsnooze
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "WorkflowCard",
///   "id": "1",
///   "attributes": {
///     "snooze_until": "2000-01-01T12:00:00Z",
///     "overdue": true,
///     "stage": "string",
///     "calculated_due_at_in_days_ago": 1,
///     "sticky_assignment": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "completed_at": "2000-01-01T12:00:00Z",
///     "flagged_for_notification_at": "2000-01-01T12:00:00Z",
///     "removed_at": "2000-01-01T12:00:00Z",
///     "moved_to_step_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "assignee": {
///       "data": {
///         "type": "Assignee",
///         "id": "1"
///       }
///     },
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "workflow": {
///       "data": {
///         "type": "Workflow",
///         "id": "1"
///       }
///     },
///     "current_step": {
///       "data": {
///         "type": "WorkflowStep",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleWorkflowCard extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowCard';
  static const String kTypeId = 'workflow_card';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/cards';

  /// possible includes with parameter ?include=a,b
  /// - `assignee`: include associated assignee 
  /// - `current_step`: include associated current_step 
  /// - `person`: include associated person 
  /// - `workflow`: include associated workflow 
  static List<String> get canInclude => ['assignee','current_step','person','workflow'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `stage`: (URLParameter), query on a specific stage, example: ?where[stage]=string
  static List<String> get canQuery => ['stage'];

  /// possible orderings with parameter ?order=
  /// - `completed_at`: (URLParameter), prefix with a hyphen (-completed_at) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `flagged_for_notification_at`: (URLParameter), prefix with a hyphen (-flagged_for_notification_at) to reverse the order
  /// - `moved_to_step_at`: (URLParameter), prefix with a hyphen (-moved_to_step_at) to reverse the order
  /// - `removed_at`: (URLParameter), prefix with a hyphen (-removed_at) to reverse the order
  /// - `stage`: (URLParameter), prefix with a hyphen (-stage) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['completed_at','created_at','flagged_for_notification_at','moved_to_step_at','removed_at','stage','updated_at'];

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
  static const kSnoozeUntil = 'snooze_until';
  static const kOverdue = 'overdue';
  static const kStage = 'stage';
  static const kCalculatedDueAtInDaysAgo = 'calculated_due_at_in_days_ago';
  static const kStickyAssignment = 'sticky_assignment';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kCompletedAt = 'completed_at';
  static const kFlaggedForNotificationAt = 'flagged_for_notification_at';
  static const kRemovedAt = 'removed_at';
  static const kMovedToStepAt = 'moved_to_step_at';
  static const kAssigneeId = 'assignee_id';
  static const kPersonId = 'person_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['sticky_assignment', 'assignee_id', 'person_id'];

  @override
  List<String> get updateAllowed => ['sticky_assignment', 'assignee_id', 'person_id'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  DateTime get snoozeUntil => DateTime.parse(attributes[kSnoozeUntil] ?? '');
  bool get isOverdue => attributes[kOverdue] == true;
  String get stage => attributes[kStage] ?? '';
  int get calculatedDueAtInDaysAgo => attributes[kCalculatedDueAtInDaysAgo] ?? 0;
  bool get isStickyAssignment => attributes[kStickyAssignment] == true;
  DateTime get completedAt => DateTime.parse(attributes[kCompletedAt] ?? '');
  DateTime get flaggedForNotificationAt => DateTime.parse(attributes[kFlaggedForNotificationAt] ?? '');
  DateTime get removedAt => DateTime.parse(attributes[kRemovedAt] ?? '');
  DateTime get movedToStepAt => DateTime.parse(attributes[kMovedToStepAt] ?? '');  
  
  // setters for object attributes
  
  /// pass `null` to remove key from attributes
  set isStickyAssignment(bool? x) => (x == null) ? attributes.remove(kStickyAssignment) : attributes[kStickyAssignment] = x;  
  
  // additional setters / getters for create/update attributes
  
  /// pass `null` to remove key from attributes
  set assigneeId(String? x) => (x == null) ? attributes.remove(kAssigneeId) : attributes[kAssigneeId] = x;
  String get assigneeId => attributes[kAssigneeId] ?? '';
  
  /// pass `null` to remove key from attributes
  set personId(String? x) => (x == null) ? attributes.remove(kPersonId) : attributes[kPersonId] = x;
  String get personId => attributes[kPersonId] ?? '';

  // Class Constructors
  PcoPeopleWorkflowCard.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoPeopleWorkflowCard.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleWorkflowCard] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/workflows/$workflowId/cards`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleWorkflowCard(String workflowId, { bool? isStickyAssignment }) {
    var obj = PcoPeopleWorkflowCard.empty();
    obj._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/workflows/$workflowId/cards';
    if (isStickyAssignment != null) obj.isStickyAssignment = isStickyAssignment;
    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleWorkflowCard] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/workflow_cards`
  /// 
  /// Available Query Filters:
  /// - `assigned`
  static Future<PcoCollection<PcoPeopleWorkflowCard>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowCard.canInclude;
    var url = '/people/v2/people/$peopleId/workflow_cards';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCard>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleWorkflowCard] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/$workflowId/cards`
  static Future<PcoCollection<PcoPeopleWorkflowCard>> getCardsFromWorkflow(String workflowId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowCard.canInclude;
    var url = '/people/v2/workflows/$workflowId/cards';
    
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCard>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleWorkflowCardActivity] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities`
  Future<PcoCollection<PcoPeopleWorkflowCardActivity>> getActivities({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowCardActivity.canInclude;
    var url = '$apiEndpoint/activities';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCardActivity>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/assignee`
  Future<PcoCollection<PcoPeoplePerson>> getAssignee({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/assignee';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowStep] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/current_step`
  Future<PcoCollection<PcoPeopleWorkflowStep>> getCurrentStep({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowStep.canInclude;
    var url = '$apiEndpoint/current_step';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowStep>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowCardNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes`
  Future<PcoCollection<PcoPeopleWorkflowCardNote>> getNotes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowCardNote.canInclude;
    var url = '$apiEndpoint/notes';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCardNote>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflow] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/workflow`
  Future<PcoCollection<PcoPeopleWorkflow>> getWorkflow({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflow.canInclude;
    var url = '$apiEndpoint/workflow';
    return PcoCollection.fromApiCall<PcoPeopleWorkflow>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `go_back`
  /// 
  /// Move a Workflow Card back to the previous step.
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/go_back`
  /// 
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PcoData] helper class has been
  /// provided for just such a purpose.
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> goBack(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/go_back';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }

  /// ACTION: `promote`
  /// 
  /// Move a Workflow Card to the next step.
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/promote`
  /// 
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PcoData] helper class has been
  /// provided for just such a purpose.
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> promote(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/promote';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }

  /// ACTION: `remove`
  /// 
  /// Removes a card
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/remove`
  /// 
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PcoData] helper class has been
  /// provided for just such a purpose.
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> remove(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/remove';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }

  /// ACTION: `restore`
  /// 
  /// Restore a card
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/restore`
  /// 
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PcoData] helper class has been
  /// provided for just such a purpose.
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> restore(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/restore';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }

  /// ACTION: `send_email`
  /// 
  /// Sends an email to the subject of the card
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/send_email`
  /// 
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PcoData] helper class has been
  /// provided for just such a purpose.
  /// 
  /// Details:
  /// Pass in a subject and note.
  Future<PlanningCenterApiResponse> sendEmail(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/send_email';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }

  /// ACTION: `skip_step`
  /// 
  /// Move a Workflow Card to the next step without completing the current step.
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/skip_step`
  /// 
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PcoData] helper class has been
  /// provided for just such a purpose.
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> skipStep(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/skip_step';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }

  /// ACTION: `snooze`
  /// 
  /// Snoozes a card for a specific duration
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/snooze`
  /// 
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PcoData] helper class has been
  /// provided for just such a purpose.
  /// 
  /// Details:
  /// Pass in a duration in days.
  Future<PlanningCenterApiResponse> snooze(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/snooze';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }

  /// ACTION: `unsnooze`
  /// 
  /// Unsnoozes a card
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/unsnooze`
  /// 
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PcoData] helper class has been
  /// provided for just such a purpose.
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> unsnooze(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/unsnooze';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }


}
