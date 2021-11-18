/// This file was generated on 2021-11-18T15:28:02.111072


import '../../pco.dart';

/// This class represents a PCO People WorkflowCardNote Object
/// 
/// Application: people
/// Id:          workflow_card_note
/// Type:        WorkflowCardNote
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// Workflow Note is a note that has been made on a Workflow Card
/// 
/// Example:
/// 
/// {"type":"WorkflowCardNote","id":"1","attributes":{"note":"string","created_at":"2000-01-01T12:00:00Z"},"relationships":{"note_category":{"data":{"type":"NoteCategory","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes
/// 
class PcoPeopleWorkflowCardNote extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowCardNote';
  static const String kTypeId = 'workflow_card_note';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'workflowcardnote-workflowcard-notes';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kNote = 'note';


  // getters and setters
  @override
  List<String> get createAllowed => ['note','note_category_id'];
  @override
  List<String> get updateAllowed => [];

  String get note => attributes[kNote] ?? '';


  set note(String s) => attributes[kNote] = s;


  PcoPeopleWorkflowCardNote() : super(kPcoApplication, kTypeString);
  PcoPeopleWorkflowCardNote.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleWorkflowCardNote Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes;
  static Future<List<PcoPeopleWorkflowCardNote>> getManyFromPeopleAndWorkflowCardAndNoteIds(String peopleId,String workflowCardId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleWorkflowCardNote> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/notes';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflowCardNote.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleWorkflowCardNote Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes;
  static Future<PcoPeopleWorkflowCardNote?> getSingleFromPeopleAndWorkflowCardAndNoteIds(String peopleId,String workflowCardId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleWorkflowCardNote?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/notes' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflowCardNote.fromJson(res.data);
    }
    return retval;
  }




}
