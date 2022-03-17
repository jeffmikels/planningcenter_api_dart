/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T13:08:21.602395
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services SignupSheet Object
/// 
/// - Application:        services
/// - Id:                 signup_sheet
/// - Type:               SignupSheet
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets
/// 
/// Description:
/// Available positions to sign up for
/// 
/// Attributes:
/// - `id` (ro) -> PCO: `id`
/// - `sortDate` (ro) -> PCO: `sort_date`
/// - `groupKey` (ro) -> PCO: `group_key`
/// - `teamName` (ro) -> PCO: `team_name`
/// - `displayTimes` (ro) -> PCO: `display_times`
/// - `positionName` (ro) -> PCO: `position_name`
/// - `title` (ro) -> PCO: `title`
/// - `sortIndex` (ro) -> PCO: `sort_index`
/// 
/// Example:
/// ```json
/// {
///   "type": "SignupSheet",
///   "id": "1",
///   "attributes": {
///     "sort_date": "2000-01-01T12:00:00Z",
///     "group_key": "string",
///     "team_name": "string",
///     "display_times": "string",
///     "position_name": "string",
///     "title": "string",
///     "sort_index": 1
///   },
///   "relationships": {
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "team_position": {
///       "data": {
///         "type": "TeamPosition",
///         "id": "1"
///       }
///     },
///     "team": {
///       "data": {
///         "type": "Team",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - scheduled_people: include associated scheduled_people 
/// - signup_sheet_metadata: include associated signup_sheet_metadata 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `scheduledperson-signupsheet-scheduled_people`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people
/// - `signupsheetmetadata-signupsheet-signup_sheet_metadata`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata
/// 
/// All Inbound Edges:
/// - `signupsheet-availablesignup-signup_sheets`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets
/// 
/// All Actions:
/// - `accept`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/accept
///
class PcoServicesSignupSheet extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SignupSheet';
  static const String kTypeId = 'signup_sheet';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'signupsheet-availablesignup-signup_sheets';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets';

  /// possible includes with parameter ?include=a,b
  /// - `scheduled_people`: include associated scheduled_people 
  /// - `signup_sheet_metadata`: include associated signup_sheet_metadata 
  static List<String> get canInclude => ['scheduled_people','signup_sheet_metadata'];

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
  static const kSortDate = 'sort_date';
  static const kGroupKey = 'group_key';
  static const kTeamName = 'team_name';
  static const kDisplayTimes = 'display_times';
  static const kPositionName = 'position_name';
  static const kTitle = 'title';
  static const kSortIndex = 'sort_index';


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

  DateTime get sortDate => DateTime.parse(attributes[kSortDate] ?? '');
  String get groupKey => attributes[kGroupKey] ?? '';
  String get teamName => attributes[kTeamName] ?? '';
  String get displayTimes => attributes[kDisplayTimes] ?? '';
  String get positionName => attributes[kPositionName] ?? '';
  String get title => attributes[kTitle] ?? '';
  int get sortIndex => attributes[kSortIndex] ?? 0;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesSignupSheet._() : super(kPcoApplication, kTypeString);
  PcoServicesSignupSheet.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesSignupSheet] objects (expecting many)
  /// using a path like this: `/services/v2/people/$peopleId/available_signups/$availableSignupId/signup_sheets`
  static Future<PcoCollection<PcoServicesSignupSheet>> getFromPeopleAndAvailableSignup(String peopleId,String availableSignupId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSignupSheet.canInclude;
    var url = '/services/v2/people/$peopleId/available_signups/$availableSignupId/signup_sheets';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSignupSheet>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesScheduledPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people`
  Future<PcoCollection<PcoServicesScheduledPerson>> getScheduledPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesScheduledPerson.canInclude;
    var url = '$apiEndpoint/scheduled_people';
    return PcoCollection.fromApiCall<PcoServicesScheduledPerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSignupSheetMetadata] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata`
  Future<PcoCollection<PcoServicesSignupSheetMetadata>> getSignupSheetMetadata({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSignupSheetMetadata.canInclude;
    var url = '$apiEndpoint/signup_sheet_metadata';
    return PcoCollection.fromApiCall<PcoServicesSignupSheetMetadata>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `accept`
  /// 
  /// Accept a signup sheet
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/accept`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> accept(Map<String, dynamic> data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/accept';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }


}
