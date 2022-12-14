/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:38.138999
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoGroupsLocationOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoGroupsLocationFilter { none }

/// Creates a [PcoGroupsLocationQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGroupsLocationQuery extends PlanningCenterApiQuery {
  static final Map<PcoGroupsLocationOrder, String> _orderMap = {};
  static String orderString(PcoGroupsLocationOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGroupsLocationFilter, String> _filterMap = {};
  static String filterString(PcoGroupsLocationFilter filter) =>
      _filterMap[filter]!;

  PcoGroupsLocationQuery({
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

/// This class represents a PCO Groups Location Object
///
/// - Application:        groups
/// - Id:                 location
/// - Type:               Location
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/locations
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGroupsLocation.fromJson()` constructor.
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
/// - `displayPreference` (ro) -> PCO: `display_preference`
/// - `fullFormattedAddress` (ro) -> PCO: `full_formatted_address`
/// - `latitude` (ro) -> PCO: `latitude`
/// - `longitude` (ro) -> PCO: `longitude`
/// - `name` (ro) -> PCO: `name`
/// - `radius` (ro) -> PCO: `radius`
/// - `strategy` (ro) -> PCO: `strategy`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `location-event-location`: https://api.planningcenteronline.com/groups/v2/events/1/location
/// - `location-group-location`: https://api.planningcenteronline.com/groups/v2/groups/1/location
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Location",
///   "id": "1",
///   "attributes": {
///     "display_preference": "value",
///     "full_formatted_address": "string",
///     "latitude": 1.42,
///     "longitude": 1.42,
///     "name": "string",
///     "radius": "string",
///     "strategy": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoGroupsLocation extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Location';
  static const String kTypeId = 'location';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/groups/v2/locations';
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
  static const kDisplayPreference = 'display_preference';
  static const kFullFormattedAddress = 'full_formatted_address';
  static const kLatitude = 'latitude';
  static const kLongitude = 'longitude';
  static const kName = 'name';
  static const kRadius = 'radius';
  static const kStrategy = 'strategy';

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
  String get displayPreference => _attributes[kDisplayPreference] ?? '';
  String get fullFormattedAddress => _attributes[kFullFormattedAddress] ?? '';
  double get latitude => _attributes[kLatitude]?.toDouble() ?? 0.0;
  double get longitude => _attributes[kLongitude]?.toDouble() ?? 0.0;
  String get name => _attributes[kName] ?? '';
  String get radius => _attributes[kRadius] ?? '';
  String get strategy => _attributes[kStrategy] ?? '';

  // Class Constructors
  PcoGroupsLocation.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGroupsLocation.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGroupsLocation] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGroupsLocation(
      {String? id,
      String? displayPreference,
      String? fullFormattedAddress,
      double? latitude,
      double? longitude,
      String? name,
      String? radius,
      String? strategy,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGroupsLocation.empty();
    obj._id = id;
    if (displayPreference != null)
      obj._attributes['display_preference'] = displayPreference;
    if (fullFormattedAddress != null)
      obj._attributes['full_formatted_address'] = fullFormattedAddress;
    if (latitude != null) obj._attributes['latitude'] = latitude;
    if (longitude != null) obj._attributes['longitude'] = longitude;
    if (name != null) obj._attributes['name'] = name;
    if (radius != null) obj._attributes['radius'] = radius;
    if (strategy != null) obj._attributes['strategy'] = strategy;

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

  /// Will get a [PcoCollection] of [PcoGroupsLocation] objects (expecting many)
  /// using a path like this: `/groups/v2/events/$eventId/location`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsLocation>> getFromEvent(
    String eventId, {
    String? id,
    PcoGroupsLocationQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGroupsLocationQuery();
    if (getAll) query.getAll = true;

    var url = '/groups/v2/events/$eventId/location';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGroupsLocation] object
  /// using a path like this: `/groups/v2/events/$eventId/location/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGroupsLocation?> getSingleFromEvent(
    String eventId,
    String id, {
    PcoGroupsLocationQuery? query,
  }) async {
    query ??= PcoGroupsLocationQuery();

    var url = '/groups/v2/events/$eventId/location/$id';
    var retval = await PcoCollection.fromApiCall<PcoGroupsLocation>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGroupsLocation] objects (expecting many)
  /// using a path like this: `/groups/v2/events/$eventId/location`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGroupsLocation>> getAllFromEvent(
    String eventId, {
    String? id,
    PcoGroupsLocationQuery? query,
  }) async {
    query ??= PcoGroupsLocationQuery();
    query.getAll = true;

    var url = '/groups/v2/events/$eventId/location';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoGroupsLocation] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/location`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsLocation>> getFromGroup(
    String groupId, {
    String? id,
    PcoGroupsLocationQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGroupsLocationQuery();
    if (getAll) query.getAll = true;

    var url = '/groups/v2/groups/$groupId/location';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGroupsLocation] object
  /// using a path like this: `/groups/v2/groups/$groupId/location/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGroupsLocation?> getSingleFromGroup(
    String groupId,
    String id, {
    PcoGroupsLocationQuery? query,
  }) async {
    query ??= PcoGroupsLocationQuery();

    var url = '/groups/v2/groups/$groupId/location/$id';
    var retval = await PcoCollection.fromApiCall<PcoGroupsLocation>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGroupsLocation] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/location`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGroupsLocation>> getAllFromGroup(
    String groupId, {
    String? id,
    PcoGroupsLocationQuery? query,
  }) async {
    query ??= PcoGroupsLocationQuery();
    query.getAll = true;

    var url = '/groups/v2/groups/$groupId/location';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
