/// This file was generated on 2022-03-04T20:00:53.704760


import '../../pco.dart';

/// This class represents a PCO People HouseholdMembership Object
/// 
/// - Application:        people
/// - Id:                 household_membership
/// - Type:               HouseholdMembership
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/households/1/household_memberships
/// 
/// Description:
/// A household membership is the linking record between a household and a person.
/// 
/// Example:
/// ```json
/// {
///   "type": "HouseholdMembership",
///   "id": "1",
///   "attributes": {
///     "person_name": "string",
///     "pending": true
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - household: include associated household 
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `pending`: (URLParameter), query on a specific pending, example: ?where[pending]=true
/// - `person_name`: (URLParameter), query on a specific person_name, example: ?where[person_name]=string
/// 
/// Possible orderings with parameter ?order=
/// - `pending`: (URLParameter), prefix with a hyphen (-pending) to reverse the order
/// - `person_name`: (URLParameter), prefix with a hyphen (-person_name) to reverse the order
///
/// All Outbound Edges:
/// - `household-householdmembership-household`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/household
/// - `person-householdmembership-person`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/person
/// 
/// All Inbound Edges:
/// - `householdmembership-household-household_memberships`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships
/// - `householdmembership-person-household_memberships`: https://api.planningcenteronline.com/people/v2/people/1/household_memberships
/// 
/// All Actions:
/// NONE
///
class PcoPeopleHouseholdMembership extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'HouseholdMembership';
  static const String kTypeId = 'household_membership';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'householdmembership-person-household_memberships';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/household_memberships';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/households/1/household_memberships';

  /// possible includes with parameter ?include=a,b
  /// - `household`: include associated household 
  /// - `person`: include associated person 
  static List<String> get canInclude => ['household','person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `pending`: (URLParameter), query on a specific pending, example: ?where[pending]=true
  /// - `person_name`: (URLParameter), query on a specific person_name, example: ?where[person_name]=string
  static List<String> get canQuery => ['pending','person_name'];

  /// possible orderings with parameter ?order=
  /// - `pending`: (URLParameter), prefix with a hyphen (-pending) to reverse the order
  /// - `person_name`: (URLParameter), prefix with a hyphen (-person_name) to reverse the order
  static List<String> get canOrderBy => ['pending','person_name'];

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
  static const kPersonName = 'person_name';
  static const kPending = 'pending';
  static const kPersonId = 'person_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['person_id','pending'];

  @override
  List<String> get updateAllowed => ['person_id','pending'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get personName => attributes[kPersonName] ?? '';
  bool get isPending => attributes[kPending] == true;
  

  // setters for object attributes

  
  /// False when a person's memership in a household is unverified.
  set isPending(bool b) => attributes[kPending] = b;
  

  // additional setters and getters for assignable values

  String get personId => attributes[kPersonId] ?? '';
  set personId(String s) => attributes[kPersonId] = s;
  



  // Class Constructors
  PcoPeopleHouseholdMembership() : super(kPcoApplication, kTypeString);
  PcoPeopleHouseholdMembership.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoPeopleHouseholdMembership] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/households/$householdId/household_memberships`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleHouseholdMembership.create(String householdId) {
    return PcoPeopleHouseholdMembership()
      .._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/households/$householdId/household_memberships';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleHouseholdMembership] objects (expecting many)
  /// using a path like this: `/people/v2/households/$householdId/household_memberships`
  static Future<PcoCollection<PcoPeopleHouseholdMembership>> getFromHousehold(String householdId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHouseholdMembership.canInclude;
    var url = '/people/v2/households/$householdId/household_memberships';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleHouseholdMembership>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleHouseholdMembership] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/household_memberships`
  static Future<PcoCollection<PcoPeopleHouseholdMembership>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHouseholdMembership.canInclude;
    var url = '/people/v2/people/$peopleId/household_memberships';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleHouseholdMembership>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/household`
  Future<PcoCollection<PcoPeopleHousehold>> getHousehold({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    var url = '$apiEndpoint/household';
    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
