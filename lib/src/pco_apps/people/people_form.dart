/// This file was generated on 2021-11-19T12:10:42.507951


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
/// possible includes with parameter ?include=a,b
/// @campus: include associated campus 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @active (URLParameter), query on a specific active, example: ?where[active]=true
/// possible orderings with parameter ?order=
/// @active (URLParameter), prefix with a hyphen (-active) to reverse the order
/// @archived_at (URLParameter), prefix with a hyphen (-archived_at) to reverse the order
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @deleted_at (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
/// @description (URLParameter), prefix with a hyphen (-description) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeopleForm extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Form';
  static const String kTypeId = 'form';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'form-organization-forms';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/forms';

  /// possible includes with parameter ?include=a,b
  /// @campus: include associated campus 
  static List<String> get canInclude => ['campus'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @active (URLParameter), query on a specific active, example: ?where[active]=true
  static List<String> get canQuery => ['active'];

  /// possible orderings with parameter ?order=
  /// @active (URLParameter), prefix with a hyphen (-active) to reverse the order
  /// @archived_at (URLParameter), prefix with a hyphen (-archived_at) to reverse the order
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @deleted_at (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
  /// @description (URLParameter), prefix with a hyphen (-description) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['active','archived_at','created_at','deleted_at','description','name','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoPeopleForm() : super(kPcoApplication, kTypeString);
  PcoPeopleForm.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleForm Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms;
  static Future<List<PcoPeopleForm>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleForm> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleForm.canInclude;
    var url = '/people/v2/forms';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleForm.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleForm Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms;
  static Future<PcoPeopleForm?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleForm?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleForm.canInclude;
    var url = '/people/v2/forms' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleForm.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleCampus objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/campus
Future<List<PcoPeopleCampus>> getCampuses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleCampus.canInclude;
  List<PcoPeopleCampus> retval = [];
  var url = '$apiEndpoint/campus';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleCampus.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleFormField objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/fields
Future<List<PcoPeopleFormField>> getFormFieldsFields({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleFormField.canInclude;
  List<PcoPeopleFormField> retval = [];
  var url = '$apiEndpoint/fields';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFormField.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleFormSubmission objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions
Future<List<PcoPeopleFormSubmission>> getFormSubmissions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleFormSubmission.canInclude;
  List<PcoPeopleFormSubmission> retval = [];
  var url = '$apiEndpoint/form_submissions';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFormSubmission.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
