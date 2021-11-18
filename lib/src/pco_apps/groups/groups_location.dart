/// This file was generated on 2021-11-17T23:59:30.060940


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
class PcoGroupsLocation extends PcoResource {
  static const String pcoApplication = 'groups';
  static const String typeString = 'Location';
  static const String typeId = 'location';
  static const String apiVersion = '2018-08-01';
  static const String shortestEdgeId = 'location-group-location';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/groups/1/location';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoGroupsLocation() : super(pcoApplication, typeString);
  PcoGroupsLocation.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGroupsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/location;
  static Future<List<PcoGroupsLocation>> getManyFromEventAndLocationIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/events/$eventId/location';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsLocation.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/location;
  static Future<List<PcoGroupsLocation>> getManyFromGroupAndLocationIds(String groupId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/groups/$groupId/location';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsLocation.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGroupsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/location;
  static Future<PcoGroupsLocation?> getSingleFromEventAndLocationIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/events/$eventId/location' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsLocation.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGroupsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/location;
  static Future<PcoGroupsLocation?> getSingleFromGroupAndLocationIds(String groupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/groups/$groupId/location' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsLocation.fromJson(res.data);
    }
    return retval;
  }




}
