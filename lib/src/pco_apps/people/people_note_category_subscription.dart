/// This file was generated on 2021-11-17T23:59:29.901762


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
class PcoPeopleNoteCategorySubscription extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'NoteCategorySubscription';
  static const String typeId = 'note_category_subscription';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'notecategorysubscription-person-';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];





  PcoPeopleNoteCategorySubscription() : super(pcoApplication, typeString);
  PcoPeopleNoteCategorySubscription.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleNoteCategorySubscription Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/subscriptions;
  static Future<List<PcoPeopleNoteCategorySubscription>> getManyFromNoteCategoryAndSubscriptionIds(String noteCategoryId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleNoteCategorySubscription> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/note_categories/$noteCategoryId/subscriptions';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleNoteCategorySubscription.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleNoteCategorySubscription Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_category_subscriptions;
  static Future<List<PcoPeopleNoteCategorySubscription>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleNoteCategorySubscription> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/note_category_subscriptions';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleNoteCategorySubscription.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleNoteCategorySubscription Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_categories/1/subscriptions;
  static Future<PcoPeopleNoteCategorySubscription?> getSingleFromNoteCategoryAndSubscriptionIds(String noteCategoryId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleNoteCategorySubscription?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/note_categories/$noteCategoryId/subscriptions' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleNoteCategorySubscription.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleNoteCategorySubscription Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/note_category_subscriptions;
  static Future<PcoPeopleNoteCategorySubscription?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleNoteCategorySubscription?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/note_category_subscriptions' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleNoteCategorySubscription.fromJson(res.data);
    }
    return retval;
  }




}
