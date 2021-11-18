/// This file was generated on 2021-11-18T15:28:01.848840


import '../../pco.dart';

/// This class represents a PCO CheckIns LocationLabel Object
/// 
/// Application: check-ins
/// Id:          location_label
/// Type:        LocationLabel
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// Says how many of a given label to print for this location and\nwhether to print it for regulars, guests, and/or volunteers.\n
/// 
/// Example:
/// 
/// {"type":"LocationLabel","id":"1","attributes":{"quantity":1,"for_regular":true,"for_guest":true,"for_volunteer":true,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels
/// 
class PcoCheckInsLocationLabel extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'LocationLabel';
  static const String kTypeId = 'location_label';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'locationlabel-label-location_labels';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kQuantity = 'quantity';
  static const kForRegular = 'for_regular';
  static const kForGuest = 'for_guest';
  static const kForVolunteer = 'for_volunteer';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  int get quantity => attributes[kQuantity] ?? 0;
  bool get isForRegular => attributes[kForRegular] == true;
  bool get isForGuest => attributes[kForGuest] == true;
  bool get isForVolunteer => attributes[kForVolunteer] == true;




  PcoCheckInsLocationLabel() : super(kPcoApplication, kTypeString);
  PcoCheckInsLocationLabel.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoCheckInsLocationLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels;
  static Future<List<PcoCheckInsLocationLabel>> getManyFromLabelAndLocationLabelIds(String labelId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLocationLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/labels/$labelId/location_labels';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocationLabel.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocationLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_labels;
  static Future<List<PcoCheckInsLocationLabel>> getManyFromCheckInAndLocationAndLocationLabelIds(String checkInId,String locationId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLocationLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_labels';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocationLabel.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsLocationLabel Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels;
  static Future<PcoCheckInsLocationLabel?> getSingleFromLabelAndLocationLabelIds(String labelId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLocationLabel?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/labels/$labelId/location_labels' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocationLabel.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocationLabel Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_labels;
  static Future<PcoCheckInsLocationLabel?> getSingleFromCheckInAndLocationAndLocationLabelIds(String checkInId,String locationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLocationLabel?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_labels' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocationLabel.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsLabel objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/label
Future<List<PcoCheckInsLabel>> getLabels({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLabel> retval = [];
  var url = '$apiEndpoint/label';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLabel.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/location
Future<List<PcoCheckInsLocation>> getLocations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLocation> retval = [];
  var url = '$apiEndpoint/location';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocation.fromJson(itemData));
    }
  }
  return retval;
}
    

}
