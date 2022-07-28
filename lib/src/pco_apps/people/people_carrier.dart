/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.704815
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// This class represents a PCO People Carrier Object
/// 
/// - Application:        people
/// - Id:                 carrier
/// - Type:               Carrier
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/carriers
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleCarrier.fromJson()` constructor.
/// - Manually create an object using the `PcoPeopleCarrier.manual()` constructor.
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
/// - `value` (ro) -> PCO: `value`
/// - `name` (ro) -> PCO: `name`
/// - `isInternational` (ro) -> PCO: `international`
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
/// - `international`: (URLParameter), prefix with a hyphen (-international) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// NONE
/// 
/// Inbound Edges:
/// - `carrier-organization-carriers`: https://api.planningcenteronline.com/people/v2/carriers
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Carrier",
///   "id": "1",
///   "attributes": {
///     "value": "string",
///     "name": "string",
///     "international": true
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeopleCarrier extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Carrier';
  static const String kTypeId = 'carrier';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/carriers';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `international`: (URLParameter), prefix with a hyphen (-international) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['international','name'];

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
  static const kName = 'name';
  static const kInternational = 'international';


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
  String get value => _attributes[kValue] ?? '';
  String get name => _attributes[kName] ?? '';
  bool get isInternational => _attributes[kInternational] == true;

  // Class Constructors
  PcoPeopleCarrier.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleCarrier.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleCarrier] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoPeopleCarrier({String? id, String? value, String? name, bool? isInternational, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoPeopleCarrier.empty();
    obj._id = id;
    if (value != null) obj._attributes['value'] = value;
    if (name != null) obj._attributes['name'] = name;
    if (isInternational != null) obj._attributes['international'] = isInternational;
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



  /// Will get a collection of [PcoPeopleCarrier] objects (expecting many)
  /// using a path like this: `/people/v2/carriers`
  static Future<PcoCollection<PcoPeopleCarrier>> get( {String? id, PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '/people/v2/carriers';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleCarrier>(url, query: query, apiVersion:kApiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
