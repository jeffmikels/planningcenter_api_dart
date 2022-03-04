/// This file was generated on 2022-03-04T15:29:14.034815


import '../../pco.dart';

/// This class represents a PCO Services EmailTemplate Object
/// 
/// - Application:        services
/// - Id:                 email_template
/// - Type:               EmailTemplate
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/email_templates
/// 
/// Description:
/// A EmailTemplate Resource
/// 
/// Example:
/// ```json
/// {
///   "type": "EmailTemplate",
///   "id": "1",
///   "attributes": {
///     "kind": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "html_body": "string",
///     "subject": "string"
///   },
///   "relationships": {
///     "template_owner": {
///       "data": {
///         "type": "Organization",
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
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `emailtemplate-organization-email_templates`: https://api.planningcenteronline.com/services/v2/email_templates
/// 
/// All Actions:
/// - `render`: https://api.planningcenteronline.com/services/v2/email_templates/1/render
///
class PcoServicesEmailTemplate extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'EmailTemplate';
  static const String kTypeId = 'email_template';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'emailtemplate-organization-email_templates';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/email_templates';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/email_templates';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

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
  static const kKind = 'kind';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kHtmlBody = 'html_body';
  static const kSubject = 'subject';


  // getters and setters
  @override
  List<String> get createAllowed => ['html_body','subject','kind'];

  @override
  List<String> get updateAllowed => ['html_body','subject'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get kind => attributes[kKind] ?? '';
  String get htmlBody => attributes[kHtmlBody] ?? '';
  String get subject => attributes[kSubject] ?? '';
  

  // setters for object attributes

  set kind(String s) => attributes[kKind] = s;
  set htmlBody(String s) => attributes[kHtmlBody] = s;
  set subject(String s) => attributes[kSubject] = s;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesEmailTemplate() : super(kPcoApplication, kTypeString);
  PcoServicesEmailTemplate.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesEmailTemplate] objects (expecting many)
  /// using a path like this: `/services/v2/email_templates`
  static Future<PcoCollection<PcoServicesEmailTemplate>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesEmailTemplate.canInclude;
    var url = '/services/v2/email_templates';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesEmailTemplate>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `render`
  /// 
  /// Render an email template and fill in the persons details
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/email_templates/1/render`
  /// 
  /// Details:
  /// Render the template with information from the person.
  /// 
  /// ```json
  /// {
  ///   "data": {
  ///     "attributes": {
  ///       "format": "html|text"
  ///     },
  ///     "relationships": {
  ///       "person": {
  ///         "data": {
  ///           "type": "Person",
  ///           "id": "1"
  ///         }
  ///       }
  ///     }
  ///   }
  /// }
  /// ```
  Future<PlanningCenterApiResponse> render(Map<String, dynamic> data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/render';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }


}
