/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:43:10.693567
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoGivingLabelOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoGivingLabelFilter { none }

/// Creates a [PcoGivingLabelQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoGivingLabel] objects can be requested with one or more of the following criteria:
/// - `whereSlug`: query on a specific slug, example: ?where[slug]=string
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGivingLabelQuery extends PlanningCenterApiQuery {
  static final Map<PcoGivingLabelOrder, String> _orderMap = {};
  static String orderString(PcoGivingLabelOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGivingLabelFilter, String> _filterMap = {};
  static String filterString(PcoGivingLabelFilter filter) =>
      _filterMap[filter]!;

  PcoGivingLabelQuery({
    /// Query by `slug`
    /// query on a specific slug, url example: ?where[slug]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereSlug,

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
    if (whereSlug != null)
      where.add(PlanningCenterApiWhere.parse('slug', whereSlug));
  }
}

/// This class represents a PCO Giving Label Object
///
/// - Application:        giving
/// - Id:                 label
/// - Type:               Label
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/labels
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGivingLabel.fromJson()` constructor.
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
/// A `Label` is a way for Admins to manage and categorize `Donation`s.
///
/// Multiple `Label`s can be added for each `Donation`, and these will only be displayed in the Giving admin interface, so donors never see them.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `slug` (ro) -> PCO: `slug`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `label-donation-labels`: https://api.planningcenteronline.com/giving/v2/donations/1/labels
/// - `label-organization-labels`: https://api.planningcenteronline.com/giving/v2/labels
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Label",
///   "id": "1",
///   "attributes": {
///     "slug": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoGivingLabel extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Label';
  static const String kTypeId = 'label';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2/labels';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `slug`: (URLParameter), query on a specific slug, example: ?where[slug]=string
  static List<String> get canQuery => ['slug'];

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
  static const kSlug = 'slug';

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
  String get slug => _attributes[kSlug] ?? '';

  // Class Constructors
  PcoGivingLabel.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGivingLabel.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingLabel] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGivingLabel(
      {String? id,
      String? slug,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGivingLabel.empty();
    obj._id = id;
    if (slug != null) obj._attributes['slug'] = slug;

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

  /// Will get a collection of [PcoGivingLabel] objects (expecting many)
  /// using a path like this: `/giving/v2/labels`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingLabel>> get({
    String? id,
    PcoGivingLabelQuery? query,
  }) async {
    query ??= PcoGivingLabelQuery();

    var url = '/giving/v2/labels';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingLabel>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingLabel] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/labels`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingLabel>> getFromDonation(
    String donationId, {
    String? id,
    PcoGivingLabelQuery? query,
  }) async {
    query ??= PcoGivingLabelQuery();

    var url = '/giving/v2/donations/$donationId/labels';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingLabel>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
