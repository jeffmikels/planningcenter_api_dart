/// This file was generated on 2021-11-25T00:07:20.579715


import '../../pco.dart';

/// This class represents a PCO People NoteCategorySubscription Object
/// 
/// Application: people
/// Id:          note_category_subscription
/// Type:        NoteCategorySubscription
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A subscription for note categories
/// 
/// Example:
/// 
/// {"type":"NoteCategorySubscription","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"note_category":{"data":{"type":"NoteCategory","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/note_category_subscriptions
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeopleNoteCategorySubscription extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'NoteCategorySubscription';
  static const String kTypeId = 'note_category_subscription';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'notecategorysubscription-person-';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','updated_at'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];





  PcoPeopleNoteCategorySubscription() : super(kPcoApplication, kTypeString);
  PcoPeopleNoteCategorySubscription.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleNoteCategorySubscription Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/subscriptions;
  static Future<PcoCollection<PcoPeopleNoteCategorySubscription>> getManyFromNoteCategoryAndSubscription(String noteCategoryId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategorySubscription.canInclude;
    var url = '/people/v2/note_categories/$noteCategoryId/subscriptions';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategorySubscription>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleNoteCategorySubscription Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_category_subscriptions;
  static Future<PcoCollection<PcoPeopleNoteCategorySubscription>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategorySubscription.canInclude;
    var url = '/people/v2/note_category_subscriptions';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategorySubscription>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeopleNoteCategorySubscription Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/subscriptions;
  static Future<PcoCollection<PcoPeopleNoteCategorySubscription>> getSingleFromNoteCategoryAndSubscription(String noteCategoryId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategorySubscription.canInclude;
    var url = '/people/v2/note_categories/$noteCategoryId/subscriptions' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategorySubscription>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleNoteCategorySubscription.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleNoteCategorySubscription Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_category_subscriptions;
  static Future<PcoCollection<PcoPeopleNoteCategorySubscription>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategorySubscription.canInclude;
    var url = '/people/v2/note_category_subscriptions' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategorySubscription>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleNoteCategorySubscription.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }





}
