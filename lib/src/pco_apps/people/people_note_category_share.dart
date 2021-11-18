/// This file was generated on 2021-11-18T13:57:10.003159


import '../../pco.dart';

/// This class represents a PCO People NoteCategoryShare Object
/// 
/// Application: people
/// Id:          note_category_share
/// Type:        NoteCategoryShare
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A note category share defines who can view notes in a category.
/// 
/// Example:
/// 
/// {"type":"NoteCategoryShare","id":"1","attributes":{"group":"value","person_id":"primary_key"},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"note_category":{"data":{"type":"NoteCategory","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/note_categories/1/shares
/// 
class PcoPeopleNoteCategoryShare extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'NoteCategoryShare';
  static const String typeId = 'note_category_share';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'notecategoryshare-notecategory-shares';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/note_categories/1/shares';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kGroup = 'group';
  static const kPersonId = 'person_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['group','person_id'];
  @override
  List<String> get updateAllowed => ['group','person_id'];


  /// Possible values: `No Access`, `Viewer`, `Editor`, or `Manager`
  String get group => attributes[kGroup] ?? '';
  String get personId => attributes[kPersonId] ?? '';



  /// Possible values: `No Access`, `Viewer`, `Editor`, or `Manager`
  set group(String s) => attributes[kGroup] = s;
  set personId(String s) => attributes[kPersonId] = s;


  PcoPeopleNoteCategoryShare() : super(pcoApplication, typeString);
  PcoPeopleNoteCategoryShare.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleNoteCategoryShare Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/shares;
  static Future<List<PcoPeopleNoteCategoryShare>> getManyFromNoteCategoryAndShareIds(String noteCategoryId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleNoteCategoryShare> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/note_categories/$noteCategoryId/shares';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleNoteCategoryShare.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleNoteCategoryShare Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/shares;
  static Future<PcoPeopleNoteCategoryShare?> getSingleFromNoteCategoryAndShareIds(String noteCategoryId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleNoteCategoryShare?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/note_categories/$noteCategoryId/shares' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleNoteCategoryShare.fromJson(res.data);
    }
    return retval;
  }




}
