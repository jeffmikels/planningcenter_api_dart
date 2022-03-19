/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T13:06:05.540852
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Groups Organization Object
///
/// - Application:        groups
/// - Id:                 organization
/// - Type:               Organization
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2
/// - Create Endpoint:    NONE
///
/// ## Description
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
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
/// - `event-organization-events`: https://api.planningcenteronline.com/groups/v2/events
/// - `grouptype-organization-group_types`: https://api.planningcenteronline.com/groups/v2/group_types
/// - `group-organization-groups`: https://api.planningcenteronline.com/groups/v2/groups
/// - `person-organization-people`: https://api.planningcenteronline.com/groups/v2/people
/// - `taggroup-organization-tag_groups`: https://api.planningcenteronline.com/groups/v2/tag_groups
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
///   "type": "Organization",
///   "id": "1",
///   "attributes": {
///     "name": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoGroupsOrganization extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/groups/v2';
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
  static const kName = 'name';

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

  // Class Constructors
  PcoGroupsOrganization.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoGroupsOrganization.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/events`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `group`
  /// filter events from specific groups; provide an additional `group_id` param
  /// as a comma-separated list of IDs, ex: `?filter=group&group_id=1,2,3`
  ///
  /// - `group_type`
  /// filter events from specific group types; provide an additional `group_type_id` param
  /// as a comma-separated list of IDs, ex: `?filter=group_type&group_type_id=1,2,3`
  ///
  /// - `not_canceled`
  /// - `upcoming`
  Future<PcoCollection<PcoGroupsEvent>> getEvents(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsGroupType] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/group_types`
  ///
  /// Available Query Filters:
  /// - `church_center_visible`
  /// - `not_church_center_visible`
  Future<PcoCollection<PcoGroupsGroupType>> getGroupTypes(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroupType.canInclude;
    var url = '$apiEndpoint/group_types';
    return PcoCollection.fromApiCall<PcoGroupsGroupType>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups`
  Future<PcoCollection<PcoGroupsGroup>> getGroups(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '$apiEndpoint/groups';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/people`
  Future<PcoCollection<PcoGroupsPerson>> getPeople(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsTagGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/tag_groups`
  ///
  /// Available Query Filters:
  /// - `public`
  /// Filter tag groups that are visible on public pages
  ///
  Future<PcoCollection<PcoGroupsTagGroup>> getTagGroups(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsTagGroup.canInclude;
    var url = '$apiEndpoint/tag_groups';
    return PcoCollection.fromApiCall<PcoGroupsTagGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
