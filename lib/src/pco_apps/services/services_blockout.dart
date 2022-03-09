/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:47.889565
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services Blockout Object
/// 
/// - Application:        services
/// - Id:                 blockout
/// - Type:               Blockout
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/blockouts
/// 
/// Description:
/// An object representing a blockout date, and an optional recurrence pattern
/// 
/// Example:
/// ```json
/// {
///   "type": "Blockout",
///   "id": "1",
///   "attributes": {
///     "description": "string",
///     "group_identifier": "string",
///     "organization_name": "string",
///     "reason": "string",
///     "repeat_frequency": "string",
///     "repeat_interval": "string",
///     "repeat_period": "string",
///     "settings": "string",
///     "time_zone": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "repeat_until": "2000-01-01",
///     "starts_at": "2000-01-01T12:00:00Z",
///     "ends_at": "2000-01-01T12:00:00Z",
///     "share": true
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `group_identifier`: (URLParameter), query on a specific group_identifier, example: ?where[group_identifier]=string
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `blockoutdate-blockout-blockout_dates`: https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_dates
/// - `blockoutexception-blockout-blockout_exceptions`: https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions
/// 
/// All Inbound Edges:
/// - `blockout-person-blockouts`: https://api.planningcenteronline.com/services/v2/people/1/blockouts
/// 
/// All Actions:
/// NONE
///
class PcoServicesBlockout extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Blockout';
  static const String kTypeId = 'blockout';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'blockout-person-blockouts';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/blockouts';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/blockouts';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `group_identifier`: (URLParameter), query on a specific group_identifier, example: ?where[group_identifier]=string
  static List<String> get canQuery => ['group_identifier'];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kDescription = 'description';
  static const kGroupIdentifier = 'group_identifier';
  static const kOrganizationName = 'organization_name';
  static const kReason = 'reason';
  static const kRepeatFrequency = 'repeat_frequency';
  static const kRepeatInterval = 'repeat_interval';
  static const kRepeatPeriod = 'repeat_period';
  static const kSettings = 'settings';
  static const kTimeZone = 'time_zone';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kRepeatUntil = 'repeat_until';
  static const kStartsAt = 'starts_at';
  static const kEndsAt = 'ends_at';
  static const kShare = 'share';


  // getters and setters
  @override
  List<String> get createAllowed => ['reason','repeat_frequency','repeat_interval','repeat_period','share','repeat_until','starts_at','ends_at'];

  @override
  List<String> get updateAllowed => ['reason','repeat_frequency','repeat_interval','repeat_period','share','repeat_until','starts_at','ends_at'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get description => attributes[kDescription] ?? '';
  String get groupIdentifier => attributes[kGroupIdentifier] ?? '';
  String get organizationName => attributes[kOrganizationName] ?? '';
  String get reason => attributes[kReason] ?? '';
  String get repeatFrequency => attributes[kRepeatFrequency] ?? '';
  String get repeatInterval => attributes[kRepeatInterval] ?? '';
  String get repeatPeriod => attributes[kRepeatPeriod] ?? '';
  String get settings => attributes[kSettings] ?? '';
  String get timeZone => attributes[kTimeZone] ?? '';
  String get repeatUntil => attributes[kRepeatUntil] ?? '';
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');
  DateTime get endsAt => DateTime.parse(attributes[kEndsAt] ?? '');
  bool get isShare => attributes[kShare] == true;
  

  // setters for object attributes

  set reason(String s) => attributes[kReason] = s;
  
  /// Possible values:
  /// 
  /// - no_repeat
  /// 
  /// - every_1
  /// 
  /// - every_2
  /// 
  /// - every_3
  /// 
  /// - every_4
  /// 
  /// - every_5
  /// 
  /// - every_6
  /// 
  /// - every_7
  /// 
  /// - every_8
  set repeatFrequency(String s) => attributes[kRepeatFrequency] = s;
  
  /// Possible values:
  /// 
  /// - exact_day_of_month
  /// 
  /// - week_of_month_1
  /// 
  /// - week_of_month_2
  /// 
  /// - week_of_month_3
  /// 
  /// - week_of_month_4
  /// 
  /// - week_of_month_last
  set repeatInterval(String s) => attributes[kRepeatInterval] = s;
  
  /// Possible values:
  /// 
  /// - daily
  /// 
  /// - weekly
  /// 
  /// - monthly
  /// 
  /// - yearly
  set repeatPeriod(String s) => attributes[kRepeatPeriod] = s;
  set repeatUntil(String s) => attributes[kRepeatUntil] = s;
  set startsAt(DateTime d) => attributes[kStartsAt] = d.toIso8601String();
  set endsAt(DateTime d) => attributes[kEndsAt] = d.toIso8601String();
  set isShare(bool b) => attributes[kShare] = b;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesBlockout._() : super(kPcoApplication, kTypeString);
  PcoServicesBlockout.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoServicesBlockout] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/people/$peopleId/blockouts`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesBlockout(String peopleId) {
    return PcoServicesBlockout._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/people/$peopleId/blockouts';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesBlockout] objects (expecting many)
  /// using a path like this: `/services/v2/people/$peopleId/blockouts`
  /// 
  /// Available Query Filters:
  /// - `future`
  /// - `past`
  static Future<PcoCollection<PcoServicesBlockout>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesBlockout.canInclude;
    var url = '/services/v2/people/$peopleId/blockouts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesBlockout>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesBlockoutDate] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_dates`
  Future<PcoCollection<PcoServicesBlockoutDate>> getBlockoutDates({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesBlockoutDate.canInclude;
    var url = '$apiEndpoint/blockout_dates';
    return PcoCollection.fromApiCall<PcoServicesBlockoutDate>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesBlockoutException] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions`
  Future<PcoCollection<PcoServicesBlockoutException>> getBlockoutExceptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesBlockoutException.canInclude;
    var url = '$apiEndpoint/blockout_exceptions';
    return PcoCollection.fromApiCall<PcoServicesBlockoutException>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
