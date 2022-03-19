/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T13:06:04.902480
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Services Tag Object
///
/// - Application:        services
/// - Id:                 tag
/// - Type:               Tag
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/media/1/tags
/// - Create Endpoint:    NONE
///
/// ## Description
/// A tag belonging to a tag group.
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
/// NONE
///
/// Inbound Edges:
/// - `tag-arrangement-tags`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/tags
/// - `tag-media-tags`: https://api.planningcenteronline.com/services/v2/media/1/tags
/// - `tag-person-tags`: https://api.planningcenteronline.com/services/v2/people/1/tags
/// - `tag-song-tags`: https://api.planningcenteronline.com/services/v2/songs/1/tags
/// - `tag-taggroup-tags`: https://api.planningcenteronline.com/services/v2/tag_groups/1/tags
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
///     "name": "string"
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
class PcoServicesTag extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Tag';
  static const String kTypeId = 'tag';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/media/1/tags';
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
  PcoServicesTag.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesTag.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/arrangements/$arrangementId/tags`
  static Future<PcoCollection<PcoServicesTag>> getFromSongAndArrangement(
      String songId, String arrangementId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `/services/v2/media/$mediaId/tags`
  static Future<PcoCollection<PcoServicesTag>> getFromMedia(String mediaId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '/services/v2/media/$mediaId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `/services/v2/people/$peopleId/tags`
  static Future<PcoCollection<PcoServicesTag>> getFromPeople(String peopleId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '/services/v2/people/$peopleId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/tags`
  static Future<PcoCollection<PcoServicesTag>> getFromSong(String songId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '/services/v2/songs/$songId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `/services/v2/tag_groups/$tagGroupId/tags`
  static Future<PcoCollection<PcoServicesTag>> getFromTagGroup(
      String tagGroupId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '/services/v2/tag_groups/$tagGroupId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTag>(url,
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
