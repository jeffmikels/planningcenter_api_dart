/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:51.425074
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Ordering is not allowed on this object.
enum PcoPeoplePlatformNotificationOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoPeoplePlatformNotificationFilter { none }

/// Creates a [PcoPeoplePlatformNotificationQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeoplePlatformNotificationQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeoplePlatformNotificationOrder, String> _orderMap = {
    
  };
  static String orderString(PcoPeoplePlatformNotificationOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeoplePlatformNotificationFilter, String> _filterMap = {
    
  };
  static String filterString(PcoPeoplePlatformNotificationFilter filter) => _filterMap[filter]!;

  PcoPeoplePlatformNotificationQuery({



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

/// This class represents a PCO People PlatformNotification Object
/// 
/// - Application:        people
/// - Id:                 platform_notification
/// - Type:               PlatformNotification
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/platform_notifications
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeoplePlatformNotification.fromJson()` constructor.
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
/// A Platform Notification is a suite-wide notification that shows at the top of each application's screen until dismissed by the user.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `html` (ro) -> PCO: `html`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// NONE
/// 
/// Inbound Edges:
/// - `platformnotification-person-platform_notifications`: https://api.planningcenteronline.com/people/v2/people/1/platform_notifications
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PlatformNotification",
///   "id": "1",
///   "attributes": {
///     "html": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeoplePlatformNotification extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PlatformNotification';
  static const String kTypeId = 'platform_notification';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/platform_notifications';
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
  static const kHtml = 'html';


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
  String get html => _attributes[kHtml] ?? '';

  // Class Constructors
  PcoPeoplePlatformNotification.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeoplePlatformNotification.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeoplePlatformNotification] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeoplePlatformNotification({String? id, String? html, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoPeoplePlatformNotification.empty();
    obj._id = id;
    if (html != null) obj._attributes['html'] = html;

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



  /// Will get a collection of [PcoPeoplePlatformNotification] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/platform_notifications`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeoplePlatformNotification>> getFromPerson(String personId, {String? id, PcoPeoplePlatformNotificationQuery? query, }) async {
    query ??= PcoPeoplePlatformNotificationQuery();
    
    
    var url = '/people/v2/people/$personId/platform_notifications';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePlatformNotification>(url, query: query, apiVersion:kApiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
