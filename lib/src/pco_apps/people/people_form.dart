/// This file was generated on 2022-03-04T15:29:14.430053


import '../../pco.dart';

/// This class represents a PCO People Form Object
/// 
/// - Application:        people
/// - Id:                 form
/// - Type:               Form
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/forms
/// 
/// Description:
/// A custom form for people to fill out.
/// 
/// Example:
/// ```json
/// {
///   "type": "Form",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "description": "string",
///     "active": true,
///     "archived_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "deleted_at": "2000-01-01T12:00:00Z",
///     "submission_count": 1,
///     "public_url": "string",
///     "recently_viewed": true,
///     "archived": true
///   },
///   "relationships": {
///     "campus": {
///       "data": {
///         "type": "Campus",
///         "id": "1"
///       }
///     },
///     "form_category": {
///       "data": {
///         "type": "FormCategory",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - campus: include associated campus 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `active`: (URLParameter), query on a specific active, example: ?where[active]=true
/// 
/// Possible orderings with parameter ?order=
/// - `active`: (URLParameter), prefix with a hyphen (-active) to reverse the order
/// - `archived_at`: (URLParameter), prefix with a hyphen (-archived_at) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `deleted_at`: (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
/// - `description`: (URLParameter), prefix with a hyphen (-description) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `campus-form-campus`: https://api.planningcenteronline.com/people/v2/forms/1/campus
/// - `formfield-form-fields`: https://api.planningcenteronline.com/people/v2/forms/1/fields
/// - `formsubmission-form-form_submissions`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions
/// 
/// All Inbound Edges:
/// - `form-organization-forms`: https://api.planningcenteronline.com/people/v2/forms
/// 
/// All Actions:
/// NONE
///
class PcoPeopleForm extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Form';
  static const String kTypeId = 'form';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'form-organization-forms';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/forms';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/forms';

  /// possible includes with parameter ?include=a,b
  /// - `campus`: include associated campus 
  static List<String> get canInclude => ['campus'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `active`: (URLParameter), query on a specific active, example: ?where[active]=true
  static List<String> get canQuery => ['active'];

  /// possible orderings with parameter ?order=
  /// - `active`: (URLParameter), prefix with a hyphen (-active) to reverse the order
  /// - `archived_at`: (URLParameter), prefix with a hyphen (-archived_at) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `deleted_at`: (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
  /// - `description`: (URLParameter), prefix with a hyphen (-description) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['active','archived_at','created_at','deleted_at','description','name','updated_at'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kId = 'id';
  static const kName = 'name';
  static const kDescription = 'description';
  static const kActive = 'active';
  static const kArchivedAt = 'archived_at';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
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

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes

  String get name => attributes[kName] ?? '';
  String get description => attributes[kDescription] ?? '';
  bool get isActive => attributes[kActive] == true;
  DateTime get archivedAt => DateTime.parse(attributes[kArchivedAt] ?? '');
  DateTime get deletedAt => DateTime.parse(attributes[kDeletedAt] ?? '');
  int get submissionCount => attributes[kSubmissionCount] ?? 0;
  String get publicUrl => attributes[kPublicUrl] ?? '';
  bool get isRecentlyViewed => attributes[kRecentlyViewed] == true;
  bool get isArchived => attributes[kArchived] == true;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleForm() : super(kPcoApplication, kTypeString);
  PcoPeopleForm.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleForm] objects (expecting many)
  /// using a path like this: `/people/v2/forms`
  /// 
  /// Available Query Filters:
  /// - `archived`
  /// - `closed`
  /// - `not_archived`
  /// - `open`
  /// - `recently_viewed`
  /// - `with_recoverable`
  static Future<PcoCollection<PcoPeopleForm>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleForm.canInclude;
    var url = '/people/v2/forms';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleForm>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleCampus] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/campus`
  Future<PcoCollection<PcoPeopleCampus>> getCampus({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    var url = '$apiEndpoint/campus';
    return PcoCollection.fromApiCall<PcoPeopleCampus>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFormField] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/fields`
  Future<PcoCollection<PcoPeopleFormField>> getFields({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFormField.canInclude;
    var url = '$apiEndpoint/fields';
    return PcoCollection.fromApiCall<PcoPeopleFormField>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFormSubmission] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/form_submissions`
  Future<PcoCollection<PcoPeopleFormSubmission>> getFormSubmissions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFormSubmission.canInclude;
    var url = '$apiEndpoint/form_submissions';
    return PcoCollection.fromApiCall<PcoPeopleFormSubmission>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
