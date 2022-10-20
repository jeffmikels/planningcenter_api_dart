/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:29:04.502257
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Ordering is not allowed on this object.
enum PcoPeoplePeopleImportHistoryOrder { none }

/// Possible Inbound Filters:
/// - `creates` -> `?filter=creates` : -- no description
/// - `householdCreates` -> `?filter=household_creates` : -- no description
/// - `householdUpdates` -> `?filter=household_updates` : -- no description
/// - `identical` -> `?filter=identical` : -- no description
/// - `updates` -> `?filter=updates` : -- no description
enum PcoPeoplePeopleImportHistoryFilter { creates, householdCreates, householdUpdates, identical, updates }

/// Creates a [PcoPeoplePeopleImportHistoryQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
/// 
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeHousehold`: include associated household 
/// - `includePerson`: include associated person 
/// - `includeAll`: include all related objects
/// 
/// Alternatively, you may pass a list of strings to the `include` argument.
/// 
/// e.g. `PcoPeoplePeopleImportHistoryQuery(includes: ['a', 'b'])`
/// 
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// 
/// [PcoPeoplePeopleImportHistory] objects can be requested with one or more of the following criteria:
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// 
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
/// 
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeoplePeopleImportHistoryQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeoplePeopleImportHistoryOrder, String> _orderMap = {
    
  };
  static String orderString(PcoPeoplePeopleImportHistoryOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeoplePeopleImportHistoryFilter, String> _filterMap = {
    PcoPeoplePeopleImportHistoryFilter.creates: 'creates',
    PcoPeoplePeopleImportHistoryFilter.householdCreates: 'household_creates',
    PcoPeoplePeopleImportHistoryFilter.householdUpdates: 'household_updates',
    PcoPeoplePeopleImportHistoryFilter.identical: 'identical',
    PcoPeoplePeopleImportHistoryFilter.updates: 'updates',
  };
  static String filterString(PcoPeoplePeopleImportHistoryFilter filter) => _filterMap[filter]!;

  PcoPeoplePeopleImportHistoryQuery({
    /// include associated household
    /// when true, adds `?include=household` to url
    bool includeHousehold = false,
    
    /// include associated person
    /// when true, adds `?include=person` to url
    bool includePerson = false,
    
    /// when true, adds `?include=household,person` to url parameters
    bool includeAll = false,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,
    

    PcoPeoplePeopleImportHistoryFilter? filterBy,


    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super() {
    if (filterBy != null) filter.add(filterString(filterBy));
    if (includeAll || includeHousehold) include.add('household');
    if (includeAll || includePerson) include.add('person');
    
    if (whereName != null) where.add(PlanningCenterApiWhere.parse('name', whereName));}
}

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
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports/1/histories';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `household`: include associated household 
  /// - `person`: include associated person 
  static List<String> get canInclude => ['household','person'];

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
  
  PcoPeopleHousehold? get includedHousehold => _firstOrNull<PcoPeopleHousehold>(relationships['household']);
  PcoPeoplePerson? get includedPerson => _firstOrNull<PcoPeoplePerson>(relationships['person']);

  // Class Constructors
  PcoPeoplePeopleImportHistory.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeoplePeopleImportHistory.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeoplePeopleImportHistory] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeoplePeopleImportHistory({String? id, String? name, DateTime? createdAt, DateTime? updatedAt, String? conflictingChanges, String? kind, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoPeoplePeopleImportHistory.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (conflictingChanges != null) obj._attributes['conflicting_changes'] = conflictingChanges;
    if (kind != null) obj._attributes['kind'] = kind;

    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }

    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }

    return obj;
  }


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
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeoplePeopleImportHistory>> getHistoriesFromPeopleImport(String peopleImportId, {String? id, PcoPeoplePeopleImportHistoryQuery? query, bool includeAll = false, bool includeHousehold = false, bool includePerson = false,}) async {
    query ??= PcoPeoplePeopleImportHistoryQuery();
    if (includeAll) query.include.addAll(PcoPeoplePeopleImportHistory.canInclude);
    if (includeHousehold) query.include.add('household');
    if (includePerson) query.include.add('person');
    var url = '/people/v2/people_imports/$peopleImportId/histories';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePeopleImportHistory>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/household`
  Future<PcoCollection<PcoPeopleHousehold>> getHousehold({PcoPeopleHouseholdQuery? query}) async {
    query ??= PcoPeopleHouseholdQuery();
    var url = '$apiEndpoint/household';
    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson({PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
