/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:48.291041
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO People MailchimpSyncStatus Object
/// 
/// - Application:        people
/// - Id:                 mailchimp_sync_status
/// - Type:               MailchimpSyncStatus
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status
/// 
/// Description:
/// The status of syncing a List with Mailchimp.
/// 
/// Example:
/// ```json
/// {
///   "type": "MailchimpSyncStatus",
///   "id": "1",
///   "attributes": {
///     "status": "string",
///     "error": "string",
///     "progress": 1,
///     "completed_at": "2000-01-01T12:00:00Z",
///     "segment_id": 1
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `mailchimpsyncstatus-list-mailchimp_sync_status`: https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status
/// 
/// All Actions:
/// NONE
///
class PcoPeopleMailchimpSyncStatu extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'MailchimpSyncStatus';
  static const String kTypeId = 'mailchimp_sync_status';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'mailchimpsyncstatus-list-mailchimp_sync_status';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status';

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
  static const kStatus = 'status';
  static const kError = 'error';
  static const kProgress = 'progress';
  static const kCompletedAt = 'completed_at';
  static const kSegmentId = 'segment_id';


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

  String get status => attributes[kStatus] ?? '';
  String get error => attributes[kError] ?? '';
  int get progress => attributes[kProgress] ?? 0;
  DateTime get completedAt => DateTime.parse(attributes[kCompletedAt] ?? '');
  int get segmentId => attributes[kSegmentId] ?? 0;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleMailchimpSyncStatu._() : super(kPcoApplication, kTypeString);
  PcoPeopleMailchimpSyncStatu.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleMailchimpSyncStatu] objects (expecting many)
  /// using a path like this: `/people/v2/lists/$listId/mailchimp_sync_status`
  static Future<PcoCollection<PcoPeopleMailchimpSyncStatu>> getMailchimpSyncStatusFromList(String listId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMailchimpSyncStatu.canInclude;
    var url = '/people/v2/lists/$listId/mailchimp_sync_status';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleMailchimpSyncStatu>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
