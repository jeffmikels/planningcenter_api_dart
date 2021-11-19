/// This file was generated on 2021-11-19T12:10:42.568370


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoPeopleNoteCategoryShare extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'NoteCategoryShare';
  static const String kTypeId = 'note_category_share';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'notecategoryshare-notecategory-shares';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/note_categories/1/shares';

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


  PcoPeopleNoteCategoryShare() : super(kPcoApplication, kTypeString);
  PcoPeopleNoteCategoryShare.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleNoteCategoryShare Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/shares;
  static Future<List<PcoPeopleNoteCategoryShare>> getManyFromNoteCategoryAndShareIds(String noteCategoryId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleNoteCategoryShare> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategoryShare.canInclude;
    var url = '/people/v2/note_categories/$noteCategoryId/shares';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleNoteCategoryShare.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleNoteCategoryShare Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/shares;
  static Future<PcoPeopleNoteCategoryShare?> getSingleFromNoteCategoryAndShareIds(String noteCategoryId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleNoteCategoryShare?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategoryShare.canInclude;
    var url = '/people/v2/note_categories/$noteCategoryId/shares' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleNoteCategoryShare.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }




}
