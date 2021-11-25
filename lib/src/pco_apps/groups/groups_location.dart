/// This file was generated on 2021-11-25T00:07:20.850376


import '../../pco.dart';

/// This class represents a PCO Groups Location Object
/// 
/// Application: groups
/// Id:          location
/// Type:        Location
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Location","id":"1","attributes":{"display_preference":"value","full_formatted_address":"string","latitude":1.42,"longitude":1.42,"name":"string","radius":"string","strategy":"string"},"relationships":{}}
/// 
/// Collection Only: true
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/groups/v2/events/1/location
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoGroupsLocation extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Location';
  static const String kTypeId = 'location';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'location-group-location';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/groups/1/location';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kDisplayPreference = 'display_preference';
  static const kFullFormattedAddress = 'full_formatted_address';
  static const kLatitude = 'latitude';
  static const kLongitude = 'longitude';
  static const kName = 'name';
  static const kRadius = 'radius';
  static const kStrategy = 'strategy';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// Either `hidden`, `approximate`, or `exact`
  ///Possible values: `hidden`, `approximate`, or `exact`
  String get displayPreference => attributes[kDisplayPreference] ?? '';
  String get fullFormattedAddress => attributes[kFullFormattedAddress] ?? '';
  double get latitude => attributes[kLatitude] ?? 0;
  double get longitude => attributes[kLongitude] ?? 0;
  String get name => attributes[kName] ?? '';

  /// The number of miles in a location's approximate address
  String get radius => attributes[kRadius] ?? '';

  /// The display preference for the current user
  String get strategy => attributes[kStrategy] ?? '';




  PcoGroupsLocation() : super(kPcoApplication, kTypeString);
  PcoGroupsLocation.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGroupsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/location;
  static Future<PcoCollection<PcoGroupsLocation>> getManyFromEvent(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsLocation.canInclude;
    var url = '/groups/v2/events/$eventId/location';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGroupsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/location;
  static Future<PcoCollection<PcoGroupsLocation>> getManyFromGroup(String groupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsLocation.canInclude;
    var url = '/groups/v2/groups/$groupId/location';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoGroupsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/location;
  static Future<PcoCollection<PcoGroupsLocation>> getSingleFromEvent(String eventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsLocation.canInclude;
    var url = '/groups/v2/events/$eventId/location' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsLocation.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGroupsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/location;
  static Future<PcoCollection<PcoGroupsLocation>> getSingleFromGroup(String groupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsLocation.canInclude;
    var url = '/groups/v2/groups/$groupId/location' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsLocation.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }





}
