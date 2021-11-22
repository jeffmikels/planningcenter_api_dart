/// This file was generated on 2021-11-22T16:57:41.647928


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @id (URLParameter), prefix with a hyphen (-id) to reverse the order
///
class PcoPeopleWorkflowCardActivity extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowCardActivity';
  static const String kTypeId = 'workflow_card_activity';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'workflowcardactivity-workflowcard-activities';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @id (URLParameter), prefix with a hyphen (-id) to reverse the order
  static List<String> get canOrderBy => ['id'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoPeopleWorkflowCardActivity() : super(kPcoApplication, kTypeString);
  PcoPeopleWorkflowCardActivity.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleWorkflowCardActivity Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities;
  static Future<List<PcoPeopleWorkflowCardActivity>> getManyFromPeopleAndWorkflowCardAndActivityIds(String peopleId,String workflowCardId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleWorkflowCardActivity> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowCardActivity.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/activities';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflowCardActivity.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleWorkflowCardActivity Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities;
  static Future<PcoPeopleWorkflowCardActivity?> getSingleFromPeopleAndWorkflowCardAndActivityIds(String peopleId,String workflowCardId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleWorkflowCardActivity?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowCardActivity.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/activities' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflowCardActivity.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
