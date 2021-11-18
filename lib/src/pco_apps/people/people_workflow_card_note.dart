/// This file was generated on 2021-11-17T23:59:29.923494


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
  static const String pcoApplication = 'people';
  static const String typeString = 'WorkflowCardNote';
  static const String typeId = 'workflow_card_note';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'workflowcardnote-workflowcard-notes';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kNote = 'note';


  // getters and setters
  @override
  List<String> get createAllowed => ['note','note_category_id'];
  @override
  List<String> get updateAllowed => [];

  String get note => attributes[kNote] ?? '';


  set note(String s) => attributes[kNote] = s;


  PcoPeopleWorkflowCardNote() : super(pcoApplication, typeString);
  PcoPeopleWorkflowCardNote.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleWorkflowCardNote Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes;
  static Future<List<PcoPeopleWorkflowCardNote>> getManyFromPeopleAndWorkflowCardAndNoteIds(String peopleId,String workflowCardId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleWorkflowCardNote> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/notes';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
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
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflowCardNote.fromJson(res.data);
    }
    return retval;
  }




}
