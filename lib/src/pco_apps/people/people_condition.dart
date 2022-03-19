/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T09:51:55.351446
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO People Condition Object
///
/// - Application:        people
/// - Id:                 condition
/// - Type:               Condition
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions
/// - Create Endpoint:    NONE
///
/// ## Description
/// A condition is an individual criterion used by a List Rule.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `application` (ro) -> PCO: `application`
/// - `definitionClass` (ro) -> PCO: `definition_class`
/// - `comparison` (ro) -> PCO: `comparison`
/// - `settings` (ro) -> PCO: `settings`
/// - `definitionIdentifier` (ro) -> PCO: `definition_identifier`
/// - `description` (ro) -> PCO: `description`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `created_by`: include associated created_by
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `application`: (URLParameter), query on a specific application, example: ?where[application]=string
/// - `comparison`: (URLParameter), query on a specific comparison, example: ?where[comparison]=string
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `definition_class`: (URLParameter), query on a specific definition_class, example: ?where[definition_class]=string
/// - `definition_identifier`: (URLParameter), query on a specific definition_identifier, example: ?where[definition_identifier]=string
/// - `description`: (URLParameter), query on a specific description, example: ?where[description]=string
/// - `settings`: (URLParameter), query on a specific settings, example: ?where[settings]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `application`: (URLParameter), prefix with a hyphen (-application) to reverse the order
/// - `comparison`: (URLParameter), prefix with a hyphen (-comparison) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `definition_class`: (URLParameter), prefix with a hyphen (-definition_class) to reverse the order
/// - `definition_identifier`: (URLParameter), prefix with a hyphen (-definition_identifier) to reverse the order
/// - `description`: (URLParameter), prefix with a hyphen (-description) to reverse the order
/// - `settings`: (URLParameter), prefix with a hyphen (-settings) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-condition-created_by`: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions/1/created_by
///
/// Inbound Edges:
/// - `condition-rule-conditions`: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Condition",
///   "id": "1",
///   "attributes": {
///     "application": "string",
///     "definition_class": "string",
///     "comparison": "string",
///     "settings": "string",
///     "definition_identifier": "string",
///     "description": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleCondition extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Condition';
  static const String kTypeId = 'condition';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `created_by`: include associated created_by
  static List<String> get canInclude => ['created_by'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `application`: (URLParameter), query on a specific application, example: ?where[application]=string
  /// - `comparison`: (URLParameter), query on a specific comparison, example: ?where[comparison]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `definition_class`: (URLParameter), query on a specific definition_class, example: ?where[definition_class]=string
  /// - `definition_identifier`: (URLParameter), query on a specific definition_identifier, example: ?where[definition_identifier]=string
  /// - `description`: (URLParameter), query on a specific description, example: ?where[description]=string
  /// - `settings`: (URLParameter), query on a specific settings, example: ?where[settings]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => [
        'application',
        'comparison',
        'created_at',
        'definition_class',
        'definition_identifier',
        'description',
        'settings',
        'updated_at'
      ];

  /// possible orderings with parameter ?order=
  /// - `application`: (URLParameter), prefix with a hyphen (-application) to reverse the order
  /// - `comparison`: (URLParameter), prefix with a hyphen (-comparison) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `definition_class`: (URLParameter), prefix with a hyphen (-definition_class) to reverse the order
  /// - `definition_identifier`: (URLParameter), prefix with a hyphen (-definition_identifier) to reverse the order
  /// - `description`: (URLParameter), prefix with a hyphen (-description) to reverse the order
  /// - `settings`: (URLParameter), prefix with a hyphen (-settings) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => [
        'application',
        'comparison',
        'created_at',
        'definition_class',
        'definition_identifier',
        'description',
        'settings',
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
  static const kApplication = 'application';
  static const kDefinitionClass = 'definition_class';
  static const kComparison = 'comparison';
  static const kSettings = 'settings';
  static const kDefinitionIdentifier = 'definition_identifier';
  static const kDescription = 'description';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';

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
  String get application => attributes[kApplication] ?? '';
  String get definitionClass => attributes[kDefinitionClass] ?? '';
  String get comparison => attributes[kComparison] ?? '';
  String get settings => attributes[kSettings] ?? '';
  String get definitionIdentifier => attributes[kDefinitionIdentifier] ?? '';
  String get description => attributes[kDescription] ?? '';

  // Class Constructors
  PcoPeopleCondition.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleCondition.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoPeopleCondition] objects (expecting many)
  /// using a path like this: `/people/v2/lists/$listId/rules/$ruleId/conditions`
  static Future<PcoCollection<PcoPeopleCondition>> getFromListAndRule(
      String listId, String ruleId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCondition.canInclude;
    var url = '/people/v2/lists/$listId/rules/$ruleId/conditions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleCondition>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions/1/created_by`
  Future<PcoCollection<PcoPeoplePerson>> getCreatedBy(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/created_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
