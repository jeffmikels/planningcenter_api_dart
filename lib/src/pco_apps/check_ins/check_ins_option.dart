/// This file was generated on 2021-11-25T00:07:20.352325


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
/// possible includes with parameter ?include=a,b
/// @label: include associated label 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoCheckInsOption extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Option';
  static const String kTypeId = 'option';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/options';

  /// possible includes with parameter ?include=a,b
  /// @label: include associated label 
  static List<String> get canInclude => ['label'];

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
  static const kBody = 'body';
  static const kQuantity = 'quantity';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get body => attributes[kBody] ?? '';
  int get quantity => attributes[kQuantity] ?? 0;




  PcoCheckInsOption() : super(kPcoApplication, kTypeString);
  PcoCheckInsOption.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsOption Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/options;
  static Future<PcoCollection<PcoCheckInsOption>> getManyFromCheckInAndOption(String checkInId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsOption.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/options';
    return PcoCollection.fromApiCall<PcoCheckInsOption>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsOption Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/options;
  static Future<PcoCollection<PcoCheckInsOption>> getManyFromCheckInAndLocationAndOption(String checkInId,String locationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsOption.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/options';
    return PcoCollection.fromApiCall<PcoCheckInsOption>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoCheckInsOption Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/options;
  static Future<PcoCollection<PcoCheckInsOption>> getSingleFromCheckInAndOption(String checkInId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsOption.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/options' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsOption>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsOption.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsOption Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/options;
  static Future<PcoCollection<PcoCheckInsOption>> getSingleFromCheckInAndLocationAndOption(String checkInId,String locationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsOption.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/options' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsOption>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsOption.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoCheckInsLabel objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/options/1/label
Future<PcoCollection<PcoCheckInsLabel>> getLabels({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
  var url = '$apiEndpoint/label';
  return PcoCollection.fromApiCall<PcoCheckInsLabel>(url, query: query, apiVersion:apiVersion);
}
    


}
