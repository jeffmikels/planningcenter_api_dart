/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T13:06:04.836334
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Services CcliReporting Object
///
/// - Application:        services
/// - Id:                 ccli_reporting
/// - Type:               CcliReporting
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/ccli_reporting
/// - Create Endpoint:    NONE
///
/// ## Description
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `digital` (ro) -> PCO: `digital`
/// - `print` (ro) -> PCO: `print`
/// - `recording` (ro) -> PCO: `recording`
/// - `translation` (ro) -> PCO: `translation`
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
/// - `cclireporting-item-ccli_reporting`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/ccli_reporting
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "CcliReporting",
///   "id": "1",
///   "attributes": {
///     "digital": 1,
///     "print": 1,
///     "recording": 1,
///     "translation": 1
///   },
///   "relationships": {
///     "item": {
///       "data": {
///         "type": "Item",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesCcliReporting extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'CcliReporting';
  static const String kTypeId = 'ccli_reporting';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/ccli_reporting';
  static const String kCreatePathTemplate = 'null';

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
  static const kDigital = 'digital';
  static const kPrint = 'print';
  static const kRecording = 'recording';
  static const kTranslation = 'translation';

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
  int get digital => attributes[kDigital] ?? 0;
  int get print => attributes[kPrint] ?? 0;
  int get recording => attributes[kRecording] ?? 0;
  int get translation => attributes[kTranslation] ?? 0;

  // Class Constructors
  PcoServicesCcliReporting.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesCcliReporting.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesCcliReporting] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/ccli_reporting`
  static Future<PcoCollection<PcoServicesCcliReporting>>
      getFromServiceTypeAndPlanAndItem(
          String serviceTypeId, String planId, String itemId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesCcliReporting.canInclude;
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/ccli_reporting';

    return PcoCollection.fromApiCall<PcoServicesCcliReporting>(url,
        query: query, apiVersion: kApiVersion);
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
