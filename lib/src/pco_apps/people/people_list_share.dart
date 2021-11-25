/// This file was generated on 2021-11-25T00:07:20.564271


import '../../pco.dart';

/// This class represents a PCO People ListShare Object
/// 
/// Application: people
/// Id:          list_share
/// Type:        ListShare
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A list share indicates who has access to edit a list.
/// 
/// Example:
/// 
/// {"type":"ListShare","id":"1","attributes":{"permission":"value","group":"value","created_at":"2000-01-01T12:00:00Z","name":"string"},"relationships":{"person":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/lists/1/shares
/// 
/// possible includes with parameter ?include=a,b
/// @person: include associated person 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @group (URLParameter), query on a specific group, example: ?where[group]=value
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @permission (URLParameter), query on a specific permission, example: ?where[permission]=value
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @group (URLParameter), prefix with a hyphen (-group) to reverse the order
///
class PcoPeopleListShare extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'ListShare';
  static const String kTypeId = 'list_share';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'listshare-list-shares';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/shares';

  /// possible includes with parameter ?include=a,b
  /// @person: include associated person 
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @group (URLParameter), query on a specific group, example: ?where[group]=value
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @permission (URLParameter), query on a specific permission, example: ?where[permission]=value
  static List<String> get canQuery => ['created_at','group','name','permission'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @group (URLParameter), prefix with a hyphen (-group) to reverse the order
  static List<String> get canOrderBy => ['created_at','group'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kPermission = 'permission';
  static const kGroup = 'group';
  static const kName = 'name';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// Possible values: `view` or `manage`
  String get permission => attributes[kPermission] ?? '';

  /// Possible values: `No Access`, `Viewer`, `Editor`, or `Manager`
  String get group => attributes[kGroup] ?? '';
  String get name => attributes[kName] ?? '';




  PcoPeopleListShare() : super(kPcoApplication, kTypeString);
  PcoPeopleListShare.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleListShare Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/shares;
  static Future<PcoCollection<PcoPeopleListShare>> getManyFromListAndShare(String listId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleListShare.canInclude;
    var url = '/people/v2/lists/$listId/shares';
    return PcoCollection.fromApiCall<PcoPeopleListShare>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeopleListShare Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/shares;
  static Future<PcoCollection<PcoPeopleListShare>> getSingleFromListAndShare(String listId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleListShare.canInclude;
    var url = '/people/v2/lists/$listId/shares' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleListShare>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleListShare.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/shares/1/person
Future<PcoCollection<PcoPeoplePerson>> getPersons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  var url = '$apiEndpoint/person';
  return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:apiVersion);
}
    


}
