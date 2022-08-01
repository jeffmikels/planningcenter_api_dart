/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T14:42:03.567851
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoPeopleAnniversaryCoupleOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleAnniversaryCoupleFilter { none }

/// Creates a [PcoPeopleAnniversaryCoupleQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleAnniversaryCoupleQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleAnniversaryCoupleOrder, String> _orderMap = {};
  static String orderString(PcoPeopleAnniversaryCoupleOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleAnniversaryCoupleFilter, String> _filterMap = {};
  static String filterString(PcoPeopleAnniversaryCoupleFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleAnniversaryCoupleQuery({
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

/// This class represents a PCO People AnniversaryCouples Object
///
/// - Application:        people
/// - Id:                 anniversary_couples
/// - Type:               AnniversaryCouples
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/anniversary_couples
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleAnniversaryCouple.fromJson()` constructor.
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
/// Returns upcoming anniversary couples for the organization.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `anniversarycouples-organization-anniversary_couples`: https://api.planningcenteronline.com/people/v2/anniversary_couples
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "AnniversaryCouples",
///   "id": "1",
///   "attributes": {},
///   "relationships": {}
/// }
/// ```
class PcoPeopleAnniversaryCouple extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'AnniversaryCouples';
  static const String kTypeId = 'anniversary_couples';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/anniversary_couples';
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

  // Class Constructors
  PcoPeopleAnniversaryCouple.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleAnniversaryCouple.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleAnniversaryCouple] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoPeopleAnniversaryCouple(
      {String? id,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleAnniversaryCouple.empty();
    obj._id = id;

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

  /// Will get a collection of [PcoPeopleAnniversaryCouple] objects (expecting many)
  /// using a path like this: `/people/v2/anniversary_couples`
  static Future<PcoCollection<PcoPeopleAnniversaryCouple>> get({
    String? id,
    PcoPeopleAnniversaryCoupleQuery? query,
  }) async {
    query ??= PcoPeopleAnniversaryCoupleQuery();

    var url = '/people/v2/anniversary_couples';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleAnniversaryCouple>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
