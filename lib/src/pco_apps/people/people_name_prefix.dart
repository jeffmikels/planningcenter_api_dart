/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:14.977102
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People NamePrefix Object
///
/// - Application:        people
/// - Id:                 name_prefix
/// - Type:               NamePrefix
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/name_prefixes
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/name_prefixes
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleNamePrefix()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleNamePrefix.fromJson()` constructor.
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
/// A name prefix is one of Mr., Mrs., etc.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `value` (rw) -> PCO: `value`
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
/// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `nameprefix-organization-name_prefixes`: https://api.planningcenteronline.com/people/v2/name_prefixes
/// - `nameprefix-person-name_prefix`: https://api.planningcenteronline.com/people/v2/people/1/name_prefix
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "NamePrefix",
///   "id": "1",
///   "attributes": {
///     "value": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeopleNamePrefix extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'NamePrefix';
  static const String kTypeId = 'name_prefix';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/name_prefixes';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/name_prefixes';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
  static List<String> get canQuery => ['value'];

  /// possible orderings with parameter ?order=
  /// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
  static List<String> get canOrderBy => ['value'];

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
  static const kValue = 'value';

  // getters and setters
  @override
  List<String> get createAllowed => ['value'];

  @override
  List<String> get updateAllowed => ['value'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get value => _attributes[kValue] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set value(String? x) =>
      (x == null) ? _attributes.remove(kValue) : _attributes[kValue] = x;

  // Class Constructors
  PcoPeopleNamePrefix.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleNamePrefix.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleNamePrefix] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/name_prefixes`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleNamePrefix({String? value}) {
    var obj = PcoPeopleNamePrefix.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/name_prefixes';
    if (value != null) obj.value = value;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeopleNamePrefix] objects (expecting many)
  /// using a path like this: `/people/v2/name_prefixes`
  static Future<PcoCollection<PcoPeopleNamePrefix>> get({
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/people/v2/name_prefixes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleNamePrefix] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/name_prefix`
  static Future<PcoCollection<PcoPeopleNamePrefix>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/people/v2/people/$personId/name_prefix';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url,
        query: query, apiVersion: kApiVersion);
  }
}
