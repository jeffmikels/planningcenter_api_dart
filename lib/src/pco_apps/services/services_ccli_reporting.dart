/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T15:11:03.725013
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesCcliReportingOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesCcliReportingFilter { none }

/// Creates a [PcoServicesCcliReportingQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesCcliReportingQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesCcliReportingOrder, String> _orderMap = {};
  static String orderString(PcoServicesCcliReportingOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesCcliReportingFilter, String> _filterMap = {};
  static String filterString(PcoServicesCcliReportingFilter filter) =>
      _filterMap[filter]!;

  PcoServicesCcliReportingQuery({
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

/// This class represents a PCO Services CcliReporting Object
///
/// - Application:        services
/// - Id:                 ccli_reporting
/// - Type:               CcliReporting
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/ccli_reporting
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesCcliReporting.fromJson()` constructor.
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
/// - `digital` (ro) -> PCO: `digital`
/// - `print` (ro) -> PCO: `print`
/// - `recording` (ro) -> PCO: `recording`
/// - `translation` (ro) -> PCO: `translation`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `cclireporting-item-ccli_reporting`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/ccli_reporting
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "CcliReporting",
///   "id": "1",
///   "attributes": {
///     "digital": 1,
///     "print": 1,
///     "recording": 1,
///     "translation": 1
///   },
///   "relationships": {
///     "item": {
///       "data": {
///         "type": "Item",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesCcliReporting extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'CcliReporting';
  static const String kTypeId = 'ccli_reporting';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/ccli_reporting';
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
  static const kDigital = 'digital';
  static const kPrint = 'print';
  static const kRecording = 'recording';
  static const kTranslation = 'translation';

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
  int get digital => _attributes[kDigital] ?? 0;
  int get print => _attributes[kPrint] ?? 0;
  int get recording => _attributes[kRecording] ?? 0;
  int get translation => _attributes[kTranslation] ?? 0;

  // Class Constructors
  PcoServicesCcliReporting.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesCcliReporting.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesCcliReporting] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoServicesCcliReporting(
      {String? id,
      int? digital,
      int? print,
      int? recording,
      int? translation,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesCcliReporting.empty();
    obj._id = id;
    if (digital != null) obj._attributes['digital'] = digital;
    if (print != null) obj._attributes['print'] = print;
    if (recording != null) obj._attributes['recording'] = recording;
    if (translation != null) obj._attributes['translation'] = translation;

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

  /// Will get a collection of [PcoServicesCcliReporting] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/ccli_reporting`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesCcliReporting>>
      getFromServiceTypeAndPlanAndItem(
    String serviceTypeId,
    String planId,
    String itemId, {
    PcoServicesCcliReportingQuery? query,
  }) async {
    query ??= PcoServicesCcliReportingQuery();

    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/ccli_reporting';

    return PcoCollection.fromApiCall<PcoServicesCcliReporting>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
