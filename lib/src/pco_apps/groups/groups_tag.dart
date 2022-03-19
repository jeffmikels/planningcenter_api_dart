/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T13:06:05.546907
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Groups Tag Object
///
/// - Application:        groups
/// - Id:                 tag
/// - Type:               Tag
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/tags
/// - Create Endpoint:    NONE
///
/// ## Description
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
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
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
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
/// - `group-tag-groups`: https://api.planningcenteronline.com/groups/v2/tags/1/groups
///
/// Inbound Edges:
/// - `tag-group-tags`: https://api.planningcenteronline.com/groups/v2/groups/1/tags
/// - `tag-taggroup-tags`: https://api.planningcenteronline.com/groups/v2/tag_groups/1/tags
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Tag",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "position": 1
///   },
///   "relationships": {
///     "tag_group": {
///       "data": {
///         "type": "TagGroup",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoGroupsTag extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Tag';
  static const String kTypeId = 'tag';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/groups/v2/tags';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['id', 'name'];

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
  String get name => attributes[kName] ?? '';
  int get position => attributes[kPosition] ?? 0;

  // Class Constructors
  PcoGroupsTag.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoGroupsTag.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoGroupsTag] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/tags`
  static Future<PcoCollection<PcoGroupsTag>> getFromGroup(String groupId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsTag.canInclude;
    var url = '/groups/v2/groups/$groupId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGroupsTag] objects (expecting many)
  /// using a path like this: `/groups/v2/tag_groups/$tagGroupId/tags`
  static Future<PcoCollection<PcoGroupsTag>> getFromTagGroup(String tagGroupId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsTag.canInclude;
    var url = '/groups/v2/tag_groups/$tagGroupId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/tags/1/groups`
  Future<PcoCollection<PcoGroupsGroup>> getGroups(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '$apiEndpoint/groups';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
