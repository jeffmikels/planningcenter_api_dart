/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T11:30:57.649569
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People WorkflowCardActivity Object
///
/// - Application:        people
/// - Id:                 workflow_card_activity
/// - Type:               WorkflowCardActivity
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleWorkflowCardActivity.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
/// ## Description
/// Workflow Card Activity is a record of an action performed on a card
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `comment` (ro) -> PCO: `comment`
/// - `content` (ro) -> PCO: `content`
/// - `formSubmissionUrl` (ro) -> PCO: `form_submission_url`
/// - `personAvatarUrl` (ro) -> PCO: `person_avatar_url`
/// - `personName` (ro) -> PCO: `person_name`
/// - `reassignedToAvatarUrl` (ro) -> PCO: `reassigned_to_avatar_url`
/// - `reassignedToName` (ro) -> PCO: `reassigned_to_name`
/// - `subject` (ro) -> PCO: `subject`
/// - `type` (ro) -> PCO: `type`
/// - `isContentIsHtml` (ro) -> PCO: `content_is_html`
/// - `createdAt` (ro) -> PCO: `created_at`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// NONE
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `id`: (URLParameter), prefix with a hyphen (-id) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `workflowcardactivity-workflowcard-activities`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "WorkflowCardActivity",
///   "id": "1",
///   "attributes": {
///     "comment": "string",
///     "content": "string",
///     "form_submission_url": "string",
///     "person_avatar_url": "string",
///     "person_name": "string",
///     "reassigned_to_avatar_url": "string",
///     "reassigned_to_name": "string",
///     "subject": "string",
///     "type": "string",
///     "content_is_html": true,
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "workflow_card": {
///       "data": {
///         "type": "WorkflowCard",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleWorkflowCardActivity extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowCardActivity';
  static const String kTypeId = 'workflow_card_activity';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `id`: (URLParameter), prefix with a hyphen (-id) to reverse the order
  static List<String> get canOrderBy => ['id'];

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
  static const kComment = 'comment';
  static const kContent = 'content';
  static const kFormSubmissionUrl = 'form_submission_url';
  static const kPersonAvatarUrl = 'person_avatar_url';
  static const kPersonName = 'person_name';
  static const kReassignedToAvatarUrl = 'reassigned_to_avatar_url';
  static const kReassignedToName = 'reassigned_to_name';
  static const kSubject = 'subject';
  static const kType = 'type';
  static const kContentIsHtml = 'content_is_html';
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
  bool get canDestroy => true;

  // getters for object attributes
  String get comment => _attributes[kComment] ?? '';
  String get content => _attributes[kContent] ?? '';
  String get formSubmissionUrl => _attributes[kFormSubmissionUrl] ?? '';
  String get personAvatarUrl => _attributes[kPersonAvatarUrl] ?? '';
  String get personName => _attributes[kPersonName] ?? '';
  String get reassignedToAvatarUrl => _attributes[kReassignedToAvatarUrl] ?? '';
  String get reassignedToName => _attributes[kReassignedToName] ?? '';
  String get subject => _attributes[kSubject] ?? '';
  String get type => _attributes[kType] ?? '';
  bool get isContentIsHtml => _attributes[kContentIsHtml] == true;

  // Class Constructors
  PcoPeopleWorkflowCardActivity.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeopleWorkflowCardActivity] objects (expecting one)
  /// using a path like this: `/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/activities`
  static Future<PcoCollection<PcoPeopleWorkflowCardActivity>>
      getActivitiesFromPeopleAndWorkflowCard(
    String peopleId,
    String workflowCardId, {
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url =
        '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/activities';

    return PcoCollection.fromApiCall<PcoPeopleWorkflowCardActivity>(url,
        query: query, apiVersion: kApiVersion);
  }
}
