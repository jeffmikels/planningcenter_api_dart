/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:47.957567
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services TextSetting Object
/// 
/// - Application:        services
/// - Id:                 text_setting
/// - Type:               TextSetting
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/text_settings
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "TextSetting",
///   "id": "1",
///   "attributes": {
///     "scheduling_requests_enabled": true,
///     "general_emails_enabled": true,
///     "scheduling_replies_enabled": true,
///     "reminders_enabled": true,
///     "carrier": "string",
///     "display_number": "string",
///     "normalized_number": "string"
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
/// - `textsetting-person-text_settings`: https://api.planningcenteronline.com/services/v2/people/1/text_settings
/// 
/// All Actions:
/// NONE
///
class PcoServicesTextSetting extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'TextSetting';
  static const String kTypeId = 'text_setting';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'textsetting-person-text_settings';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/text_settings';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/text_settings';

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
  static const kSchedulingRequestsEnabled = 'scheduling_requests_enabled';
  static const kGeneralEmailsEnabled = 'general_emails_enabled';
  static const kSchedulingRepliesEnabled = 'scheduling_replies_enabled';
  static const kRemindersEnabled = 'reminders_enabled';
  static const kCarrier = 'carrier';
  static const kDisplayNumber = 'display_number';
  static const kNormalizedNumber = 'normalized_number';


  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => ['general_emails_enabled','reminders_enabled','scheduling_replies_enabled','scheduling_requests_enabled'];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => false;

  // getters for object attributes

  bool get isSchedulingRequestsEnabled => attributes[kSchedulingRequestsEnabled] == true;
  bool get isGeneralEmailsEnabled => attributes[kGeneralEmailsEnabled] == true;
  bool get isSchedulingRepliesEnabled => attributes[kSchedulingRepliesEnabled] == true;
  bool get isRemindersEnabled => attributes[kRemindersEnabled] == true;
  String get carrier => attributes[kCarrier] ?? '';
  String get displayNumber => attributes[kDisplayNumber] ?? '';
  String get normalizedNumber => attributes[kNormalizedNumber] ?? '';
  

  // setters for object attributes

  set isSchedulingRequestsEnabled(bool b) => attributes[kSchedulingRequestsEnabled] = b;
  set isGeneralEmailsEnabled(bool b) => attributes[kGeneralEmailsEnabled] = b;
  set isSchedulingRepliesEnabled(bool b) => attributes[kSchedulingRepliesEnabled] = b;
  set isRemindersEnabled(bool b) => attributes[kRemindersEnabled] = b;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesTextSetting._() : super(kPcoApplication, kTypeString);
  PcoServicesTextSetting.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesTextSetting] objects (expecting many)
  /// using a path like this: `/services/v2/people/$peopleId/text_settings`
  static Future<PcoCollection<PcoServicesTextSetting>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTextSetting.canInclude;
    var url = '/services/v2/people/$peopleId/text_settings';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTextSetting>(url, query: query, apiVersion:kApiVersion);
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
