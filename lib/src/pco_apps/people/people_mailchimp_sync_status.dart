/// This file was generated on 2021-11-17T23:59:29.891570


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
class PcoPeopleMailchimpSyncStatu extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'MailchimpSyncStatus';
  static const String typeId = 'mailchimp_sync_status';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'mailchimpsyncstatus-list-mailchimp_sync_status';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoPeopleMailchimpSyncStatu() : super(pcoApplication, typeString);
  PcoPeopleMailchimpSyncStatu.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleMailchimpSyncStatu Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status;
  static Future<List<PcoPeopleMailchimpSyncStatu>> getManyFromListAndMailchimpSyncStatuIds(String listId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleMailchimpSyncStatu> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/mailchimp_sync_status';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleMailchimpSyncStatu.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleMailchimpSyncStatu Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status;
  static Future<PcoPeopleMailchimpSyncStatu?> getSingleFromListAndMailchimpSyncStatuIds(String listId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleMailchimpSyncStatu?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/mailchimp_sync_status' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleMailchimpSyncStatu.fromJson(res.data);
    }
    return retval;
  }




}
