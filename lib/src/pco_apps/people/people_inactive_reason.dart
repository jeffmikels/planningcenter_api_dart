/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.730671
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


import '../../pco.dart';

/// This class represents a PCO People InactiveReason Object
/// 
/// - Application:        people
/// - Id:                 inactive_reason
/// - Type:               InactiveReason
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/inactive_reasons
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/inactive_reasons
/// 
/// ## Description
/// An inactive reason is a small bit of text indicating why a member is no longer active.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `value` (rw) -> PCO: `value`
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
/// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// NONE
/// 
/// Inbound Edges:
/// - `inactivereason-organization-inactive_reasons`: https://api.planningcenteronline.com/people/v2/inactive_reasons
/// - `inactivereason-person-inactive_reason`: https://api.planningcenteronline.com/people/v2/people/1/inactive_reason
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "InactiveReason",
///   "id": "1",
///   "attributes": {
///     "value": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeopleInactiveReason extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'InactiveReason';
  static const String kTypeId = 'inactive_reason';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/inactive_reasons';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/people/v2/inactive_reasons';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
  static List<String> get canQuery => ['value'];

  /// possible orderings with parameter ?order=
  /// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
  static List<String> get canOrderBy => ['value'];

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
  static const kValue = 'value';


  // getters and setters
  @override
  List<String> get createAllowed => ['value'];

  @override
  List<String> get updateAllowed => ['value'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get value => attributes[kValue] ?? '';  
  
  // setters for object attributes
  
  /// pass `null` to remove key from attributes
  set value(String? x) => (x == null) ? attributes.remove(kValue) : attributes[kValue] = x;  


  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships
  
  




  // Class Constructors
  PcoPeopleInactiveReason.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoPeopleInactiveReason.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleInactiveReason] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/inactive_reasons`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleInactiveReason({ String? value }) {
    var obj = PcoPeopleInactiveReason.empty();
    obj._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/inactive_reasons';
    if (value != null) obj.value = value;
    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleInactiveReason] objects (expecting many)
  /// using a path like this: `/people/v2/inactive_reasons`
  static Future<PcoCollection<PcoPeopleInactiveReason>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleInactiveReason.canInclude;
    var url = '/people/v2/inactive_reasons';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleInactiveReason>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleInactiveReason] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/inactive_reason`
  static Future<PcoCollection<PcoPeopleInactiveReason>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleInactiveReason.canInclude;
    var url = '/people/v2/people/$peopleId/inactive_reason';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleInactiveReason>(url, query: query, apiVersion:kApiVersion);
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
