/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:15.146164
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Groups Location Object
///
/// - Application:        groups
/// - Id:                 location
/// - Type:               Location
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/events/1/location
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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// NONE
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// NONE
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
      'https://api.planningcenteronline.com/groups/v2/events/1/location';
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
  double get latitude => _attributes[kLatitude] ?? 0;
  double get longitude => _attributes[kLongitude] ?? 0;
  String get name => _attributes[kName] ?? '';
  String get radius => _attributes[kRadius] ?? '';
  String get strategy => _attributes[kStrategy] ?? '';

  // Class Constructors
  PcoGroupsLocation.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoGroupsLocation] objects (expecting many)
  /// using a path like this: `/groups/v2/events/$eventId/location`
  static Future<PcoCollection<PcoGroupsLocation>> getFromEvent(
    String eventId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/groups/v2/events/$eventId/location';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGroupsLocation] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/location`
  static Future<PcoCollection<PcoGroupsLocation>> getFromGroup(
    String groupId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/groups/v2/groups/$groupId/location';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url,
        query: query, apiVersion: kApiVersion);
  }
}
