/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T09:51:55.059692
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Services PlanTemplate Object
///
/// - Application:        services
/// - Id:                 plan_template
/// - Type:               PlanTemplate
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates
/// - Create Endpoint:    NONE
///
/// ## Description
/// A PlanTemplate Resource
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `itemCount` (ro) -> PCO: `item_count`
/// - `teamCount` (ro) -> PCO: `team_count`
/// - `noteCount` (ro) -> PCO: `note_count`
/// - `isCanViewOrder` (ro) -> PCO: `can_view_order`
/// - `isMultiDay` (ro) -> PCO: `multi_day`
/// - `isPrefersOrderView` (ro) -> PCO: `prefers_order_view`
/// - `isRehearsable` (ro) -> PCO: `rehearsable`
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
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `item_count`: (URLParameter), prefix with a hyphen (-item_count) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `note_count`: (URLParameter), prefix with a hyphen (-note_count) to reverse the order
/// - `team_count`: (URLParameter), prefix with a hyphen (-team_count) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `item-plantemplate-items`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/items
/// - `plannote-plantemplate-notes`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes
///
/// Inbound Edges:
/// - `plantemplate-servicetype-plan_templates`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates
///
/// Actions:
/// - `item_reorder`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/item_reorder
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PlanTemplate",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "item_count": 1,
///     "team_count": 1,
///     "note_count": 1,
///     "can_view_order": true,
///     "multi_day": true,
///     "prefers_order_view": true,
///     "rehearsable": true
///   },
///   "relationships": {
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     },
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "updated_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesPlanTemplate extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PlanTemplate';
  static const String kTypeId = 'plan_template';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `item_count`: (URLParameter), prefix with a hyphen (-item_count) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `note_count`: (URLParameter), prefix with a hyphen (-note_count) to reverse the order
  /// - `team_count`: (URLParameter), prefix with a hyphen (-team_count) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => [
        'created_at',
        'item_count',
        'name',
        'note_count',
        'team_count',
        'updated_at'
      ];

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
  static const kName = 'name';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kItemCount = 'item_count';
  static const kTeamCount = 'team_count';
  static const kNoteCount = 'note_count';
  static const kCanViewOrder = 'can_view_order';
  static const kMultiDay = 'multi_day';
  static const kPrefersOrderView = 'prefers_order_view';
  static const kRehearsable = 'rehearsable';

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
  int get itemCount => attributes[kItemCount] ?? 0;
  int get teamCount => attributes[kTeamCount] ?? 0;
  int get noteCount => attributes[kNoteCount] ?? 0;
  bool get isCanViewOrder => attributes[kCanViewOrder] == true;
  bool get isMultiDay => attributes[kMultiDay] == true;
  bool get isPrefersOrderView => attributes[kPrefersOrderView] == true;
  bool get isRehearsable => attributes[kRehearsable] == true;

  // Class Constructors
  PcoServicesPlanTemplate.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesPlanTemplate.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesPlanTemplate] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plan_templates`
  static Future<PcoCollection<PcoServicesPlanTemplate>> getFromServiceType(
      String serviceTypeId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanTemplate.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPlanTemplate>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/items`
  Future<PcoCollection<PcoServicesItem>> getItems(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    var url = '$apiEndpoint/items';
    return PcoCollection.fromApiCall<PcoServicesItem>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes`
  Future<PcoCollection<PcoServicesPlanNote>> getNotes(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanNote.canInclude;
    var url = '$apiEndpoint/notes';
    return PcoCollection.fromApiCall<PcoServicesPlanNote>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `item_reorder`
  ///
  /// Reorder plan template items in one request.
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/item_reorder`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PcoData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// This can be used to reorder all items in a plan template in one request.
  ///
  /// It expects a `POST` body with a `sequence` of `Item` ids in order.  E.G.
  ///
  /// ```json
  /// {
  ///   "data": {
  ///     "type": "PlanItemReorder",
  ///     "attributes": {
  ///       "sequence": [
  ///         "5",
  ///         "1",
  ///         "3"
  ///       ]
  ///     }
  ///   }
  /// }
  /// ```
  ///
  /// On success you will get back a `204 No Content`.
  Future<PlanningCenterApiResponse> itemReorder(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/item_reorder';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }
}
