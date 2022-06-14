/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:15.040361
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People WorkflowShare Object
///
/// - Application:        people
/// - Id:                 workflow_share
/// - Type:               WorkflowShare
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/workflow_shares
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/workflows/1/shares
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleWorkflowShare()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleWorkflowShare.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
/// ## Description
/// A workflow share defines who can access a workflow.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `group` (rw) -> PCO: `group`
/// - `permission` (rw) -> PCO: `permission`
/// - `personId` (rw) -> PCO: `person_id`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `person`: include associated person
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `permission`: (URLParameter), query on a specific permission, example: ?where[permission]=value
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
/// - `person-workflowshare-person`: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares/1/person
///
/// Inbound Edges:
/// - `workflowshare-person-workflow_shares`: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares
/// - `workflowshare-workflow-shares`: https://api.planningcenteronline.com/people/v2/workflows/1/shares
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "WorkflowShare",
///   "id": "1",
///   "attributes": {
///     "group": "value",
///     "permission": "value",
///     "person_id": "primary_key"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "workflow": {
///       "data": {
///         "type": "Workflow",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleWorkflowShare extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowShare';
  static const String kTypeId = 'workflow_share';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/workflow_shares';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/workflows/1/shares';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `permission`: (URLParameter), query on a specific permission, example: ?where[permission]=value
  static List<String> get canQuery => ['permission'];

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
  static const kGroup = 'group';
  static const kPermission = 'permission';
  static const kPersonId = 'person_id';

  // getters and setters
  @override
  List<String> get createAllowed => ['group', 'permission', 'person_id'];

  @override
  List<String> get updateAllowed => ['group', 'permission'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get group => _attributes[kGroup] ?? '';
  String get permission => _attributes[kPermission] ?? '';
  String get personId => _attributes[kPersonId] ?? '';

  // setters for object attributes

  /// Possible values: `No Access`, `Viewer`, `Editor`, or `Manager`

  /// pass `null` to remove key from attributes
  set group(String? x) =>
      (x == null) ? _attributes.remove(kGroup) : _attributes[kGroup] = x;

  /// Possible values: `view`, `manage_cards`, or `manage`

  /// pass `null` to remove key from attributes
  set permission(String? x) => (x == null)
      ? _attributes.remove(kPermission)
      : _attributes[kPermission] = x;

  /// pass `null` to remove key from attributes
  set personId(String? x) =>
      (x == null) ? _attributes.remove(kPersonId) : _attributes[kPersonId] = x;

  // typed getters for each relationship

  List<PcoPeoplePerson> get includedPerson =>
      (relationships['person'] as List?)?.cast<PcoPeoplePerson>() ?? [];

  // Class Constructors
  PcoPeopleWorkflowShare.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleWorkflowShare.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleWorkflowShare] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/workflows/$workflowId/shares`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleWorkflowShare(String workflowId,
      {String? group, String? permission, String? personId}) {
    var obj = PcoPeopleWorkflowShare.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/workflows/$workflowId/shares';
    if (group != null) obj.group = group;
    if (permission != null) obj.permission = permission;
    if (personId != null) obj.personId = personId;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeopleWorkflowShare] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/workflow_shares`
  static Future<PcoCollection<PcoPeopleWorkflowShare>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePerson) query.include.add('person');
    var url = '/people/v2/people/$personId/workflow_shares';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowShare] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/$workflowId/shares`
  static Future<PcoCollection<PcoPeopleWorkflowShare>> getSharesFromWorkflow(
    String workflowId, {
    PlanningCenterApiQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePerson) query.include.add('person');
    var url = '/people/v2/workflows/$workflowId/shares';

    return PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_shares/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleWorkflowShare.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }
}
