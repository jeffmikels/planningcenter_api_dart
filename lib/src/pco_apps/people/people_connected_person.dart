/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:26.137717
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoPeopleConnectedPersonOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleConnectedPersonFilter { none }

/// Creates a [PcoPeopleConnectedPersonQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleConnectedPersonQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleConnectedPersonOrder, String> _orderMap = {};
  static String orderString(PcoPeopleConnectedPersonOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleConnectedPersonFilter, String> _filterMap = {};
  static String filterString(PcoPeopleConnectedPersonFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleConnectedPersonQuery({
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

/// This class represents a PCO People ConnectedPerson Object
///
/// - Application:        people
/// - Id:                 connected_person
/// - Type:               ConnectedPerson
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/connected_people
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleConnectedPerson.fromJson()` constructor.
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
/// A Connected Person is an account from a different organization linked to an account in this organization.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `givenName` (ro) -> PCO: `given_name`
/// - `firstName` (ro) -> PCO: `first_name`
/// - `nickname` (ro) -> PCO: `nickname`
/// - `middleName` (ro) -> PCO: `middle_name`
/// - `lastName` (ro) -> PCO: `last_name`
/// - `gender` (ro) -> PCO: `gender`
/// - `organizationName` (ro) -> PCO: `organization_name`
/// - `organizationId` (ro) -> PCO: `organization_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `connectedperson-person-connected_people`: https://api.planningcenteronline.com/people/v2/people/1/connected_people
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ConnectedPerson",
///   "id": "1",
///   "attributes": {
///     "given_name": "string",
///     "first_name": "string",
///     "nickname": "string",
///     "middle_name": "string",
///     "last_name": "string",
///     "gender": "string",
///     "organization_name": "string",
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
class PcoPeopleConnectedPerson extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'ConnectedPerson';
  static const String kTypeId = 'connected_person';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/connected_people';
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
  static const kGivenName = 'given_name';
  static const kFirstName = 'first_name';
  static const kNickname = 'nickname';
  static const kMiddleName = 'middle_name';
  static const kLastName = 'last_name';
  static const kGender = 'gender';
  static const kOrganizationName = 'organization_name';
  static const kOrganizationId = 'organization_id';

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
  String get givenName => _attributes[kGivenName] ?? '';
  String get firstName => _attributes[kFirstName] ?? '';
  String get nickname => _attributes[kNickname] ?? '';
  String get middleName => _attributes[kMiddleName] ?? '';
  String get lastName => _attributes[kLastName] ?? '';
  String get gender => _attributes[kGender] ?? '';
  String get organizationName => _attributes[kOrganizationName] ?? '';
  String get organizationId => _attributes[kOrganizationId] ?? '';

  // Class Constructors
  PcoPeopleConnectedPerson.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleConnectedPerson.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleConnectedPerson] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeopleConnectedPerson(
      {String? id,
      String? givenName,
      String? firstName,
      String? nickname,
      String? middleName,
      String? lastName,
      String? gender,
      String? organizationName,
      String? organizationId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleConnectedPerson.empty();
    obj._id = id;
    if (givenName != null) obj._attributes['given_name'] = givenName;
    if (firstName != null) obj._attributes['first_name'] = firstName;
    if (nickname != null) obj._attributes['nickname'] = nickname;
    if (middleName != null) obj._attributes['middle_name'] = middleName;
    if (lastName != null) obj._attributes['last_name'] = lastName;
    if (gender != null) obj._attributes['gender'] = gender;
    if (organizationName != null)
      obj._attributes['organization_name'] = organizationName;
    if (organizationId != null)
      obj._attributes['organization_id'] = organizationId;

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

  /// Will get a collection of [PcoPeopleConnectedPerson] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/connected_people`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleConnectedPerson>> getFromPerson(
    String personId, {
    String? id,
    PcoPeopleConnectedPersonQuery? query,
  }) async {
    query ??= PcoPeopleConnectedPersonQuery();

    var url = '/people/v2/people/$personId/connected_people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleConnectedPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
