/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:15.039385
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People WorkflowCardNote Object
///
/// - Application:        people
/// - Id:                 workflow_card_note
/// - Type:               WorkflowCardNote
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleWorkflowCardNote()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleWorkflowCardNote.fromJson()` constructor.
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
/// Workflow Note is a note that has been made on a Workflow Card
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `note` (rw) -> PCO: `note`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `noteCategoryId` (wo) -> PCO: `note_category_id`
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
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `workflowcardnote-workflowcard-notes`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "WorkflowCardNote",
///   "id": "1",
///   "attributes": {
///     "note": "string",
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "note_category": {
///       "data": {
///         "type": "NoteCategory",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleWorkflowCardNote extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowCardNote';
  static const String kTypeId = 'workflow_card_note';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static List<String> get canOrderBy => ['created_at'];

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
  static const kNote = 'note';
  static const kCreatedAt = 'created_at';
  static const kNoteCategoryId = 'note_category_id';

  // getters and setters
  @override
  List<String> get createAllowed => ['note', 'note_category_id'];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  String get note => _attributes[kNote] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set note(String? x) =>
      (x == null) ? _attributes.remove(kNote) : _attributes[kNote] = x;

  // additional setters / getters for create/update attributes

  /// pass `null` to remove key from attributes
  set noteCategoryId(String? x) => (x == null)
      ? _attributes.remove(kNoteCategoryId)
      : _attributes[kNoteCategoryId] = x;
  String get noteCategoryId => _attributes[kNoteCategoryId] ?? '';

  // Class Constructors
  PcoPeopleWorkflowCardNote.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleWorkflowCardNote.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleWorkflowCardNote] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people/$personId/home_workflow_cards/$workflowCardId/notes`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleWorkflowCardNote(String personId, String workflowCardId,
      {String? note}) {
    var obj = PcoPeopleWorkflowCardNote.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/people/$personId/home_workflow_cards/$workflowCardId/notes';
    if (note != null) obj.note = note;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeopleWorkflowCardNote] objects (expecting one)
  /// using a path like this: `/people/v2/people/$personId/home_workflow_cards/$workflowCardId/notes`
  static Future<PcoCollection<PcoPeopleWorkflowCardNote>>
      getNotesFromPersonAndWorkflowCard(
    String personId,
    String workflowCardId, {
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url =
        '/people/v2/people/$personId/home_workflow_cards/$workflowCardId/notes';

    return PcoCollection.fromApiCall<PcoPeopleWorkflowCardNote>(url,
        query: query, apiVersion: kApiVersion);
  }
}
