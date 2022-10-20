/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:11.970905
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesServiceTypePathOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesServiceTypePathFilter { none }

/// Creates a [PcoServicesServiceTypePathQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesServiceTypePathQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesServiceTypePathOrder, String> _orderMap = {
    
  };
  static String orderString(PcoServicesServiceTypePathOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesServiceTypePathFilter, String> _filterMap = {
    
  };
  static String filterString(PcoServicesServiceTypePathFilter filter) => _filterMap[filter]!;

  PcoServicesServiceTypePathQuery({



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
  }) : super() ;
}

/// This class represents a PCO Services ServiceTypePath Object
/// 
/// - Application:        services
/// - Id:                 service_type_path
/// - Type:               ServiceTypePath
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesServiceTypePath.fromJson()` constructor.
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
/// The Folder path of a Service Type
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `path` (ro) -> PCO: `path`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// NONE
/// 
/// Inbound Edges:
/// NONE
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ServiceTypePath",
///   "id": "1",
///   "attributes": {
///     "path": []
///   },
///   "relationships": {}
/// }
/// ```
class PcoServicesServiceTypePath extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ServiceTypePath';
  static const String kTypeId = 'service_type_path';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2';
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
  static const kPath = 'path';


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
  List get path => _attributes[kPath] ?? [];

  // Class Constructors
  PcoServicesServiceTypePath.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesServiceTypePath.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesServiceTypePath] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesServiceTypePath({String? id, List? path, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoServicesServiceTypePath.empty();
    obj._id = id;
    if (path != null) obj._attributes['path'] = path;

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




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
