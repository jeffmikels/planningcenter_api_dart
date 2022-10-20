/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:22.783420
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `total` -> `?order=total`
/// - `updatedAt` -> `?order=updated_at`
enum PcoCheckInsHeadcountOrder { createdAt, total, updatedAt }

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsHeadcountFilter { none }

/// Creates a [PcoCheckInsHeadcountQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
/// 
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeAttendanceType`: include associated attendance_type 
/// - `includeEventTime`: include associated event_time 
/// - `includeAll`: include all related objects
/// 
/// Alternatively, you may pass a list of strings to the `include` argument.
/// 
/// e.g. `PcoCheckInsHeadcountQuery(includes: ['a', 'b'])`
/// 
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// 
/// [PcoCheckInsHeadcount] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
/// 
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoCheckInsHeadcountOrder.createdAt` : will order by `created_at`
/// - `PcoCheckInsHeadcountOrder.total` : will order by `total`
/// - `PcoCheckInsHeadcountOrder.updatedAt` : will order by `updated_at`
/// 
/// To reverse the order, set `reverse` to true.
/// 
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// 
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsHeadcountQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsHeadcountOrder, String> _orderMap = {
    PcoCheckInsHeadcountOrder.createdAt: 'created_at',
    PcoCheckInsHeadcountOrder.total: 'total',
    PcoCheckInsHeadcountOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoCheckInsHeadcountOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsHeadcountFilter, String> _filterMap = {
    
  };
  static String filterString(PcoCheckInsHeadcountFilter filter) => _filterMap[filter]!;

  PcoCheckInsHeadcountQuery({
    /// include associated attendance_type
    /// when true, adds `?include=attendance_type` to url
    bool includeAttendanceType = false,
    
    /// include associated event_time
    /// when true, adds `?include=event_time` to url
    bool includeEventTime = false,
    
    /// when true, adds `?include=attendance_type,event_time` to url parameters
    bool includeAll = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,
    
    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    

    PcoCheckInsHeadcountOrder? orderBy,


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
    if (includeAll || includeAttendanceType) include.add('attendance_type');
    if (includeAll || includeEventTime) include.add('event_time');
    
    if (whereCreatedAt != null) where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereUpdatedAt != null) where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));
        
    
    if (orderBy != null) order = orderString(orderBy, reverse: reverse);}
}

/// This class represents a PCO CheckIns Headcount Object
/// 
/// - Application:        check-ins
/// - Id:                 headcount
/// - Type:               Headcount
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/headcounts
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsHeadcount.fromJson()` constructor.
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
/// A tally of attendees for a given event time and attendance type.
/// If one does not exist, the count may have been zero.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `total` (ro) -> PCO: `total`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `createdAt` (ro) -> PCO: `created_at`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `attendancetype-headcount-attendance_type`: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/attendance_type
/// - `eventtime-headcount-event_time`: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/event_time
/// 
/// Inbound Edges:
/// - `headcount-attendancetype-headcounts`: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/headcounts
/// - `headcount-eventtime-headcounts`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/headcounts
/// - `headcount-organization-headcounts`: https://api.planningcenteronline.com/check-ins/v2/headcounts
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Headcount",
///   "id": "1",
///   "attributes": {
///     "total": 1,
///     "updated_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "event_time": {
///       "data": {
///         "type": "EventTime",
///         "id": "1"
///       }
///     },
///     "attendance_type": {
///       "data": {
///         "type": "AttendanceType",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCheckInsHeadcount extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Headcount';
  static const String kTypeId = 'headcount';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/headcounts';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `attendance_type`: include associated attendance_type 
  /// - `event_time`: include associated event_time 
  static List<String> get canInclude => ['attendance_type','event_time'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `total`: (URLParameter), prefix with a hyphen (-total) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','total','updated_at'];

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
  static const kTotal = 'total';
  static const kUpdatedAt = 'updated_at';
  static const kCreatedAt = 'created_at';


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
  int get total => _attributes[kTotal] ?? 0;
  
  // typed getters for each relationship
  
  PcoCheckInsAttendanceType? get includedAttendanceType => _firstOrNull<PcoCheckInsAttendanceType>(relationships['attendance_type']);
  PcoCheckInsEventTime? get includedEventTime => _firstOrNull<PcoCheckInsEventTime>(relationships['event_time']);

  // Class Constructors
  PcoCheckInsHeadcount.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsHeadcount.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsHeadcount] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCheckInsHeadcount({String? id, int? total, DateTime? updatedAt, DateTime? createdAt, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoCheckInsHeadcount.empty();
    obj._id = id;
    if (total != null) obj._attributes['total'] = total;
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();

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



  /// Will get a collection of [PcoCheckInsHeadcount] objects (expecting many)
  /// using a path like this: `/check-ins/v2/headcounts`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsHeadcount>> get( {String? id, PcoCheckInsHeadcountQuery? query, bool includeAll = false, bool includeAttendanceType = false, bool includeEventTime = false,}) async {
    query ??= PcoCheckInsHeadcountQuery();
    if (includeAll) query.include.addAll(PcoCheckInsHeadcount.canInclude);
    if (includeAttendanceType) query.include.add('attendance_type');
    if (includeEventTime) query.include.add('event_time');
    var url = '/check-ins/v2/headcounts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsHeadcount>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCheckInsHeadcount] objects (expecting many)
  /// using a path like this: `/check-ins/v2/attendance_types/$attendanceTypeId/headcounts`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsHeadcount>> getFromAttendanceType(String attendanceTypeId, {String? id, PcoCheckInsHeadcountQuery? query, bool includeAll = false, bool includeAttendanceType = false, bool includeEventTime = false,}) async {
    query ??= PcoCheckInsHeadcountQuery();
    if (includeAll) query.include.addAll(PcoCheckInsHeadcount.canInclude);
    if (includeAttendanceType) query.include.add('attendance_type');
    if (includeEventTime) query.include.add('event_time');
    var url = '/check-ins/v2/attendance_types/$attendanceTypeId/headcounts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsHeadcount>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCheckInsHeadcount] objects (expecting many)
  /// using a path like this: `/check-ins/v2/event_times/$eventTimeId/headcounts`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsHeadcount>> getFromEventTime(String eventTimeId, {String? id, PcoCheckInsHeadcountQuery? query, bool includeAll = false, bool includeAttendanceType = false, bool includeEventTime = false,}) async {
    query ??= PcoCheckInsHeadcountQuery();
    if (includeAll) query.include.addAll(PcoCheckInsHeadcount.canInclude);
    if (includeAttendanceType) query.include.add('attendance_type');
    if (includeEventTime) query.include.add('event_time');
    var url = '/check-ins/v2/event_times/$eventTimeId/headcounts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsHeadcount>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsAttendanceType] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/headcounts/1/attendance_type`
  Future<PcoCollection<PcoCheckInsAttendanceType>> getAttendanceType({PcoCheckInsAttendanceTypeQuery? query}) async {
    query ??= PcoCheckInsAttendanceTypeQuery();
    var url = '$apiEndpoint/attendance_type';
    return PcoCollection.fromApiCall<PcoCheckInsAttendanceType>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventTime] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/headcounts/1/event_time`
  Future<PcoCollection<PcoCheckInsEventTime>> getEventTime({PcoCheckInsEventTimeQuery? query}) async {
    query ??= PcoCheckInsEventTimeQuery();
    var url = '$apiEndpoint/event_time';
    return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
