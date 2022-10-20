/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:29:04.341456
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesSignupSheetMetadatumOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesSignupSheetMetadatumFilter { none }

/// Creates a [PcoServicesSignupSheetMetadatumQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesSignupSheetMetadatumQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesSignupSheetMetadatumOrder, String> _orderMap = {
    
  };
  static String orderString(PcoServicesSignupSheetMetadatumOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesSignupSheetMetadatumFilter, String> _filterMap = {
    
  };
  static String filterString(PcoServicesSignupSheetMetadatumFilter filter) => _filterMap[filter]!;

  PcoServicesSignupSheetMetadatumQuery({



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

/// This class represents a PCO Services SignupSheetMetadata Object
/// 
/// - Application:        services
/// - Id:                 signup_sheet_metadata
/// - Type:               SignupSheetMetadata
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesSignupSheetMetadatum.fromJson()` constructor.
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
/// A SignupSheetMetadata Resource
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `conflicts` (ro) -> PCO: `conflicts`
/// - `timeType` (ro) -> PCO: `time_type`
/// - `timeName` (ro) -> PCO: `time_name`
/// - `startsAt` (ro) -> PCO: `starts_at`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// NONE
/// 
/// Inbound Edges:
/// - `signupsheetmetadata-signupsheet-signup_sheet_metadata`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "SignupSheetMetadata",
///   "id": "1",
///   "attributes": {
///     "conflicts": {},
///     "time_type": "string",
///     "time_name": "string",
///     "starts_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "plan_time": {
///       "data": {
///         "type": "PlanTime",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesSignupSheetMetadatum extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SignupSheetMetadata';
  static const String kTypeId = 'signup_sheet_metadata';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata';
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
  static const kConflicts = 'conflicts';
  static const kTimeType = 'time_type';
  static const kTimeName = 'time_name';
  static const kStartsAt = 'starts_at';


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
  String get conflicts => _attributes[kConflicts] ?? '';
  String get timeType => _attributes[kTimeType] ?? '';
  String get timeName => _attributes[kTimeName] ?? '';
  DateTime get startsAt => DateTime.parse(_attributes[kStartsAt] ?? '');

  // Class Constructors
  PcoServicesSignupSheetMetadatum.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesSignupSheetMetadatum.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesSignupSheetMetadatum] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesSignupSheetMetadatum({String? id, String? conflicts, String? timeType, String? timeName, DateTime? startsAt, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoServicesSignupSheetMetadatum.empty();
    obj._id = id;
    if (conflicts != null) obj._attributes['conflicts'] = conflicts;
    if (timeType != null) obj._attributes['time_type'] = timeType;
    if (timeName != null) obj._attributes['time_name'] = timeName;
    if (startsAt != null) obj._attributes['starts_at'] = startsAt.toIso8601String();

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



  /// Will get a collection of [PcoServicesSignupSheetMetadatum] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/available_signups/$availableSignupId/signup_sheets/$signupSheetId/signup_sheet_metadata`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesSignupSheetMetadatum>> getFromPersonAndAvailableSignupAndSignupSheet(String personId,String availableSignupId,String signupSheetId, {String? id, PcoServicesSignupSheetMetadatumQuery? query, }) async {
    query ??= PcoServicesSignupSheetMetadatumQuery();
    
    
    var url = '/services/v2/people/$personId/available_signups/$availableSignupId/signup_sheets/$signupSheetId/signup_sheet_metadata';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSignupSheetMetadatum>(url, query: query, apiVersion:kApiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
