/// This file was generated on 2021-11-17T23:59:30.002852


import '../../pco.dart';

/// This class represents a PCO Calendar ResourceQuestion Object
/// 
/// Application: calendar
/// Id:          resource_question
/// Type:        ResourceQuestion
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// A question to answer when requesting to book a room or resource.\n
/// 
/// Example:
/// 
/// {"type":"ResourceQuestion","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","kind":"string","updated_at":"2000-01-01T12:00:00Z","choices":"string","description":"string","multiple_select":true,"optional":true,"position":1,"question":"string"},"relationships":{"resource":{"data":{"type":"Resource","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/resource_questions
/// 
class PcoCalendarResourceQuestion extends PcoResource {
  static const String pcoApplication = 'calendar';
  static const String typeString = 'ResourceQuestion';
  static const String typeId = 'resource_question';
  static const String apiVersion = '2020-04-08';
  static const String shortestEdgeId = 'resourcequestion-organization-resource_questions';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_questions';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kKind = 'kind';
  static const kChoices = 'choices';
  static const kDescription = 'description';
  static const kMultipleSelect = 'multiple_select';
  static const kOptional = 'optional';
  static const kPosition = 'position';
  static const kQuestion = 'question';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// Possible values:
  ///- `dropdown`: predefined list of choices as an answer
  ///- `paragraph`: expected answer is a paragraph
  ///- `text`: expected answer is a sentence
  ///- `yesno`: expected answer is 'Yes' or 'No'
  ///- `section_header`: used to separate questions in the UI, no expected answer
  String get kind => attributes[kKind] ?? '';

  /// If `kind` is `dropdown`, represents a string of dropdown choices
  ///seperated by the `|` character
  String get choices => attributes[kChoices] ?? '';

  /// Optional description of the question
  String get description => attributes[kDescription] ?? '';

  /// If `kind` is `dropdown`,
  ///`true` indicates that more than one selection is permitted
  bool get isMultipleSelect => attributes[kMultipleSelect] == true;

  /// - `true` indicates answering the question is not required when booking
  ///- `false` indicates answering the question is required when booking
  bool get isOptional => attributes[kOptional] == true;

  /// Position of question in list in the UI
  int get position => attributes[kPosition] ?? 0;

  /// The question to be answered
  String get question => attributes[kQuestion] ?? '';




  PcoCalendarResourceQuestion() : super(pcoApplication, typeString);
  PcoCalendarResourceQuestion.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCalendarResourceQuestion Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_questions;
  static Future<List<PcoCalendarResourceQuestion>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarResourceQuestion> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resource_questions';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResourceQuestion.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarResourceQuestion Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_questions;
  static Future<List<PcoCalendarResourceQuestion>> getManyFromResourceAndResourceQuestionIds(String resourceId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarResourceQuestion> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resources/$resourceId/resource_questions';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResourceQuestion.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarResourceQuestion Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_questions;
  static Future<PcoCalendarResourceQuestion?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarResourceQuestion?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resource_questions' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResourceQuestion.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarResourceQuestion Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_questions;
  static Future<PcoCalendarResourceQuestion?> getSingleFromResourceAndResourceQuestionIds(String resourceId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarResourceQuestion?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resources/$resourceId/resource_questions' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResourceQuestion.fromJson(res.data);
    }
    return retval;
  }




}
