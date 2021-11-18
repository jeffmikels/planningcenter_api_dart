/// This file was generated on 2021-11-17T23:59:27.202173


import '../../pco.dart';

/// This class represents a PCO CheckIns Option Object
/// 
/// Application: check-ins
/// Id:          option
/// Type:        Option
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// An option which an attendee may select when checking in.\n\nOptions may have extra labels associated with them, denoted by `label` and `quantity`.\n
/// 
/// Example:
/// 
/// {"type":"Option","id":"1","attributes":{"body":"string","quantity":1,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/options
/// 
class PcoCheckInsOption extends PcoResource {
  static const String pcoApplication = 'check-ins';
  static const String typeString = 'Option';
  static const String typeId = 'option';
  static const String apiVersion = '2019-07-17';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/options';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kBody = 'body';
  static const kQuantity = 'quantity';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get body => attributes[kBody] ?? '';
  int get quantity => attributes[kQuantity] ?? 0;




  PcoCheckInsOption() : super(pcoApplication, typeString);
  PcoCheckInsOption.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCheckInsOption Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/options;
  static Future<List<PcoCheckInsOption>> getManyFromCheckInAndOptionIds(String checkInId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsOption> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/options';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsOption.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsOption Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/options;
  static Future<List<PcoCheckInsOption>> getManyFromCheckInAndLocationAndOptionIds(String checkInId,String locationId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsOption> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/options';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsOption.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsOption Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/options;
  static Future<PcoCheckInsOption?> getSingleFromCheckInAndOptionIds(String checkInId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsOption?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/options' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsOption.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsOption Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/options;
  static Future<PcoCheckInsOption?> getSingleFromCheckInAndLocationAndOptionIds(String checkInId,String locationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsOption?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/options' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsOption.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsLabel objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/options/1/label
Future<List<PcoCheckInsLabel>> getLabels({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLabel> retval = [];
  var url = '$apiEndpoint/label';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLabel.fromJson(itemData));
    }
  }
  return retval;
}
    

}
