/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:37.820529
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `name` -> `?order=name`
enum PcoServicesAttachmentTypeOrder { name }

/// Filtering is not allowed when requesting this object.
enum PcoServicesAttachmentTypeFilter { none }

/// Creates a [PcoServicesAttachmentTypeQuery] object
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoServicesAttachmentTypeOrder.name` : will order by `name`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesAttachmentTypeQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesAttachmentTypeOrder, String> _orderMap = {
    PcoServicesAttachmentTypeOrder.name: 'name',
  };
  static String orderString(PcoServicesAttachmentTypeOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesAttachmentTypeFilter, String> _filterMap = {};
  static String filterString(PcoServicesAttachmentTypeFilter filter) =>
      _filterMap[filter]!;

  PcoServicesAttachmentTypeQuery({
    PcoServicesAttachmentTypeOrder? orderBy,

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

/// This class represents a PCO Services AttachmentType Object
///
/// - Application:        services
/// - Id:                 attachment_type
/// - Type:               AttachmentType
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/attachment_types
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesAttachmentType.fromJson()` constructor.
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
/// Create an Attachment Type for each type of file you might want only specific people to see. When you attach a file, you can specify an attachment type to then be able to link the file to a position.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `aliases` (ro) -> PCO: `aliases`
/// - `isCapoedChordCharts` (ro) -> PCO: `capoed_chord_charts`
/// - `isChordCharts` (ro) -> PCO: `chord_charts`
/// - `exclusions` (ro) -> PCO: `exclusions`
/// - `isLyrics` (ro) -> PCO: `lyrics`
/// - `isNumberCharts` (ro) -> PCO: `number_charts`
/// - `isNumeralCharts` (ro) -> PCO: `numeral_charts`
/// - `isBuiltIn` (ro) -> PCO: `built_in`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `attachmenttype-organization-attachment_types`: https://api.planningcenteronline.com/services/v2/attachment_types
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "AttachmentType",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "aliases": "string",
///     "capoed_chord_charts": true,
///     "chord_charts": true,
///     "exclusions": "string",
///     "lyrics": true,
///     "number_charts": true,
///     "numeral_charts": true,
///     "built_in": true
///   },
///   "relationships": {
///     "attachment_type_group": {
///       "data": {
///         "type": "AttachmentTypeGroup",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesAttachmentType extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'AttachmentType';
  static const String kTypeId = 'attachment_type';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/attachment_types';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['name'];

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
  static const kAliases = 'aliases';
  static const kCapoedChordCharts = 'capoed_chord_charts';
  static const kChordCharts = 'chord_charts';
  static const kExclusions = 'exclusions';
  static const kLyrics = 'lyrics';
  static const kNumberCharts = 'number_charts';
  static const kNumeralCharts = 'numeral_charts';
  static const kBuiltIn = 'built_in';

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
  String get name => _attributes[kName] ?? '';
  String get aliases => _attributes[kAliases] ?? '';
  bool get isCapoedChordCharts => _attributes[kCapoedChordCharts] == true;
  bool get isChordCharts => _attributes[kChordCharts] == true;
  String get exclusions => _attributes[kExclusions] ?? '';
  bool get isLyrics => _attributes[kLyrics] == true;
  bool get isNumberCharts => _attributes[kNumberCharts] == true;
  bool get isNumeralCharts => _attributes[kNumeralCharts] == true;
  bool get isBuiltIn => _attributes[kBuiltIn] == true;

  // Class Constructors
  PcoServicesAttachmentType.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesAttachmentType.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesAttachmentType] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesAttachmentType(
      {String? id,
      String? name,
      String? aliases,
      bool? isCapoedChordCharts,
      bool? isChordCharts,
      String? exclusions,
      bool? isLyrics,
      bool? isNumberCharts,
      bool? isNumeralCharts,
      bool? isBuiltIn,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesAttachmentType.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
    if (aliases != null) obj._attributes['aliases'] = aliases;
    if (isCapoedChordCharts != null)
      obj._attributes['capoed_chord_charts'] = isCapoedChordCharts;
    if (isChordCharts != null) obj._attributes['chord_charts'] = isChordCharts;
    if (exclusions != null) obj._attributes['exclusions'] = exclusions;
    if (isLyrics != null) obj._attributes['lyrics'] = isLyrics;
    if (isNumberCharts != null)
      obj._attributes['number_charts'] = isNumberCharts;
    if (isNumeralCharts != null)
      obj._attributes['numeral_charts'] = isNumeralCharts;
    if (isBuiltIn != null) obj._attributes['built_in'] = isBuiltIn;

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

  /// Will get a [PcoCollection] of [PcoServicesAttachmentType] objects (expecting many)
  /// using a path like this: `/services/v2/attachment_types`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesAttachmentType>> get({
    String? id,
    PcoServicesAttachmentTypeQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoServicesAttachmentTypeQuery();
    if (getAll) query.getAll = true;

    var url = '/services/v2/attachment_types';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachmentType>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoServicesAttachmentType] object
  /// using a path like this: `/services/v2/attachment_types/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoServicesAttachmentType?> getSingle(
    String id, {
    PcoServicesAttachmentTypeQuery? query,
  }) async {
    query ??= PcoServicesAttachmentTypeQuery();

    var url = '/services/v2/attachment_types/$id';
    var retval = await PcoCollection.fromApiCall<PcoServicesAttachmentType>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoServicesAttachmentType] objects (expecting many)
  /// using a path like this: `/services/v2/attachment_types`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoServicesAttachmentType>> getAll({
    String? id,
    PcoServicesAttachmentTypeQuery? query,
  }) async {
    query ??= PcoServicesAttachmentTypeQuery();
    query.getAll = true;

    var url = '/services/v2/attachment_types';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachmentType>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
