/// This file was generated on 2021-11-18T13:57:09.974117


import '../../pco.dart';

/// This class represents a PCO People Form Object
/// 
/// Application: people
/// Id:          form
/// Type:        Form
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A custom form for people to fill out.
/// 
/// Example:
/// 
/// {"type":"Form","id":"1","attributes":{"name":"string","description":"string","active":true,"archived_at":"2000-01-01T12:00:00Z","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","deleted_at":"2000-01-01T12:00:00Z","submission_count":1,"public_url":"string","recently_viewed":true,"archived":true},"relationships":{"campus":{"data":{"type":"Campus","id":"1"}},"form_category":{"data":{"type":"FormCategory","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/forms
/// 
class PcoPeopleForm extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'Form';
  static const String typeId = 'form';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'form-organization-forms';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/forms';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kDescription = 'description';
  static const kActive = 'active';
  static const kArchivedAt = 'archived_at';
  static const kDeletedAt = 'deleted_at';
  static const kSubmissionCount = 'submission_count';
  static const kPublicUrl = 'public_url';
  static const kRecentlyViewed = 'recently_viewed';
  static const kArchived = 'archived';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';
  String get description => attributes[kDescription] ?? '';
  bool get isActive => attributes[kActive] == true;
  DateTime get archivedAt => DateTime.parse(attributes[kArchivedAt] ?? '');
  DateTime get deletedAt => DateTime.parse(attributes[kDeletedAt] ?? '');
  int get submissionCount => attributes[kSubmissionCount] ?? 0;
  String get publicUrl => attributes[kPublicUrl] ?? '';
  bool get isRecentlyViewed => attributes[kRecentlyViewed] == true;
  bool get isArchived => attributes[kArchived] == true;




  PcoPeopleForm() : super(pcoApplication, typeString);
  PcoPeopleForm.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleForm Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms;
  static Future<List<PcoPeopleForm>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleForm> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/forms';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleForm.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleForm Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms;
  static Future<PcoPeopleForm?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleForm?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/forms' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleForm.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleCampu objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/campus
Future<List<PcoPeopleCampu>> getCampus({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleCampu> retval = [];
  var url = '$apiEndpoint/campus';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleCampu.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleFormField objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/fields
Future<List<PcoPeopleFormField>> getFormFieldsFields({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleFormField> retval = [];
  var url = '$apiEndpoint/fields';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFormField.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleFormSubmission objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions
Future<List<PcoPeopleFormSubmission>> getFormSubmissions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleFormSubmission> retval = [];
  var url = '$apiEndpoint/form_submissions';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFormSubmission.fromJson(itemData));
    }
  }
  return retval;
}
    

}
