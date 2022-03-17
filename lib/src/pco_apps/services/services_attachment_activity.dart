/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T16:19:09.476635
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services AttachmentActivity Object
/// 
/// - Application:        services
/// - Id:                 attachment_activity
/// - Type:               AttachmentActivity
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2
/// 
/// ## Description
/// Returned from the `open` attachment action.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `date` (ro) -> PCO: `date`
/// - `attachmentUrl` (ro) -> PCO: `attachment_url`
/// - `activityType` (ro) -> PCO: `activity_type`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// NONE
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// NONE
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// NONE
/// 
/// Inbound Edges:
/// NONE
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "AttachmentActivity",
///   "id": "1",
///   "attributes": {
///     "date": "2000-01-01",
///     "attachment_url": "string",
///     "activity_type": "string"
///   },
///   "relationships": {
///     "attachment": {
///       "data": {
///         "type": "Attachment",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesAttachmentActivity extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'AttachmentActivity';
  static const String kTypeId = 'attachment_activity';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2';

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

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kDate = 'date';
  static const kAttachmentUrl = 'attachment_url';
  static const kActivityType = 'activity_type';


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

  String get date => attributes[kDate] ?? '';
  String get attachmentUrl => attributes[kAttachmentUrl] ?? '';
  String get activityType => attributes[kActivityType] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesAttachmentActivity._() : super(kPcoApplication, kTypeString);
  PcoServicesAttachmentActivity.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
