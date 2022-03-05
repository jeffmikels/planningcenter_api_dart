/// This file was generated on 2022-03-04T20:00:53.769849


import '../../pco.dart';

/// This class represents a PCO People WorkflowCardNote Object
/// 
/// - Application:        people
/// - Id:                 workflow_card_note
/// - Type:               WorkflowCardNote
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes
/// 
/// Description:
/// Workflow Note is a note that has been made on a Workflow Card
/// 
/// Example:
/// ```json
/// {
///   "type": "WorkflowCardNote",
///   "id": "1",
///   "attributes": {
///     "note": "string",
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "note_category": {
///       "data": {
///         "type": "NoteCategory",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `workflowcardnote-workflowcard-notes`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes
/// 
/// All Actions:
/// NONE
///
class PcoPeopleWorkflowCardNote extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowCardNote';
  static const String kTypeId = 'workflow_card_note';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'workflowcardnote-workflowcard-notes';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static List<String> get canOrderBy => ['created_at'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kNote = 'note';
  static const kCreatedAt = 'created_at';
  static const kNoteCategoryId = 'note_category_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['note','note_category_id'];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes

  String get note => attributes[kNote] ?? '';
  

  // setters for object attributes

  set note(String s) => attributes[kNote] = s;
  

  // additional setters and getters for assignable values

  String get noteCategoryId => attributes[kNoteCategoryId] ?? '';
  set noteCategoryId(String s) => attributes[kNoteCategoryId] = s;
  



  // Class Constructors
  PcoPeopleWorkflowCardNote() : super(kPcoApplication, kTypeString);
  PcoPeopleWorkflowCardNote.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoPeopleWorkflowCardNote] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/notes`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleWorkflowCardNote.create(String peopleId,String workflowCardId) {
    return PcoPeopleWorkflowCardNote()
      .._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/notes';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleWorkflowCardNote] objects (expecting one)
  /// using a path like this: `/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/notes`
  static Future<PcoCollection<PcoPeopleWorkflowCardNote>> getNotesFromPeopleAndWorkflowCard(String peopleId,String workflowCardId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowCardNote.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/notes';
    
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCardNote>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
