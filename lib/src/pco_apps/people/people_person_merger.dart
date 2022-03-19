/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T13:06:05.320364
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO People PersonMerger Object
///
/// - Application:        people
/// - Id:                 person_merger
/// - Type:               PersonMerger
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/person_mergers
/// - Create Endpoint:    NONE
///
/// ## Description
/// A Person Merger is the history of profiles that were merged into other profiles.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `personToKeepId` (ro) -> PCO: `person_to_keep_id`
/// - `personToRemoveId` (ro) -> PCO: `person_to_remove_id`
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
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `person_to_keep_id`: (URLParameter), query on a specific person_to_keep_id, example: ?where[person_to_keep_id]=primary_key
/// - `person_to_remove_id`: (URLParameter), query on a specific person_to_remove_id, example: ?where[person_to_remove_id]=primary_key
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `personmerger-organization-person_mergers`: https://api.planningcenteronline.com/people/v2/person_mergers
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PersonMerger",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "person_to_keep_id": "primary_key",
///     "person_to_remove_id": "primary_key"
///   },
///   "relationships": {
///     "person_to_keep": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "person_to_remove": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeoplePersonMerger extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PersonMerger';
  static const String kTypeId = 'person_merger';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/person_mergers';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `person_to_keep_id`: (URLParameter), query on a specific person_to_keep_id, example: ?where[person_to_keep_id]=primary_key
  /// - `person_to_remove_id`: (URLParameter), query on a specific person_to_remove_id, example: ?where[person_to_remove_id]=primary_key
  static List<String> get canQuery =>
      ['created_at', 'person_to_keep_id', 'person_to_remove_id'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static List<String> get canOrderBy => ['created_at'];

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
  static const kCreatedAt = 'created_at';
  static const kPersonToKeepId = 'person_to_keep_id';
  static const kPersonToRemoveId = 'person_to_remove_id';

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
  String get personToKeepId => attributes[kPersonToKeepId] ?? '';
  String get personToRemoveId => attributes[kPersonToRemoveId] ?? '';

  // Class Constructors
  PcoPeoplePersonMerger.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeoplePersonMerger.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoPeoplePersonMerger] objects (expecting many)
  /// using a path like this: `/people/v2/person_mergers`
  static Future<PcoCollection<PcoPeoplePersonMerger>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePersonMerger.canInclude;
    var url = '/people/v2/person_mergers';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePersonMerger>(url,
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
