/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T13:06:05.549198
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Groups TagGroup Object
///
/// - Application:        groups
/// - Id:                 tag_group
/// - Type:               TagGroup
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/tag_groups
/// - Create Endpoint:    NONE
///
/// ## Description
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `isDisplayPublicly` (ro) -> PCO: `display_publicly`
/// - `isMultipleOptionsEnabled` (ro) -> PCO: `multiple_options_enabled`
/// - `name` (ro) -> PCO: `name`
/// - `position` (ro) -> PCO: `position`
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
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `position`: (URLParameter), prefix with a hyphen (-position) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `tag-taggroup-tags`: https://api.planningcenteronline.com/groups/v2/tag_groups/1/tags
///
/// Inbound Edges:
/// - `taggroup-organization-tag_groups`: https://api.planningcenteronline.com/groups/v2/tag_groups
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "TagGroup",
///   "id": "1",
///   "attributes": {
///     "display_publicly": true,
///     "multiple_options_enabled": true,
///     "name": "string",
///     "position": 1
///   },
///   "relationships": {}
/// }
/// ```
class PcoGroupsTagGroup extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'TagGroup';
  static const String kTypeId = 'tag_group';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/groups/v2/tag_groups';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['name'];

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `position`: (URLParameter), prefix with a hyphen (-position) to reverse the order
  static List<String> get canOrderBy => ['name', 'position'];

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
  static const kDisplayPublicly = 'display_publicly';
  static const kMultipleOptionsEnabled = 'multiple_options_enabled';
  static const kName = 'name';
  static const kPosition = 'position';

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
  bool get isDisplayPublicly => attributes[kDisplayPublicly] == true;
  bool get isMultipleOptionsEnabled =>
      attributes[kMultipleOptionsEnabled] == true;
  String get name => attributes[kName] ?? '';
  int get position => attributes[kPosition] ?? 0;

  // Class Constructors
  PcoGroupsTagGroup.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoGroupsTagGroup.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoGroupsTagGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/tag_groups`
  ///
  /// Available Query Filters:
  /// - `public`
  /// Filter tag groups that are visible on public pages
  ///
  static Future<PcoCollection<PcoGroupsTagGroup>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsTagGroup.canInclude;
    var url = '/groups/v2/tag_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsTagGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/tag_groups/1/tags`
  Future<PcoCollection<PcoGroupsTag>> getTags(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsTag.canInclude;
    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoGroupsTag>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
