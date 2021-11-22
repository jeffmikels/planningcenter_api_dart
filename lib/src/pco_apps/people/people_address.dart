/// This file was generated on 2021-11-22T16:37:09.076689


import '../../pco.dart';

/// This class represents a PCO People Address Object
/// 
/// Application: people
/// Id:          address
/// Type:        Address
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// An address represents a physical and/or mailing address for a person.
/// 
/// Example:
/// 
/// {"type":"Address","id":"1","attributes":{"city":"string","state":"string","zip":"string","street":"string","location":"string","primary":true,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{"person":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/addresses
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @city (URLParameter), query on a specific city, example: ?where[city]=string
/// @location (URLParameter), query on a specific location, example: ?where[location]=string
/// @primary (URLParameter), query on a specific primary, example: ?where[primary]=true
/// @state (URLParameter), query on a specific state, example: ?where[state]=string
/// @street (URLParameter), query on a specific street, example: ?where[street]=string
/// @zip (URLParameter), query on a specific zip, example: ?where[zip]=string
/// possible orderings with parameter ?order=
/// @city (URLParameter), prefix with a hyphen (-city) to reverse the order
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @location (URLParameter), prefix with a hyphen (-location) to reverse the order
/// @primary (URLParameter), prefix with a hyphen (-primary) to reverse the order
/// @state (URLParameter), prefix with a hyphen (-state) to reverse the order
/// @street (URLParameter), prefix with a hyphen (-street) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
/// @zip (URLParameter), prefix with a hyphen (-zip) to reverse the order
///
class PcoPeopleAddres extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Address';
  static const String kTypeId = 'address';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'address-organization-addresses';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/addresses';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @city (URLParameter), query on a specific city, example: ?where[city]=string
  /// @location (URLParameter), query on a specific location, example: ?where[location]=string
  /// @primary (URLParameter), query on a specific primary, example: ?where[primary]=true
  /// @state (URLParameter), query on a specific state, example: ?where[state]=string
  /// @street (URLParameter), query on a specific street, example: ?where[street]=string
  /// @zip (URLParameter), query on a specific zip, example: ?where[zip]=string
  static List<String> get canQuery => ['city','location','primary','state','street','zip'];

  /// possible orderings with parameter ?order=
  /// @city (URLParameter), prefix with a hyphen (-city) to reverse the order
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @location (URLParameter), prefix with a hyphen (-location) to reverse the order
  /// @primary (URLParameter), prefix with a hyphen (-primary) to reverse the order
  /// @state (URLParameter), prefix with a hyphen (-state) to reverse the order
  /// @street (URLParameter), prefix with a hyphen (-street) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  /// @zip (URLParameter), prefix with a hyphen (-zip) to reverse the order
  static List<String> get canOrderBy => ['city','created_at','location','primary','state','street','updated_at','zip'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kCity = 'city';
  static const kState = 'state';
  static const kZip = 'zip';
  static const kStreet = 'street';
  static const kLocation = 'location';
  static const kPrimary = 'primary';


  // getters and setters
  @override
  List<String> get createAllowed => ['city','state','zip','street','location','primary'];
  @override
  List<String> get updateAllowed => ['city','state','zip','street','location','primary'];

  String get city => attributes[kCity] ?? '';
  String get state => attributes[kState] ?? '';
  String get zip => attributes[kZip] ?? '';
  String get street => attributes[kStreet] ?? '';
  String get location => attributes[kLocation] ?? '';
  bool get isPrimary => attributes[kPrimary] == true;


  set city(String s) => attributes[kCity] = s;
  set state(String s) => attributes[kState] = s;
  set zip(String s) => attributes[kZip] = s;
  set street(String s) => attributes[kStreet] = s;
  set location(String s) => attributes[kLocation] = s;
  set isPrimary(bool b) => attributes[kPrimary] = b;


  PcoPeopleAddres() : super(kPcoApplication, kTypeString);
  PcoPeopleAddres.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleAddres Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/addresses;
  static Future<List<PcoPeopleAddres>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleAddres> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleAddres.canInclude;
    var url = '/people/v2/addresses';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleAddres.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleAddres Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/addresses;
  static Future<List<PcoPeopleAddres>> getManyFromPeopleAndAddresIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleAddres> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleAddres.canInclude;
    var url = '/people/v2/people/$peopleId/addresses';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleAddres.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleAddres Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/addresses;
  static Future<PcoPeopleAddres?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleAddres?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleAddres.canInclude;
    var url = '/people/v2/addresses' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleAddres.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleAddres Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/addresses;
  static Future<PcoPeopleAddres?> getSingleFromPeopleAndAddresIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleAddres?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleAddres.canInclude;
    var url = '/people/v2/people/$peopleId/addresses' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleAddres.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
