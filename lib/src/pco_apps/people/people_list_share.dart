/// This file was generated on 2021-11-18T13:57:09.988743


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
class PcoPeopleListShare extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'ListShare';
  static const String typeId = 'list_share';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'listshare-list-shares';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/shares';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoPeopleListShare() : super(pcoApplication, typeString);
  PcoPeopleListShare.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleListShare Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/shares;
  static Future<List<PcoPeopleListShare>> getManyFromListAndShareIds(String listId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleListShare> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/shares';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleListShare.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleListShare Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/shares;
  static Future<PcoPeopleListShare?> getSingleFromListAndShareIds(String listId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleListShare?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/shares' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleListShare.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/shares/1/person
Future<List<PcoPeoplePerson>> getPersons({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    

}
