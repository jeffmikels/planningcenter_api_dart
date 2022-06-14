/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:15.041426
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People WorkflowStepAssigneeSummary Object
///
/// - Application:        people
/// - Id:                 workflow_step_assignee_summary
/// - Type:               WorkflowStepAssigneeSummary
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleWorkflowStepAssigneeSummary.fromJson()` constructor.
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
/// The ready and snoozed count for an assignee & step
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `readyCount` (ro) -> PCO: `ready_count`
/// - `snoozedCount` (ro) -> PCO: `snoozed_count`
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
/// - `person-workflowstepassigneesummary-person`: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person
///
/// Inbound Edges:
/// - `workflowstepassigneesummary-workflowstep-assignee_summaries`: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "WorkflowStepAssigneeSummary",
///   "id": "1",
///   "attributes": {
///     "ready_count": 1,
///     "snoozed_count": 1
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "step": {
///       "data": {
///         "type": "Step",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleWorkflowStepAssigneeSummary extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowStepAssigneeSummary';
  static const String kTypeId = 'workflow_step_assignee_summary';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person
  static List<String> get canInclude => ['person'];

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
  static const kReadyCount = 'ready_count';
  static const kSnoozedCount = 'snoozed_count';

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
  int get readyCount => _attributes[kReadyCount] ?? 0;
  int get snoozedCount => _attributes[kSnoozedCount] ?? 0;

  // typed getters for each relationship

  List<PcoPeoplePerson> get includedPerson =>
      (relationships['person'] as List?)?.cast<PcoPeoplePerson>() ?? [];

  // Class Constructors
  PcoPeopleWorkflowStepAssigneeSummary.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeopleWorkflowStepAssigneeSummary] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries`
  static Future<PcoCollection<PcoPeopleWorkflowStepAssigneeSummary>>
      getAssigneeSummariesFromWorkflowAndStep(
    String workflowId,
    String stepId, {
    PlanningCenterApiQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePerson) query.include.add('person');
    var url =
        '/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries';

    return PcoCollection.fromApiCall<PcoPeopleWorkflowStepAssigneeSummary>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person`
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
    if (includeAll)
      query.include.addAll(PcoPeopleWorkflowStepAssigneeSummary.canInclude);
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
