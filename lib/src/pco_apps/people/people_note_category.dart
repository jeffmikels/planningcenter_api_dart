/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T21:46:38.904702
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

// import '../../pco.dart';
part of pco;

/// This class represents a PCO People NoteCategory Object
///
/// - Application:        people
/// - Id:                 note_category
/// - Type:               NoteCategory
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/note_categories
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/note_categories
///
/// ## Description
/// A Note Category
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (rw) -> PCO: `name`
/// - `isLocked` (ro) -> PCO: `locked`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `organizationId` (ro) -> PCO: `organization_id`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `shares`: include associated shares
/// - `subscribers`: include associated subscribers
/// - `subscriptions`: include associated subscriptions
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `locked`: (URLParameter), query on a specific locked, example: ?where[locked]=true
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `organization_id`: (URLParameter), query on a specific organization_id, example: ?where[organization_id]=primary_key
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `locked`: (URLParameter), prefix with a hyphen (-locked) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `organization_id`: (URLParameter), prefix with a hyphen (-organization_id) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `notecategoryshare-notecategory-shares`: https://api.planningcenteronline.com/people/v2/note_categories/1/shares
/// - `person-notecategory-subscribers`: https://api.planningcenteronline.com/people/v2/note_categories/1/subscribers
/// - `notecategorysubscription-notecategory-subscriptions`: https://api.planningcenteronline.com/people/v2/note_categories/1/subscriptions
///
/// Inbound Edges:
/// - `notecategory-note-category`: https://api.planningcenteronline.com/people/v2/notes/1/category
/// - `notecategory-organization-note_categories`: https://api.planningcenteronline.com/people/v2/note_categories
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "NoteCategory",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "locked": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "organization_id": "primary_key"
///   },
///   "relationships": {
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleNoteCategory extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'NoteCategory';
  static const String kTypeId = 'note_category';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/note_categories';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/note_categories';

  /// possible includes with parameter ?include=a,b
  /// - `shares`: include associated shares
  /// - `subscribers`: include associated subscribers
  /// - `subscriptions`: include associated subscriptions
  static List<String> get canInclude =>
      ['shares', 'subscribers', 'subscriptions'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `locked`: (URLParameter), query on a specific locked, example: ?where[locked]=true
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `organization_id`: (URLParameter), query on a specific organization_id, example: ?where[organization_id]=primary_key
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery =>
      ['created_at', 'locked', 'name', 'organization_id', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `locked`: (URLParameter), prefix with a hyphen (-locked) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `organization_id`: (URLParameter), prefix with a hyphen (-organization_id) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy =>
      ['created_at', 'locked', 'name', 'organization_id', 'updated_at'];

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
  static const kName = 'name';
  static const kLocked = 'locked';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kOrganizationId = 'organization_id';

  // getters and setters
  @override
  List<String> get createAllowed => ['name'];

  @override
  List<String> get updateAllowed => ['name'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  bool get isLocked => _attributes[kLocked] == true;
  String get organizationId => _attributes[kOrganizationId] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? attributes.remove(kName) : _attributes[kName] = x;

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  List<T> includedShares<T extends PcoResource>() =>
      relationships['shares']?.cast<T>() ?? [];
  List<T> includedSubscribers<T extends PcoResource>() =>
      relationships['subscribers']?.cast<T>() ?? [];
  List<T> includedSubscriptions<T extends PcoResource>() =>
      relationships['subscriptions']?.cast<T>() ?? [];

  // Class Constructors
  PcoPeopleNoteCategory.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleNoteCategory.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleNoteCategory] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/note_categories`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleNoteCategory({String? name}) {
    var obj = PcoPeopleNoteCategory.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/note_categories';
    if (name != null) obj.name = name;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoPeopleNoteCategory] objects (expecting many)
  /// using a path like this: `/people/v2/note_categories`
  static Future<PcoCollection<PcoPeopleNoteCategory>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategory.canInclude;
    var url = '/people/v2/note_categories';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategory>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleNoteCategory] objects (expecting one)
  /// using a path like this: `/people/v2/notes/$noteId/category`
  static Future<PcoCollection<PcoPeopleNoteCategory>> getCategoryFromNote(
      String noteId,
      {PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategory.canInclude;
    var url = '/people/v2/notes/$noteId/category';

    return PcoCollection.fromApiCall<PcoPeopleNoteCategory>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleNoteCategoryShare] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_categories/1/shares`
  Future<PcoCollection<PcoPeopleNoteCategoryShare>> getShares(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategoryShare.canInclude;
    var url = '$apiEndpoint/shares';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategoryShare>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_categories/1/subscribers`
  Future<PcoCollection<PcoPeoplePerson>> getSubscribers(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/subscribers';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNoteCategorySubscription] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_categories/1/subscriptions`
  Future<PcoCollection<PcoPeopleNoteCategorySubscription>> getSubscriptions(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes)
      query.include = PcoPeopleNoteCategorySubscription.canInclude;
    var url = '$apiEndpoint/subscriptions';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategorySubscription>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
