/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:20.944750
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesAvailableSignupOrder { none }

/// Possible Inbound Filters:
/// - `currentOrganization` -> `?filter=current_organization` : -- no description
enum PcoServicesAvailableSignupFilter { currentOrganization }

/// Creates a [PcoServicesAvailableSignupQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeSignupSheets`: include associated signup_sheets
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoServicesAvailableSignupQuery(includes: ['a', 'b'])`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesAvailableSignupQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesAvailableSignupOrder, String> _orderMap = {};
  static String orderString(PcoServicesAvailableSignupOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesAvailableSignupFilter, String> _filterMap = {
    PcoServicesAvailableSignupFilter.currentOrganization:
        'current_organization',
  };
  static String filterString(PcoServicesAvailableSignupFilter filter) =>
      _filterMap[filter]!;

  PcoServicesAvailableSignupQuery({
    /// include associated signup_sheets
    /// when true, adds `?include=signup_sheets` to url
    bool includeSignupSheets = false,
    PcoServicesAvailableSignupFilter? filterBy,

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
    if (filterBy != null) filter.add(filterString(filterBy));
    if (includeSignupSheets) include.add('signup_sheets');
  }
}

/// This class represents a PCO Services AvailableSignup Object
///
/// - Application:        services
/// - Id:                 available_signup
/// - Type:               AvailableSignup
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/available_signups
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesAvailableSignup.fromJson()` constructor.
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
/// Signups that are available.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `organizationName` (ro) -> PCO: `organization_name`
/// - `planningCenterUrl` (ro) -> PCO: `planning_center_url`
/// - `serviceTypeName` (ro) -> PCO: `service_type_name`
/// - `isSignupsAvailable` (ro) -> PCO: `signups_available`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `signupsheet-availablesignup-signup_sheets`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets
///
/// Inbound Edges:
/// - `availablesignup-person-available_signups`: https://api.planningcenteronline.com/services/v2/people/1/available_signups
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "AvailableSignup",
///   "id": "1",
///   "attributes": {
///     "organization_name": "string",
///     "planning_center_url": "string",
///     "service_type_name": "string",
///     "signups_available": true
///   },
///   "relationships": {
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     },
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesAvailableSignup extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'AvailableSignup';
  static const String kTypeId = 'available_signup';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/available_signups';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `signup_sheets`: include associated signup_sheets
  static List<String> get canInclude => ['signup_sheets'];

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
  static const kOrganizationName = 'organization_name';
  static const kPlanningCenterUrl = 'planning_center_url';
  static const kServiceTypeName = 'service_type_name';
  static const kSignupsAvailable = 'signups_available';

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
  String get organizationName => _getAttribute<String>(kOrganizationName, '');
  String get planningCenterUrl => _getAttribute<String>(kPlanningCenterUrl, '');
  String get serviceTypeName => _getAttribute<String>(kServiceTypeName, '');
  bool get isSignupsAvailable => _getAttribute<bool>(kSignupsAvailable, false);

  // typed getters for each relationship

  List<PcoServicesSignupSheet> get includedSignupSheets =>
      (relationships['signup_sheets'] as List?)
          ?.cast<PcoServicesSignupSheet>() ??
      [];

  // Class Constructors
  PcoServicesAvailableSignup.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesAvailableSignup.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesAvailableSignup] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesAvailableSignup(
      {String? id,
      String? organizationName,
      String? planningCenterUrl,
      String? serviceTypeName,
      bool? isSignupsAvailable,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesAvailableSignup.empty();
    obj._id = id;
    if (organizationName != null)
      obj._attributes['organization_name'] = organizationName;
    if (planningCenterUrl != null)
      obj._attributes['planning_center_url'] = planningCenterUrl;
    if (serviceTypeName != null)
      obj._attributes['service_type_name'] = serviceTypeName;
    if (isSignupsAvailable != null)
      obj._attributes['signups_available'] = isSignupsAvailable;

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

  /// Will get a [PcoCollection] of [PcoServicesAvailableSignup] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/available_signups`
  ///
  /// Available Query Filters:
  /// - `current_organization`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesAvailableSignup>> getFromPerson(
    String personId, {
    String? id,
    PcoServicesAvailableSignupQuery? query,
    bool getAll = false,
    bool includeSignupSheets = false,
  }) async {
    query ??= PcoServicesAvailableSignupQuery();
    if (getAll) query.getAll = true;

    if (includeSignupSheets) query.include.add('signup_sheets');
    var url = '/services/v2/people/$personId/available_signups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAvailableSignup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoServicesAvailableSignup] object
  /// using a path like this: `/services/v2/people/$personId/available_signups/[id]`
  ///
  /// Available Query Filters:
  /// - `current_organization`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoServicesAvailableSignup?> getSingleFromPerson(
    String personId,
    String id, {
    PcoServicesAvailableSignupQuery? query,
    bool includeSignupSheets = false,
  }) async {
    query ??= PcoServicesAvailableSignupQuery();

    if (includeSignupSheets) query.include.add('signup_sheets');
    var url = '/services/v2/people/$personId/available_signups/$id';
    var retval = await PcoCollection.fromApiCall<PcoServicesAvailableSignup>(
        url,
        query: query,
        apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoServicesAvailableSignup] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/available_signups`
  ///
  /// Available Query Filters:
  /// - `current_organization`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoServicesAvailableSignup>> getAllFromPerson(
    String personId, {
    String? id,
    PcoServicesAvailableSignupQuery? query,
    bool includeSignupSheets = false,
  }) async {
    query ??= PcoServicesAvailableSignupQuery();
    query.getAll = true;

    if (includeSignupSheets) query.include.add('signup_sheets');
    var url = '/services/v2/people/$personId/available_signups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAvailableSignup>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesSignupSheet] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets`
  Future<PcoCollection<PcoServicesSignupSheet>> getSignupSheets(
      {PcoServicesSignupSheetQuery? query}) async {
    query ??= PcoServicesSignupSheetQuery();
    var url = '$apiEndpoint/signup_sheets';
    return PcoCollection.fromApiCall<PcoServicesSignupSheet>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
