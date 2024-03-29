/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:20.938068
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesArrangementSectionOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesArrangementSectionFilter { none }

/// Creates a [PcoServicesArrangementSectionQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesArrangementSectionQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesArrangementSectionOrder, String> _orderMap = {};
  static String orderString(PcoServicesArrangementSectionOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesArrangementSectionFilter, String> _filterMap = {};
  static String filterString(PcoServicesArrangementSectionFilter filter) =>
      _filterMap[filter]!;

  PcoServicesArrangementSectionQuery({
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

/// This class represents a PCO Services ArrangementSections Object
///
/// - Application:        services
/// - Id:                 arrangement_sections
/// - Type:               ArrangementSections
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesArrangementSection.fromJson()` constructor.
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
/// Sections of an Arrangement, derived from its chord chart
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `sections` (ro) -> PCO: `sections`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `arrangementsections-arrangement-sections`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ArrangementSections",
///   "id": "1",
///   "attributes": {
///     "sections": []
///   },
///   "relationships": {}
/// }
/// ```
class PcoServicesArrangementSection extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ArrangementSections';
  static const String kTypeId = 'arrangement_sections';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections';
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
  static const kSections = 'sections';

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
  List get sections => _getAttribute<List>(kSections, []);

  // Class Constructors
  PcoServicesArrangementSection.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesArrangementSection.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesArrangementSection] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesArrangementSection(
      {String? id,
      List? sections,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesArrangementSection.empty();
    obj._id = id;
    if (sections != null) obj._attributes['sections'] = sections;

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

  /// Will get a [PcoCollection] of [PcoServicesArrangementSection] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/arrangements/$arrangementId/sections`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesArrangementSection>>
      getSectionsFromSongAndArrangement(
    String songId,
    String arrangementId, {
    String? id,
    PcoServicesArrangementSectionQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoServicesArrangementSectionQuery();
    if (getAll) query.getAll = true;

    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/sections';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesArrangementSection>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoServicesArrangementSection] object
  /// using a path like this: `/services/v2/songs/$songId/arrangements/$arrangementId/sections/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoServicesArrangementSection?>
      getSingleSectionsFromSongAndArrangement(
    String songId,
    String arrangementId,
    String id, {
    PcoServicesArrangementSectionQuery? query,
  }) async {
    query ??= PcoServicesArrangementSectionQuery();

    var url =
        '/services/v2/songs/$songId/arrangements/$arrangementId/sections/$id';
    var retval = await PcoCollection.fromApiCall<PcoServicesArrangementSection>(
        url,
        query: query,
        apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoServicesArrangementSection] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/arrangements/$arrangementId/sections`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoServicesArrangementSection>>
      getAllSectionsFromSongAndArrangement(
    String songId,
    String arrangementId, {
    String? id,
    PcoServicesArrangementSectionQuery? query,
  }) async {
    query ??= PcoServicesArrangementSectionQuery();
    query.getAll = true;

    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/sections';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesArrangementSection>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
