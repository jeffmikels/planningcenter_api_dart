/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:29:04.407444
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Ordering is not allowed on this object.
enum PcoCheckInsCheckInGroupOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsCheckInGroupFilter { none }

/// Creates a [PcoCheckInsCheckInGroupQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
/// 
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeCheckIns`: include associated check_ins 
/// - `includeEventPeriod`: include associated event_period 
/// - `includePrintStation`: include associated print_station 
/// - `includeAll`: include all related objects
/// 
/// Alternatively, you may pass a list of strings to the `include` argument.
/// 
/// e.g. `PcoCheckInsCheckInGroupQuery(includes: ['a', 'b'])`
/// 
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsCheckInGroupQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsCheckInGroupOrder, String> _orderMap = {
    
  };
  static String orderString(PcoCheckInsCheckInGroupOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsCheckInGroupFilter, String> _filterMap = {
    
  };
  static String filterString(PcoCheckInsCheckInGroupFilter filter) => _filterMap[filter]!;

  PcoCheckInsCheckInGroupQuery({
    /// include associated check_ins
    /// when true, adds `?include=check_ins` to url
    bool includeCheckIns = false,
    
    /// include associated event_period
    /// when true, adds `?include=event_period` to url
    bool includeEventPeriod = false,
    
    /// include associated print_station
    /// when true, adds `?include=print_station` to url
    bool includePrintStation = false,
    
    /// when true, adds `?include=check_ins,event_period,print_station` to url parameters
    bool includeAll = false,




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
    if (includeAll || includeCheckIns) include.add('check_ins');
    if (includeAll || includeEventPeriod) include.add('event_period');
    if (includeAll || includePrintStation) include.add('print_station');}
}

/// This class represents a PCO CheckIns CheckInGroup Object
/// 
/// - Application:        check-ins
/// - Id:                 check_in_group
/// - Type:               CheckInGroup
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsCheckInGroup.fromJson()` constructor.
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
/// When one or more people check in, they're grouped in a `CheckInGroup`.
/// These check-ins all have the same "checked-in by" person. `CheckInGroup` is also
/// the basis for label printing.
/// 
/// `print_status` may be:
/// 
/// - `ready`: This group isn't printed or canceled yet
/// - `printed`: This group was successfully printed at a station
/// - `canceled`: This group was canceled at a station
/// - `skipped`: This group had no labels to print, so it was never printed.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `nameLabelsCount` (ro) -> PCO: `name_labels_count`
/// - `securityLabelsCount` (ro) -> PCO: `security_labels_count`
/// - `checkInsCount` (ro) -> PCO: `check_ins_count`
/// - `printStatus` (ro) -> PCO: `print_status`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `checkin-checkingroup-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/check_ins
/// - `eventperiod-checkingroup-event_period`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/event_period
/// - `station-checkingroup-print_station`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/print_station
/// 
/// Inbound Edges:
/// - `checkingroup-checkin-check_in_group`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group
/// - `checkingroup-station-check_in_groups`: https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "CheckInGroup",
///   "id": "1",
///   "attributes": {
///     "name_labels_count": 1,
///     "security_labels_count": 1,
///     "check_ins_count": 1,
///     "print_status": "value",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCheckInsCheckInGroup extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'CheckInGroup';
  static const String kTypeId = 'check_in_group';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `check_ins`: include associated check_ins 
  /// - `event_period`: include associated event_period 
  /// - `print_station`: include associated print_station 
  static List<String> get canInclude => ['check_ins','event_period','print_station'];

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
  static const kNameLabelsCount = 'name_labels_count';
  static const kSecurityLabelsCount = 'security_labels_count';
  static const kCheckInsCount = 'check_ins_count';
  static const kPrintStatus = 'print_status';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';


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
  int get nameLabelsCount => _attributes[kNameLabelsCount] ?? 0;
  int get securityLabelsCount => _attributes[kSecurityLabelsCount] ?? 0;
  int get checkInsCount => _attributes[kCheckInsCount] ?? 0;
  String get printStatus => _attributes[kPrintStatus] ?? '';
  
  // typed getters for each relationship
  
  List<PcoCheckInsCheckIn> get includedCheckIns => (relationships['check_ins'] as List?)?.cast<PcoCheckInsCheckIn>() ?? [];
  PcoCheckInsEventPeriod? get includedEventPeriod => _firstOrNull<PcoCheckInsEventPeriod>(relationships['event_period']);
  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedPrintStation<T extends PcoResource>() => (relationships['print_station'] as List?)?.cast<T>() ?? [];
  

  // Class Constructors
  PcoCheckInsCheckInGroup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsCheckInGroup.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsCheckInGroup] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCheckInsCheckInGroup({String? id, int? nameLabelsCount, int? securityLabelsCount, int? checkInsCount, String? printStatus, DateTime? createdAt, DateTime? updatedAt, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoCheckInsCheckInGroup.empty();
    obj._id = id;
    if (nameLabelsCount != null) obj._attributes['name_labels_count'] = nameLabelsCount;
    if (securityLabelsCount != null) obj._attributes['security_labels_count'] = securityLabelsCount;
    if (checkInsCount != null) obj._attributes['check_ins_count'] = checkInsCount;
    if (printStatus != null) obj._attributes['print_status'] = printStatus;
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt.toIso8601String();

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



  /// Will get a collection of [PcoCheckInsCheckInGroup] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/check_in_group`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsCheckInGroup>> getFromCheckIn(String checkInId, {String? id, PcoCheckInsCheckInGroupQuery? query, bool includeAll = false, bool includeCheckIns = false, bool includeEventPeriod = false, bool includePrintStation = false,}) async {
    query ??= PcoCheckInsCheckInGroupQuery();
    if (includeAll) query.include.addAll(PcoCheckInsCheckInGroup.canInclude);
    if (includeCheckIns) query.include.add('check_ins');
    if (includeEventPeriod) query.include.add('event_period');
    if (includePrintStation) query.include.add('print_station');
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckInGroup>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCheckInsCheckInGroup] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations/$stationId/check_in_groups`
  /// 
  /// Available Query Filters:
  /// - `canceled`
  /// - `printed`
  /// - `ready`
  /// - `skipped`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsCheckInGroup>> getFromStation(String stationId, {String? id, PcoCheckInsCheckInGroupQuery? query, bool includeAll = false, bool includeCheckIns = false, bool includeEventPeriod = false, bool includePrintStation = false,}) async {
    query ??= PcoCheckInsCheckInGroupQuery();
    if (includeAll) query.include.addAll(PcoCheckInsCheckInGroup.canInclude);
    if (includeCheckIns) query.include.add('check_ins');
    if (includeEventPeriod) query.include.add('event_period');
    if (includePrintStation) query.include.add('print_station');
    var url = '/check-ins/v2/stations/$stationId/check_in_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckInGroup>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/check_ins`
  Future<PcoCollection<PcoCheckInsCheckIn>> getCheckIns({PcoCheckInsCheckInQuery? query}) async {
    query ??= PcoCheckInsCheckInQuery();
    var url = '$apiEndpoint/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventPeriod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/event_period`
  Future<PcoCollection<PcoCheckInsEventPeriod>> getEventPeriod({PcoCheckInsEventPeriodQuery? query}) async {
    query ??= PcoCheckInsEventPeriodQuery();
    var url = '$apiEndpoint/event_period';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/print_station`
  Future<PcoCollection<PcoCheckInsStation>> getPrintStation({PcoCheckInsStationQuery? query}) async {
    query ??= PcoCheckInsStationQuery();
    var url = '$apiEndpoint/print_station';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
