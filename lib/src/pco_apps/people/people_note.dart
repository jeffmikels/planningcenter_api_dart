/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T11:30:57.597934
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People Note Object
///
/// - Application:        people
/// - Id:                 note
/// - Type:               Note
/// - ApiVersion:         2021-08-17
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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `category`: include associated category
/// - `created_by`: include associated created_by
/// - `person`: include associated person
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `note`: (URLParameter), query on a specific note, example: ?where[note]=string
/// - `note_category_id`: (URLParameter), query on a specific note_category_id, example: ?where[note_category_id]=primary_key
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `display_date`: (URLParameter), prefix with a hyphen (-display_date) to reverse the order
/// - `id`: (URLParameter), prefix with a hyphen (-id) to reverse the order
/// - `note`: (URLParameter), prefix with a hyphen (-note) to reverse the order
/// - `note_category_id`: (URLParameter), prefix with a hyphen (-note_category_id) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
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
  static const String kApiVersion = '2021-08-17';
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
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => false;

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

  /// pass `null` to remove key from attributes
  set note(String? x) =>
      (x == null) ? _attributes.remove(kNote) : _attributes[kNote] = x;

  /// pass `null` to remove key from attributes
  set createdAt(DateTime? x) => (x == null)
      ? _attributes.remove(kCreatedAt)
      : _attributes[kCreatedAt] = x.toIso8601String();

  /// pass `null` to remove key from attributes
  set updatedAt(DateTime? x) => (x == null)
      ? _attributes.remove(kUpdatedAt)
      : _attributes[kUpdatedAt] = x.toIso8601String();

  /// pass `null` to remove key from attributes
  set displayDate(DateTime? x) => (x == null)
      ? _attributes.remove(kDisplayDate)
      : _attributes[kDisplayDate] = x.toIso8601String();

  /// pass `null` to remove key from attributes
  set noteCategoryId(String? x) => (x == null)
      ? _attributes.remove(kNoteCategoryId)
      : _attributes[kNoteCategoryId] = x;

  // typed getters for each relationship
  // the code generator cannot determine the resource type of the relationships, so for type safety, the user should

  List<T> includedCategory<T extends PcoResource>() =>
      relationships['category']?.cast<T>() ?? [];
  List<T> includedCreatedBy<T extends PcoResource>() =>
      relationships['created_by']?.cast<T>() ?? [];
  List<T> includedPerson<T extends PcoResource>() =>
      relationships['person']?.cast<T>() ?? [];

  // Class Constructors
  PcoPeopleNote.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleNote.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleNote] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people/$peopleId/notes`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleNote(String peopleId,
      {String? note,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? displayDate,
      String? noteCategoryId}) {
    var obj = PcoPeopleNote.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/people/$peopleId/notes';
    if (note != null) obj.note = note;
    if (createdAt != null) obj.createdAt = createdAt;
    if (updatedAt != null) obj.updatedAt = updatedAt;
    if (displayDate != null) obj.displayDate = displayDate;
    if (noteCategoryId != null) obj.noteCategoryId = noteCategoryId;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeopleNote] objects (expecting many)
  /// using a path like this: `/people/v2/notes`
  static Future<PcoCollection<PcoPeopleNote>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCategory = false,
    bool includeCreatedBy = false,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();
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
  /// using a path like this: `/people/v2/people/$peopleId/notes`
  static Future<PcoCollection<PcoPeopleNote>> getFromPeople(
    String peopleId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCategory = false,
    bool includeCreatedBy = false,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleNote.canInclude);
    if (includeCategory) query.include.add('category');
    if (includeCreatedBy) query.include.add('created_by');
    if (includePerson) query.include.add('person');
    var url = '/people/v2/people/$peopleId/notes';
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
  Future<PcoCollection<PcoPeopleNoteCategory>> getCategory({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeShares = false,
    bool includeSubscribers = false,
    bool includeSubscriptions = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleNote.canInclude);
    if (includeShares) query.include.add('shares');
    if (includeSubscribers) query.include.add('subscribers');
    if (includeSubscriptions) query.include.add('subscriptions');
    var url = '$apiEndpoint/category';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategory>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/notes/1/created_by`
  Future<PcoCollection<PcoPeoplePerson>> getCreatedBy({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleNote.canInclude);
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
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '$apiEndpoint/created_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/notes/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleNote.canInclude);
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
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }
}
