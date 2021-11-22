/// This file was generated on 2021-11-22T16:37:09.179647


import '../../pco.dart';

/// This class represents a PCO People SocialProfile Object
/// 
/// Application: people
/// Id:          social_profile
/// Type:        SocialProfile
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A social profile represents a members's Twitter, Facebook, or other social media account.
/// 
/// Example:
/// 
/// {"type":"SocialProfile","id":"1","attributes":{"site":"string","url":"string","verified":true,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/social_profiles
/// 
/// possible includes with parameter ?include=a,b
/// @person: include associated person 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @site (URLParameter), query on a specific site, example: ?where[site]=string
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// @url (URLParameter), query on a specific url, example: ?where[url]=string
/// @verified (URLParameter), query on a specific verified, example: ?where[verified]=true
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @site (URLParameter), prefix with a hyphen (-site) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
/// @url (URLParameter), prefix with a hyphen (-url) to reverse the order
/// @verified (URLParameter), prefix with a hyphen (-verified) to reverse the order
///
class PcoPeopleSocialProfile extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'SocialProfile';
  static const String kTypeId = 'social_profile';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'socialprofile-organization-social_profiles';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/social_profiles';

  /// possible includes with parameter ?include=a,b
  /// @person: include associated person 
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @site (URLParameter), query on a specific site, example: ?where[site]=string
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  /// @url (URLParameter), query on a specific url, example: ?where[url]=string
  /// @verified (URLParameter), query on a specific verified, example: ?where[verified]=true
  static List<String> get canQuery => ['created_at','site','updated_at','url','verified'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @site (URLParameter), prefix with a hyphen (-site) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  /// @url (URLParameter), prefix with a hyphen (-url) to reverse the order
  /// @verified (URLParameter), prefix with a hyphen (-verified) to reverse the order
  static List<String> get canOrderBy => ['created_at','site','updated_at','url','verified'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kSite = 'site';
  static const kUrl = 'url';
  static const kVerified = 'verified';


  // getters and setters
  @override
  List<String> get createAllowed => ['site','url','verified'];
  @override
  List<String> get updateAllowed => ['site','url','verified'];

  String get site => attributes[kSite] ?? '';
  String get url => attributes[kUrl] ?? '';
  bool get isVerified => attributes[kVerified] == true;


  set site(String s) => attributes[kSite] = s;
  set url(String s) => attributes[kUrl] = s;
  set isVerified(bool b) => attributes[kVerified] = b;


  PcoPeopleSocialProfile() : super(kPcoApplication, kTypeString);
  PcoPeopleSocialProfile.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleSocialProfile Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/social_profiles;
  static Future<List<PcoPeopleSocialProfile>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleSocialProfile> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSocialProfile.canInclude;
    var url = '/people/v2/social_profiles';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleSocialProfile.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleSocialProfile Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/social_profiles;
  static Future<List<PcoPeopleSocialProfile>> getManyFromPeopleAndSocialProfileIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleSocialProfile> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSocialProfile.canInclude;
    var url = '/people/v2/people/$peopleId/social_profiles';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleSocialProfile.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleSocialProfile Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/social_profiles;
  static Future<PcoPeopleSocialProfile?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleSocialProfile?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSocialProfile.canInclude;
    var url = '/people/v2/social_profiles' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleSocialProfile.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleSocialProfile Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/social_profiles;
  static Future<PcoPeopleSocialProfile?> getSingleFromPeopleAndSocialProfileIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleSocialProfile?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSocialProfile.canInclude;
    var url = '/people/v2/people/$peopleId/social_profiles' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleSocialProfile.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/social_profiles/1/person
Future<List<PcoPeoplePerson>> getPersons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
