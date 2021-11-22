/// This file was generated on 2021-11-22T16:37:09.091192


import '../../pco.dart';

/// This class represents a PCO People Email Object
/// 
/// Application: people
/// Id:          email
/// Type:        Email
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// An email represents an email address and location.
/// 
/// Example:
/// 
/// {"type":"Email","id":"1","attributes":{"address":"string","location":"string","primary":true,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","blocked":true},"relationships":{"person":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/emails
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @address (URLParameter), query on a specific address, example: ?where[address]=string
/// @blocked (URLParameter), query on a specific blocked, example: ?where[blocked]=true
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @location (URLParameter), query on a specific location, example: ?where[location]=string
/// @primary (URLParameter), query on a specific primary, example: ?where[primary]=true
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @address (URLParameter), prefix with a hyphen (-address) to reverse the order
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @location (URLParameter), prefix with a hyphen (-location) to reverse the order
/// @primary (URLParameter), prefix with a hyphen (-primary) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeopleEmail extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Email';
  static const String kTypeId = 'email';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'email-organization-emails';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/emails';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @address (URLParameter), query on a specific address, example: ?where[address]=string
  /// @blocked (URLParameter), query on a specific blocked, example: ?where[blocked]=true
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @location (URLParameter), query on a specific location, example: ?where[location]=string
  /// @primary (URLParameter), query on a specific primary, example: ?where[primary]=true
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['address','blocked','created_at','location','primary','updated_at'];

  /// possible orderings with parameter ?order=
  /// @address (URLParameter), prefix with a hyphen (-address) to reverse the order
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @location (URLParameter), prefix with a hyphen (-location) to reverse the order
  /// @primary (URLParameter), prefix with a hyphen (-primary) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['address','created_at','location','primary','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kAddress = 'address';
  static const kLocation = 'location';
  static const kPrimary = 'primary';
  static const kBlocked = 'blocked';


  // getters and setters
  @override
  List<String> get createAllowed => ['address','location','primary'];
  @override
  List<String> get updateAllowed => ['address','location','primary'];

  String get address => attributes[kAddress] ?? '';
  String get location => attributes[kLocation] ?? '';
  bool get isPrimary => attributes[kPrimary] == true;
  bool get isBlocked => attributes[kBlocked] == true;


  set address(String s) => attributes[kAddress] = s;
  set location(String s) => attributes[kLocation] = s;
  set isPrimary(bool b) => attributes[kPrimary] = b;


  PcoPeopleEmail() : super(kPcoApplication, kTypeString);
  PcoPeopleEmail.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleEmail Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/emails;
  static Future<List<PcoPeopleEmail>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleEmail> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleEmail.canInclude;
    var url = '/people/v2/emails';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleEmail.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleEmail Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/emails;
  static Future<List<PcoPeopleEmail>> getManyFromPeopleAndEmailIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleEmail> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleEmail.canInclude;
    var url = '/people/v2/people/$peopleId/emails';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleEmail.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleEmail Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/emails;
  static Future<PcoPeopleEmail?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleEmail?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleEmail.canInclude;
    var url = '/people/v2/emails' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleEmail.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleEmail Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/emails;
  static Future<PcoPeopleEmail?> getSingleFromPeopleAndEmailIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleEmail?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleEmail.canInclude;
    var url = '/people/v2/people/$peopleId/emails' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleEmail.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/emails/1/person
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
