/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.673241
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `displayDate` -> `?order=display_date`
/// - `id` -> `?order=id`
/// - `note` -> `?order=note`
/// - `noteCategoryId` -> `?order=note_category_id`
/// - `updatedAt` -> `?order=updated_at`
enum PcoPeopleNoteOrder {
  createdAt,
  displayDate,
  id,
  note,
  noteCategoryId,
  updatedAt
}

/// Filtering is not allowed when requesting this object.
enum PcoPeopleNoteFilter { none }

/// Creates a [PcoPeopleNoteQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeCategory`: include associated category
/// - `includeCreatedBy`: include associated created_by
/// - `includePerson`: include associated person
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleNoteQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleNote] objects can be requested with one or more of the following criteria:
/// - `whereNote`: query on a specific note, example: ?where[note]=string
/// - `whereNoteCategoryId`: query on a specific note_category_id, example: ?where[note_category_id]=primary_key
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
/// - `PcoPeopleNoteOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleNoteOrder.displayDate` : will order by `display_date`
/// - `PcoPeopleNoteOrder.id` : will order by `id`
/// - `PcoPeopleNoteOrder.note` : will order by `note`
/// - `PcoPeopleNoteOrder.noteCategoryId` : will order by `note_category_id`
/// - `PcoPeopleNoteOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleNoteQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleNoteOrder, String> _orderMap = {
    PcoPeopleNoteOrder.createdAt: 'created_at',
    PcoPeopleNoteOrder.displayDate: 'display_date',
    PcoPeopleNoteOrder.id: 'id',
    PcoPeopleNoteOrder.note: 'note',
    PcoPeopleNoteOrder.noteCategoryId: 'note_category_id',
    PcoPeopleNoteOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoPeopleNoteOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleNoteFilter, String> _filterMap = {};
  static String filterString(PcoPeopleNoteFilter filter) => _filterMap[filter]!;

  PcoPeopleNoteQuery({
    /// include associated category
    /// when true, adds `?include=category` to url
    bool includeCategory = false,

    /// include associated created_by
    /// when true, adds `?include=created_by` to url
    bool includeCreatedBy = false,

    /// include associated person
    /// when true, adds `?include=person` to url
    bool includePerson = false,

    /// when true, adds `?include=category,created_by,person` to url parameters
    bool includeAll = false,

    /// Query by `note`
    /// query on a specific note, url example: ?where[note]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereNote,

    /// Query by `note_category_id`
    /// query on a specific note_category_id, url example: ?where[note_category_id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereNoteCategoryId,
    PcoPeopleNoteOrder? orderBy,

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
    if (includeAll || includeCategory) include.add('category');
    if (includeAll || includeCreatedBy) include.add('created_by');
    if (includeAll || includePerson) include.add('person');

    if (whereNote != null)
      where.add(PlanningCenterApiWhere.parse('note', whereNote));
    if (whereNoteCategoryId != null)
      where.add(PlanningCenterApiWhere.parse(
          'note_category_id', whereNoteCategoryId));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People Note Object
///
/// - Application:        people
/// - Id:                 note
/// - Type:               Note
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/notes
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/people/1/notes
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleNote()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleNote.fromJson()` constructor.
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
/// A note is text with a category connected to a person’s profile.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `note` (rw) -> PCO: `note`
/// - `createdAt` (rw) -> PCO: `created_at`
/// - `updatedAt` (rw) -> PCO: `updated_at`
/// - `displayDate` (rw) -> PCO: `display_date`
/// - `noteCategoryId` (rw) -> PCO: `note_category_id`
/// - `organizationId` (ro) -> PCO: `organization_id`
/// - `personId` (ro) -> PCO: `person_id`
/// - `createdById` (ro) -> PCO: `created_by_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `notecategory-note-category`: https://api.planningcenteronline.com/people/v2/notes/1/category
/// - `person-note-created_by`: https://api.planningcenteronline.com/people/v2/notes/1/created_by
/// - `person-note-person`: https://api.planningcenteronline.com/people/v2/notes/1/person
///
/// Inbound Edges:
/// - `note-organization-notes`: https://api.planningcenteronline.com/people/v2/notes
/// - `note-person-notes`: https://api.planningcenteronline.com/people/v2/people/1/notes
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Note",
///   "id": "1",
///   "attributes": {
///     "note": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "display_date": "2000-01-01T12:00:00Z",
///     "note_category_id": "primary_key",
///     "organization_id": "primary_key",
///     "person_id": "primary_key",
///     "created_by_id": "primary_key"
///   },
///   "relationships": {
///     "note_category": {
///       "data": {
///         "type": "NoteCategory",
///         "id": "1"
///       }
///     },
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     },
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleNote extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Note';
  static const String kTypeId = 'note';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/notes';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/notes';

  /// possible includes with parameter ?include=a,b
  /// - `category`: include associated category
  /// - `created_by`: include associated created_by
  /// - `person`: include associated person
  static List<String> get canInclude => ['category', 'created_by', 'person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `note`: (URLParameter), query on a specific note, example: ?where[note]=string
  /// - `note_category_id`: (URLParameter), query on a specific note_category_id, example: ?where[note_category_id]=primary_key
  static List<String> get canQuery => ['note', 'note_category_id'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `display_date`: (URLParameter), prefix with a hyphen (-display_date) to reverse the order
  /// - `id`: (URLParameter), prefix with a hyphen (-id) to reverse the order
  /// - `note`: (URLParameter), prefix with a hyphen (-note) to reverse the order
  /// - `note_category_id`: (URLParameter), prefix with a hyphen (-note_category_id) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => [
        'created_at',
        'display_date',
        'id',
        'note',
        'note_category_id',
        'updated_at'
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
  static const kNote = 'note';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kDisplayDate = 'display_date';
  static const kNoteCategoryId = 'note_category_id';
  static const kOrganizationId = 'organization_id';
  static const kPersonId = 'person_id';
  static const kCreatedById = 'created_by_id';

  // getters and setters
  @override
  List<String> get createAllowed =>
      ['note', 'created_at', 'updated_at', 'display_date', 'note_category_id'];

  @override
  List<String> get updateAllowed =>
      ['note', 'created_at', 'updated_at', 'display_date', 'note_category_id'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get note => _attributes[kNote] ?? '';
  DateTime get displayDate => DateTime.parse(_attributes[kDisplayDate] ?? '');
  String get noteCategoryId => _attributes[kNoteCategoryId] ?? '';
  String get organizationId => _attributes[kOrganizationId] ?? '';
  String get personId => _attributes[kPersonId] ?? '';
  String get createdById => _attributes[kCreatedById] ?? '';

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set note(String? x) =>
      (x == null) ? _attributes.remove(kNote) : _attributes[kNote] = x;

  ///
  /// pass `null` to remove key from attributes
  set createdAt(DateTime? x) => (x == null)
      ? _attributes.remove(kCreatedAt)
      : _attributes[kCreatedAt] = x.toIso8601String();

  ///
  /// pass `null` to remove key from attributes
  set updatedAt(DateTime? x) => (x == null)
      ? _attributes.remove(kUpdatedAt)
      : _attributes[kUpdatedAt] = x.toIso8601String();

  ///
  /// pass `null` to remove key from attributes
  set displayDate(DateTime? x) => (x == null)
      ? _attributes.remove(kDisplayDate)
      : _attributes[kDisplayDate] = x.toIso8601String();

  ///
  /// pass `null` to remove key from attributes
  set noteCategoryId(String? x) => (x == null)
      ? _attributes.remove(kNoteCategoryId)
      : _attributes[kNoteCategoryId] = x;

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedCategory<T extends PcoResource>() =>
      (relationships['category'] as List?)?.cast<T>() ?? [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedCreatedBy<T extends PcoResource>() =>
      (relationships['created_by'] as List?)?.cast<T>() ?? [];

  PcoPeoplePerson? get includedPerson =>
      _firstOrNull<PcoPeoplePerson>(relationships['person']);

  // Class Constructors
  PcoPeopleNote.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleNote.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleNote] object using this endpoint: `https://api.planningcenteronline.com/people/v2/people/$personId/notes`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `note`, `createdAt`, `updatedAt`, `displayDate`, `noteCategoryId`
  /// - FIELDS USED WHEN UPDATING: `note`, `createdAt`, `updatedAt`, `displayDate`, `noteCategoryId`
  factory PcoPeopleNote(
      {required String personId,
      String? id,
      String? note,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? displayDate,
      String? noteCategoryId,
      String? organizationId,
      String? createdById,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleNote.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/people/$personId/notes';
    obj._attributes['person_id'] = personId;
    if (note != null) obj._attributes['note'] = note;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (displayDate != null)
      obj._attributes['display_date'] = displayDate.toIso8601String();
    if (noteCategoryId != null)
      obj._attributes['note_category_id'] = noteCategoryId;
    if (organizationId != null)
      obj._attributes['organization_id'] = organizationId;
    if (createdById != null) obj._attributes['created_by_id'] = createdById;

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

  /// Will get a collection of [PcoPeopleNote] objects (expecting many)
  /// using a path like this: `/people/v2/notes`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleNote>> get({
    String? id,
    PcoPeopleNoteQuery? query,
    bool includeAll = false,
    bool includeCategory = false,
    bool includeCreatedBy = false,
    bool includePerson = false,
  }) async {
    query ??= PcoPeopleNoteQuery();
    if (includeAll) query.include.addAll(PcoPeopleNote.canInclude);
    if (includeCategory) query.include.add('category');
    if (includeCreatedBy) query.include.add('created_by');
    if (includePerson) query.include.add('person');
    var url = '/people/v2/notes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNote>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleNote] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/notes`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleNote>> getFromPerson(
    String personId, {
    String? id,
    PcoPeopleNoteQuery? query,
    bool includeAll = false,
    bool includeCategory = false,
    bool includeCreatedBy = false,
    bool includePerson = false,
  }) async {
    query ??= PcoPeopleNoteQuery();
    if (includeAll) query.include.addAll(PcoPeopleNote.canInclude);
    if (includeCategory) query.include.add('category');
    if (includeCreatedBy) query.include.add('created_by');
    if (includePerson) query.include.add('person');
    var url = '/people/v2/people/$personId/notes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNote>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleNoteCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/notes/1/category`
  Future<PcoCollection<PcoPeopleNoteCategory>> getCategory(
      {PcoPeopleNoteCategoryQuery? query}) async {
    query ??= PcoPeopleNoteCategoryQuery();
    var url = '$apiEndpoint/category';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategory>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/notes/1/created_by`
  Future<PcoCollection<PcoPeoplePerson>> getCreatedBy(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/created_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/notes/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/person';
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
