/// This file was generated on 2022-03-04T15:29:14.533233


import '../../pco.dart';

/// This class represents a PCO People SocialProfile Object
/// 
/// - Application:        people
/// - Id:                 social_profile
/// - Type:               SocialProfile
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/social_profiles
/// 
/// Description:
/// A social profile represents a members's Twitter, Facebook, or other social media account.
/// 
/// Example:
/// ```json
/// {
///   "type": "SocialProfile",
///   "id": "1",
///   "attributes": {
///     "site": "string",
///     "url": "string",
///     "verified": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `site`: (URLParameter), query on a specific site, example: ?where[site]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// - `url`: (URLParameter), query on a specific url, example: ?where[url]=string
/// - `verified`: (URLParameter), query on a specific verified, example: ?where[verified]=true
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `site`: (URLParameter), prefix with a hyphen (-site) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
/// - `url`: (URLParameter), prefix with a hyphen (-url) to reverse the order
/// - `verified`: (URLParameter), prefix with a hyphen (-verified) to reverse the order
///
/// All Outbound Edges:
/// - `person-socialprofile-person`: https://api.planningcenteronline.com/people/v2/social_profiles/1/person
/// 
/// All Inbound Edges:
/// - `socialprofile-organization-social_profiles`: https://api.planningcenteronline.com/people/v2/social_profiles
/// - `socialprofile-person-social_profiles`: https://api.planningcenteronline.com/people/v2/people/1/social_profiles
/// 
/// All Actions:
/// NONE
///
class PcoPeopleSocialProfile extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'SocialProfile';
  static const String kTypeId = 'social_profile';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'socialprofile-organization-social_profiles';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/social_profiles';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/social_profiles';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person 
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `site`: (URLParameter), query on a specific site, example: ?where[site]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  /// - `url`: (URLParameter), query on a specific url, example: ?where[url]=string
  /// - `verified`: (URLParameter), query on a specific verified, example: ?where[verified]=true
  static List<String> get canQuery => ['created_at','site','updated_at','url','verified'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `site`: (URLParameter), prefix with a hyphen (-site) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  /// - `url`: (URLParameter), prefix with a hyphen (-url) to reverse the order
  /// - `verified`: (URLParameter), prefix with a hyphen (-verified) to reverse the order
  static List<String> get canOrderBy => ['created_at','site','updated_at','url','verified'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kId = 'id';
  static const kSite = 'site';
  static const kUrl = 'url';
  static const kVerified = 'verified';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';


  // getters and setters
  @override
  List<String> get createAllowed => ['site','url','verified'];

  @override
  List<String> get updateAllowed => ['site','url','verified'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get site => attributes[kSite] ?? '';
  String get url => attributes[kUrl] ?? '';
  bool get isVerified => attributes[kVerified] == true;
  

  // setters for object attributes

  set site(String s) => attributes[kSite] = s;
  set url(String s) => attributes[kUrl] = s;
  set isVerified(bool b) => attributes[kVerified] = b;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleSocialProfile() : super(kPcoApplication, kTypeString);
  PcoPeopleSocialProfile.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleSocialProfile] objects (expecting many)
  /// using a path like this: `/people/v2/social_profiles`
  static Future<PcoCollection<PcoPeopleSocialProfile>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSocialProfile.canInclude;
    var url = '/people/v2/social_profiles';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleSocialProfile>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleSocialProfile] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/social_profiles`
  static Future<PcoCollection<PcoPeopleSocialProfile>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSocialProfile.canInclude;
    var url = '/people/v2/people/$peopleId/social_profiles';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleSocialProfile>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/social_profiles/1/person`
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
