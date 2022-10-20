/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.771962
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoGroupsOwnerOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoGroupsOwnerFilter { none }

/// Creates a [PcoGroupsOwnerQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGroupsOwnerQuery extends PlanningCenterApiQuery {
  static final Map<PcoGroupsOwnerOrder, String> _orderMap = {};
  static String orderString(PcoGroupsOwnerOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGroupsOwnerFilter, String> _filterMap = {};
  static String filterString(PcoGroupsOwnerFilter filter) =>
      _filterMap[filter]!;

  PcoGroupsOwnerQuery({
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
  }) : super();
}

/// This class represents a PCO Groups Owner Object
///
/// - Application:        groups
/// - Id:                 owner
/// - Type:               Owner
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/events/1/notes/1/owner
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGroupsOwner.fromJson()` constructor.
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
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `avatarUrl` (ro) -> PCO: `avatar_url`
/// - `firstName` (ro) -> PCO: `first_name`
/// - `lastName` (ro) -> PCO: `last_name`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `owner-eventnote-owner`: https://api.planningcenteronline.com/groups/v2/events/1/notes/1/owner
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Owner",
///   "id": "1",
///   "attributes": {
///     "avatar_url": "string",
///     "first_name": "string",
///     "last_name": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoGroupsOwner extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Owner';
  static const String kTypeId = 'owner';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/groups/v2/events/1/notes/1/owner';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  ///
  static List<String> get canOrderBy => [];

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
  static const kAvatarUrl = 'avatar_url';
  static const kFirstName = 'first_name';
  static const kLastName = 'last_name';

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
  String get avatarUrl => _attributes[kAvatarUrl] ?? '';
  String get firstName => _attributes[kFirstName] ?? '';
  String get lastName => _attributes[kLastName] ?? '';

  // Class Constructors
  PcoGroupsOwner.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGroupsOwner.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGroupsOwner] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGroupsOwner(
      {String? id,
      String? avatarUrl,
      String? firstName,
      String? lastName,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGroupsOwner.empty();
    obj._id = id;
    if (avatarUrl != null) obj._attributes['avatar_url'] = avatarUrl;
    if (firstName != null) obj._attributes['first_name'] = firstName;
    if (lastName != null) obj._attributes['last_name'] = lastName;

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

  /// Will get a collection of [PcoGroupsOwner] objects (expecting many)
  /// using a path like this: `/groups/v2/events/$eventId/notes/$noteId/owner`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsOwner>> getFromEventAndNote(
    String eventId,
    String noteId, {
    String? id,
    PcoGroupsOwnerQuery? query,
  }) async {
    query ??= PcoGroupsOwnerQuery();

    var url = '/groups/v2/events/$eventId/notes/$noteId/owner';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsOwner>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
