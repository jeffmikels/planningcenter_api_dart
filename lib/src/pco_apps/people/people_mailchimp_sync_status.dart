/// This file was generated on 2021-11-22T16:57:41.546774


import '../../pco.dart';

/// This class represents a PCO People MailchimpSyncStatus Object
/// 
/// Application: people
/// Id:          mailchimp_sync_status
/// Type:        MailchimpSyncStatus
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// The status of syncing a List with Mailchimp.
/// 
/// Example:
/// 
/// {"type":"MailchimpSyncStatus","id":"1","attributes":{"status":"string","error":"string","progress":1,"completed_at":"2000-01-01T12:00:00Z","segment_id":1},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoPeopleMailchimpSyncStatu extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'MailchimpSyncStatus';
  static const String kTypeId = 'mailchimp_sync_status';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'mailchimpsyncstatus-list-mailchimp_sync_status';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status';

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
  static const kStatus = 'status';
  static const kError = 'error';
  static const kProgress = 'progress';
  static const kCompletedAt = 'completed_at';
  static const kSegmentId = 'segment_id';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get status => attributes[kStatus] ?? '';
  String get error => attributes[kError] ?? '';
  int get progress => attributes[kProgress] ?? 0;
  DateTime get completedAt => DateTime.parse(attributes[kCompletedAt] ?? '');
  int get segmentId => attributes[kSegmentId] ?? 0;




  PcoPeopleMailchimpSyncStatu() : super(kPcoApplication, kTypeString);
  PcoPeopleMailchimpSyncStatu.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleMailchimpSyncStatu Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status;
  static Future<List<PcoPeopleMailchimpSyncStatu>> getManyFromListAndMailchimpSyncStatuIds(String listId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleMailchimpSyncStatu> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMailchimpSyncStatu.canInclude;
    var url = '/people/v2/lists/$listId/mailchimp_sync_status';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleMailchimpSyncStatu.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleMailchimpSyncStatu Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status;
  static Future<PcoPeopleMailchimpSyncStatu?> getSingleFromListAndMailchimpSyncStatuIds(String listId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleMailchimpSyncStatu?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMailchimpSyncStatu.canInclude;
    var url = '/people/v2/lists/$listId/mailchimp_sync_status' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMailchimpSyncStatu.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
