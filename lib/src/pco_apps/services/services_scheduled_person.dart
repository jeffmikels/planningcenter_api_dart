/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:29:04.338053
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesScheduledPersonOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesScheduledPersonFilter { none }

/// Creates a [PcoServicesScheduledPersonQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesScheduledPersonQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesScheduledPersonOrder, String> _orderMap = {
    
  };
  static String orderString(PcoServicesScheduledPersonOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesScheduledPersonFilter, String> _filterMap = {
    
  };
  static String filterString(PcoServicesScheduledPersonFilter filter) => _filterMap[filter]!;

  PcoServicesScheduledPersonQuery({



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

/// This class represents a PCO Services ScheduledPerson Object
/// 
/// - Application:        services
/// - Id:                 scheduled_person
/// - Type:               ScheduledPerson
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesScheduledPerson.fromJson()` constructor.
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
/// A person already scheduled to a SignupSheet
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `fullName` (ro) -> PCO: `full_name`
/// - `status` (ro) -> PCO: `status`
/// - `thumbnail` (ro) -> PCO: `thumbnail`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// NONE
/// 
/// Inbound Edges:
/// - `scheduledperson-signupsheet-scheduled_people`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ScheduledPerson",
///   "id": "1",
///   "attributes": {
///     "full_name": "string",
///     "status": "string",
///     "thumbnail": "string"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "signup_sheet": {
///       "data": {
///         "type": "SignupSheet",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesScheduledPerson extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ScheduledPerson';
  static const String kTypeId = 'scheduled_person';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people';
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
  static const kFullName = 'full_name';
  static const kStatus = 'status';
  static const kThumbnail = 'thumbnail';


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
  String get fullName => _attributes[kFullName] ?? '';
  String get status => _attributes[kStatus] ?? '';
  String get thumbnail => _attributes[kThumbnail] ?? '';

  // Class Constructors
  PcoServicesScheduledPerson.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesScheduledPerson.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesScheduledPerson] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesScheduledPerson({String? id, String? fullName, String? status, String? thumbnail, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoServicesScheduledPerson.empty();
    obj._id = id;
    if (fullName != null) obj._attributes['full_name'] = fullName;
    if (status != null) obj._attributes['status'] = status;
    if (thumbnail != null) obj._attributes['thumbnail'] = thumbnail;

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



  /// Will get a collection of [PcoServicesScheduledPerson] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/available_signups/$availableSignupId/signup_sheets/$signupSheetId/scheduled_people`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesScheduledPerson>> getFromPersonAndAvailableSignupAndSignupSheet(String personId,String availableSignupId,String signupSheetId, {String? id, PcoServicesScheduledPersonQuery? query, }) async {
    query ??= PcoServicesScheduledPersonQuery();
    
    
    var url = '/services/v2/people/$personId/available_signups/$availableSignupId/signup_sheets/$signupSheetId/scheduled_people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesScheduledPerson>(url, query: query, apiVersion:kApiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
