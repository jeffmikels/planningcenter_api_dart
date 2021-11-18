/// This file was generated on 2021-11-18T13:57:10.037519


import '../../pco.dart';

/// This class represents a PCO People WorkflowCardActivity Object
/// 
/// Application: people
/// Id:          workflow_card_activity
/// Type:        WorkflowCardActivity
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// Workflow Card Activity is a record of an action performed on a card
/// 
/// Example:
/// 
/// {"type":"WorkflowCardActivity","id":"1","attributes":{"comment":"string","content":"string","form_submission_url":"string","person_avatar_url":"string","person_name":"string","reassigned_to_avatar_url":"string","reassigned_to_name":"string","subject":"string","type":"string","content_is_html":true,"created_at":"2000-01-01T12:00:00Z"},"relationships":{"workflow_card":{"data":{"type":"WorkflowCard","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities
/// 
class PcoPeopleWorkflowCardActivity extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'WorkflowCardActivity';
  static const String typeId = 'workflow_card_activity';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'workflowcardactivity-workflowcard-activities';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kComment = 'comment';
  static const kContent = 'content';
  static const kFormSubmissionUrl = 'form_submission_url';
  static const kPersonAvatarUrl = 'person_avatar_url';
  static const kPersonName = 'person_name';
  static const kReassignedToAvatarUrl = 'reassigned_to_avatar_url';
  static const kReassignedToName = 'reassigned_to_name';
  static const kSubject = 'subject';
  static const kType = 'type';
  static const kContentIsHtml = 'content_is_html';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get comment => attributes[kComment] ?? '';
  String get content => attributes[kContent] ?? '';
  String get formSubmissionUrl => attributes[kFormSubmissionUrl] ?? '';
  String get personAvatarUrl => attributes[kPersonAvatarUrl] ?? '';
  String get personName => attributes[kPersonName] ?? '';
  String get reassignedToAvatarUrl => attributes[kReassignedToAvatarUrl] ?? '';
  String get reassignedToName => attributes[kReassignedToName] ?? '';
  String get subject => attributes[kSubject] ?? '';
  String get type => attributes[kType] ?? '';
  bool get isContentIsHtml => attributes[kContentIsHtml] == true;




  PcoPeopleWorkflowCardActivity() : super(pcoApplication, typeString);
  PcoPeopleWorkflowCardActivity.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleWorkflowCardActivity Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities;
  static Future<List<PcoPeopleWorkflowCardActivity>> getManyFromPeopleAndWorkflowCardAndActivityIds(String peopleId,String workflowCardId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleWorkflowCardActivity> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/activities';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflowCardActivity.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleWorkflowCardActivity Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities;
  static Future<PcoPeopleWorkflowCardActivity?> getSingleFromPeopleAndWorkflowCardAndActivityIds(String peopleId,String workflowCardId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleWorkflowCardActivity?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/activities' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflowCardActivity.fromJson(res.data);
    }
    return retval;
  }




}
