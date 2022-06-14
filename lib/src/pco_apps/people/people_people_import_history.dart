/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:15.015486
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People PeopleImportHistory Object
///
/// - Application:        people
/// - Id:                 people_import_history
/// - Type:               PeopleImportHistory
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people_imports/1/histories
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeoplePeopleImportHistory.fromJson()` constructor.
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
/// A PeopleImportHistory is a record of change that occurred when the parent PeopleImport was completed.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `conflictingChanges` (ro) -> PCO: `conflicting_changes`
/// - `kind` (ro) -> PCO: `kind`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `household`: include associated household
/// - `person`: include associated person
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
/// NONE
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `household-peopleimporthistory-household`: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/household
/// - `person-peopleimporthistory-person`: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/person
///
/// Inbound Edges:
/// - `peopleimporthistory-peopleimport-histories`: https://api.planningcenteronline.com/people/v2/people_imports/1/histories
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PeopleImportHistory",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "conflicting_changes": {},
///     "kind": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeoplePeopleImportHistory extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PeopleImportHistory';
  static const String kTypeId = 'people_import_history';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/people_imports/1/histories';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `household`: include associated household
  /// - `person`: include associated person
  static List<String> get canInclude => ['household', 'person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['name'];

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
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kConflictingChanges = 'conflicting_changes';
  static const kKind = 'kind';

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
  String get name => _attributes[kName] ?? '';
  String get conflictingChanges => _attributes[kConflictingChanges] ?? '';
  String get kind => _attributes[kKind] ?? '';

  // typed getters for each relationship

  List<PcoPeopleHousehold> get includedHousehold =>
      (relationships['household'] as List?)?.cast<PcoPeopleHousehold>() ?? [];
  List<PcoPeoplePerson> get includedPerson =>
      (relationships['person'] as List?)?.cast<PcoPeoplePerson>() ?? [];

  // Class Constructors
  PcoPeoplePeopleImportHistory.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeoplePeopleImportHistory] objects (expecting many)
  /// using a path like this: `/people/v2/people_imports/$peopleImportId/histories`
  ///
  /// Available Query Filters:
  /// - `creates`
  /// - `household_creates`
  /// - `household_updates`
  /// - `identical`
  /// - `updates`
  static Future<PcoCollection<PcoPeoplePeopleImportHistory>>
      getHistoriesFromPeopleImport(
    String peopleImportId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeHousehold = false,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoPeoplePeopleImportHistory.canInclude);
    if (includeHousehold) query.include.add('household');
    if (includePerson) query.include.add('person');
    var url = '/people/v2/people_imports/$peopleImportId/histories';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePeopleImportHistory>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/household`
  Future<PcoCollection<PcoPeopleHousehold>> getHousehold({
    PlanningCenterApiQuery? query,
    bool includePeople = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePeople) query.include.add('people');
    var url = '$apiEndpoint/household';
    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/person`
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
      query.include.addAll(PcoPeoplePeopleImportHistory.canInclude);
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
