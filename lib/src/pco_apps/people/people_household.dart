/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T13:08:21.998712
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO People Household Object
/// 
/// - Application:        people
/// - Id:                 household
/// - Type:               Household
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/households
/// 
/// Description:
/// A household links people together and can have a primary contact. To add a person to an existing household, use the HouseholdMemberships endpoint.
/// 
/// Attributes:
/// - `id` (ro) -> PCO: `id`
/// - `name` (rw) -> PCO: `name`
/// - `memberCount` (rw) -> PCO: `member_count`
/// - `primaryContactName` (ro) -> PCO: `primary_contact_name`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `avatar` (rw) -> PCO: `avatar`
/// - `primaryContactId` (rw) -> PCO: `primary_contact_id`
/// 
/// Example:
/// ```json
/// {
///   "type": "Household",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "member_count": 1,
///     "primary_contact_name": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "avatar": "string",
///     "primary_contact_id": "primary_key"
///   },
///   "relationships": {
///     "primary_contact": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "people": {
///       "data": [
///         {
///           "type": "Person",
///           "id": "1"
///         }
///       ]
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - people: include associated people 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `member_count`: (URLParameter), query on a specific member_count, example: ?where[member_count]=1
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `primary_contact_name`: (URLParameter), query on a specific primary_contact_name, example: ?where[primary_contact_name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `member_count`: (URLParameter), prefix with a hyphen (-member_count) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `primary_contact_name`: (URLParameter), prefix with a hyphen (-primary_contact_name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `householdmembership-household-household_memberships`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships
/// - `person-household-people`: https://api.planningcenteronline.com/people/v2/households/1/people
/// 
/// All Inbound Edges:
/// - `household-householdmembership-household`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/household
/// - `household-organization-households`: https://api.planningcenteronline.com/people/v2/households
/// - `household-peopleimporthistory-household`: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/household
/// - `household-person-households`: https://api.planningcenteronline.com/people/v2/people/1/households
/// 
/// All Actions:
/// NONE
///
class PcoPeopleHousehold extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Household';
  static const String kTypeId = 'household';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'household-organization-households';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/households';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/households';

  /// possible includes with parameter ?include=a,b
  /// - `people`: include associated people 
  static List<String> get canInclude => ['people'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `member_count`: (URLParameter), query on a specific member_count, example: ?where[member_count]=1
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `primary_contact_name`: (URLParameter), query on a specific primary_contact_name, example: ?where[primary_contact_name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','member_count','name','primary_contact_name','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `member_count`: (URLParameter), prefix with a hyphen (-member_count) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `primary_contact_name`: (URLParameter), prefix with a hyphen (-primary_contact_name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','member_count','name','primary_contact_name','updated_at'];

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
  static const kName = 'name';
  static const kMemberCount = 'member_count';
  static const kPrimaryContactName = 'primary_contact_name';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kAvatar = 'avatar';
  static const kPrimaryContactId = 'primary_contact_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['name','member_count','avatar','primary_contact_id'];

  @override
  List<String> get updateAllowed => ['name','member_count','avatar','primary_contact_id'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get name => attributes[kName] ?? '';
  int get memberCount => attributes[kMemberCount] ?? 0;
  String get primaryContactName => attributes[kPrimaryContactName] ?? '';
  String get avatar => attributes[kAvatar] ?? '';
  String get primaryContactId => attributes[kPrimaryContactId] ?? '';
  

  // setters for object attributes

  set name(String s) => attributes[kName] = s;
  set memberCount(int n) => attributes[kMemberCount] = n;
  set avatar(String s) => attributes[kAvatar] = s;
  set primaryContactId(String s) => attributes[kPrimaryContactId] = s;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleHousehold._() : super(kPcoApplication, kTypeString);
  PcoPeopleHousehold.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoPeopleHousehold] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/households`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleHousehold() {
    return PcoPeopleHousehold._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/households';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `/people/v2/households`
  static Future<PcoCollection<PcoPeopleHousehold>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    var url = '/people/v2/households';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleHousehold] objects (expecting one)
  /// using a path like this: `/people/v2/households/$householdId/household_memberships/$householdMembershipId/household`
  static Future<PcoCollection<PcoPeopleHousehold>> getFromHouseholdAndHouseholdMembership(String householdId,String householdMembershipId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    var url = '/people/v2/households/$householdId/household_memberships/$householdMembershipId/household';
    
    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleHousehold] objects (expecting one)
  /// using a path like this: `/people/v2/people_imports/$peopleImportId/histories/$historyId/household`
  static Future<PcoCollection<PcoPeopleHousehold>> getFromPeopleImportAndHistory(String peopleImportId,String historyId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    var url = '/people/v2/people_imports/$peopleImportId/histories/$historyId/household';
    
    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/households`
  static Future<PcoCollection<PcoPeopleHousehold>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    var url = '/people/v2/people/$peopleId/households';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleHouseholdMembership] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households/1/household_memberships`
  Future<PcoCollection<PcoPeopleHouseholdMembership>> getHouseholdMemberships({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHouseholdMembership.canInclude;
    var url = '$apiEndpoint/household_memberships';
    return PcoCollection.fromApiCall<PcoPeopleHouseholdMembership>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households/1/people`
  /// 
  /// Available Query Filters:
  /// - `non_pending`
  /// - `without_deceased`
  Future<PcoCollection<PcoPeoplePerson>> getPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
