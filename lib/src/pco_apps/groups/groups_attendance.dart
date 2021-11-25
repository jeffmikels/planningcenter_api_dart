/// This file was generated on 2021-11-25T00:07:20.846817


import '../../pco.dart';

/// This class represents a PCO Groups Attendance Object
/// 
/// Application: groups
/// Id:          attendance
/// Type:        Attendance
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Attendance","id":"1","attributes":{"attended":true,"role":"value"},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"event":{"data":{"type":"Event","id":"1"}}}}
/// 
/// Collection Only: true
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/groups/v2/events/1/attendances
/// 
/// possible includes with parameter ?include=a,b
/// @person: include associated person 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @role (URLParameter), query on a specific role, example: ?where[role]=value
/// possible orderings with parameter ?order=
/// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
/// @role (URLParameter), prefix with a hyphen (-role) to reverse the order
///
class PcoGroupsAttendance extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Attendance';
  static const String kTypeId = 'attendance';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'attendance-event-attendances';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/events/1/attendances';

  /// possible includes with parameter ?include=a,b
  /// @person: include associated person 
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @role (URLParameter), query on a specific role, example: ?where[role]=value
  static List<String> get canQuery => ['role'];

  /// possible orderings with parameter ?order=
  /// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// @role (URLParameter), prefix with a hyphen (-role) to reverse the order
  static List<String> get canOrderBy => ['first_name','last_name','role'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kAttended = 'attended';
  static const kRole = 'role';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  bool get isAttended => attributes[kAttended] == true;

  /// Possible values: `member`, `leader`, `visitor`, or `applicant`
  String get role => attributes[kRole] ?? '';




  PcoGroupsAttendance() : super(kPcoApplication, kTypeString);
  PcoGroupsAttendance.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGroupsAttendance Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/attendances;
  static Future<PcoCollection<PcoGroupsAttendance>> getManyFromEventAndAttendance(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsAttendance.canInclude;
    var url = '/groups/v2/events/$eventId/attendances';
    return PcoCollection.fromApiCall<PcoGroupsAttendance>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoGroupsAttendance Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/attendances;
  static Future<PcoCollection<PcoGroupsAttendance>> getSingleFromEventAndAttendance(String eventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsAttendance.canInclude;
    var url = '/groups/v2/events/$eventId/attendances' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsAttendance>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsAttendance.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoGroupsPerson objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/attendances/1/person
Future<PcoCollection<PcoGroupsPerson>> getPersons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsPerson.canInclude;
  var url = '$apiEndpoint/person';
  return PcoCollection.fromApiCall<PcoGroupsPerson>(url, query: query, apiVersion:apiVersion);
}
    


}
