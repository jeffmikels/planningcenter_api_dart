/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T08:59:04.969611
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services CustomSlide Object
/// 
/// - Application:        services
/// - Id:                 custom_slide
/// - Type:               CustomSlide
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/custom_slides
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/custom_slides
/// 
/// ## Description
/// A CustomSlide is used for adding text intended for display on a screen.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `body` (rw) -> PCO: `body`
/// - `label` (rw) -> PCO: `label`
/// - `order` (rw) -> PCO: `order`
/// - `isEnabled` (rw) -> PCO: `enabled`
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
/// - `customslide-item-custom_slides`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/custom_slides
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "CustomSlide",
///   "id": "1",
///   "attributes": {
///     "body": "string",
///     "label": "string",
///     "order": 1,
///     "enabled": true
///   },
///   "relationships": {
///     "item": {
///       "data": {
///         "type": "Item",
///         "id": "1"
///       }
///     },
///     "attachment": {
///       "data": {
///         "type": "Attachment",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesCustomSlide extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'CustomSlide';
  static const String kTypeId = 'custom_slide';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/custom_slides';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/custom_slides';

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
  String get createPathTemplate => kCreatePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kBody = 'body';
  static const kLabel = 'label';
  static const kOrder = 'order';
  static const kEnabled = 'enabled';


  // getters and setters
  @override
  List<String> get createAllowed => ['body', 'enabled', 'label', 'order'];

  @override
  List<String> get updateAllowed => ['body', 'enabled', 'label', 'order'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get body => attributes[kBody] ?? '';
  String get label => attributes[kLabel] ?? '';
  int get order => attributes[kOrder] ?? 0;
  bool get isEnabled => attributes[kEnabled] == true;  
  
  // setters for object attributes
  
  /// pass `null` to remove key from attributes
  set body(String? x) => (x == null) ? attributes.remove(kBody) : attributes[kBody] = x;
  
  /// pass `null` to remove key from attributes
  set label(String? x) => (x == null) ? attributes.remove(kLabel) : attributes[kLabel] = x;
  
  /// pass `null` to remove key from attributes
  set order(int? x) => (x == null) ? attributes.remove(kOrder) : attributes[kOrder] = x;
  
  /// pass `null` to remove key from attributes
  set isEnabled(bool? x) => (x == null) ? attributes.remove(kEnabled) : attributes[kEnabled] = x;  

  // Class Constructors
  PcoServicesCustomSlide.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoServicesCustomSlide.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesCustomSlide] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/custom_slides`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesCustomSlide(String serviceTypeId, String planId, String itemId, { String? body, bool? isEnabled, String? label, int? order }) {
    var obj = PcoServicesCustomSlide.empty();
    obj._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/custom_slides';
    if (body != null) obj.body = body;
    if (isEnabled != null) obj.isEnabled = isEnabled;
    if (label != null) obj.label = label;
    if (order != null) obj.order = order;
    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesCustomSlide] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/custom_slides`
  static Future<PcoCollection<PcoServicesCustomSlide>> getFromServiceTypeAndPlanAndItem(String serviceTypeId,String planId,String itemId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesCustomSlide.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/custom_slides';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesCustomSlide>(url, query: query, apiVersion:kApiVersion);
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
