/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.128730
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
enum PcoPeopleWorkflowCardNoteOrder { createdAt }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleWorkflowCardNoteFilter { none }

/// Creates a [PcoPeopleWorkflowCardNoteQuery] object
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoPeopleWorkflowCardNoteOrder.createdAt` : will order by `created_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleWorkflowCardNoteQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleWorkflowCardNoteOrder, String> _orderMap = {
    PcoPeopleWorkflowCardNoteOrder.createdAt: 'created_at',
  };
  static String orderString(PcoPeopleWorkflowCardNoteOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleWorkflowCardNoteFilter, String> _filterMap = {};
  static String filterString(PcoPeopleWorkflowCardNoteFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleWorkflowCardNoteQuery({
    PcoPeopleWorkflowCardNoteOrder? orderBy,

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
    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People WorkflowCardNote Object
///
/// - Application:        people
/// - Id:                 workflow_card_note
/// - Type:               WorkflowCardNote
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/notes
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/notes
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
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `workflowcardnote-workflowcard-notes`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/notes
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
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/notes';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/notes';

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
  String get note => _getAttribute<String>(kNote, '');

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set note(String? x) =>
      (x == null) ? _attributes.remove(kNote) : _attributes[kNote] = x;

  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set noteCategoryId(String? x) => (x == null)
      ? _attributes.remove(kNoteCategoryId)
      : _attributes[kNoteCategoryId] = x;
  String get noteCategoryId => _getAttribute<String>(kNoteCategoryId, '');

  // Class Constructors
  PcoPeopleWorkflowCardNote.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleWorkflowCardNote.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleWorkflowCardNote] object using this endpoint: `https://api.planningcenteronline.com/people/v2/people/$personId/workflow_cards/$workflowCardId/notes`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `note`, `noteCategoryId`
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeopleWorkflowCardNote(
      {required String personId,
      required String workflowCardId,
      String? id,
      String? note,
      DateTime? createdAt,
      String? noteCategoryId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleWorkflowCardNote.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/people/$personId/workflow_cards/$workflowCardId/notes';
    if (note != null) obj._attributes['note'] = note;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (noteCategoryId != null)
      obj._attributes['note_category_id'] = noteCategoryId;

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

  /// Will get a [PcoCollection] of [PcoPeopleWorkflowCardNote] objects (expecting one)
  /// using a path like this: `/people/v2/people/$personId/workflow_cards/$workflowCardId/notes`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleWorkflowCardNote>>
      getNotesFromPersonAndWorkflowCard(
    String personId,
    String workflowCardId, {
    PcoPeopleWorkflowCardNoteQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoPeopleWorkflowCardNoteQuery();
    if (getAll) query.getAll = true;

    var url =
        '/people/v2/people/$personId/workflow_cards/$workflowCardId/notes';

    return PcoCollection.fromApiCall<PcoPeopleWorkflowCardNote>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
