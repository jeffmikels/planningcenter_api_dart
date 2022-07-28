/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.717667
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// This class represents a PCO People HouseholdMembership Object
/// 
/// - Application:        people
/// - Id:                 household_membership
/// - Type:               HouseholdMembership
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/households/1/household_memberships
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/households/1/household_memberships
/// 
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleHouseholdMembership()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleHouseholdMembership.fromJson()` constructor.
/// - Manually create an object using the `PcoPeopleHouseholdMembership.manual()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
/// 
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
/// ### Extra Instructions
/// #### CREATING
/// To add someone to a household, you must specify the person as a relationship:
/// `{"data":{"attributes":{},"relationships":{"person":{"data":{"type":"Person","id":"1"}}}}}`
///   
/// ## Description
/// A household membership is the linking record between a household and a person.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `personName` (ro) -> PCO: `person_name`
/// - `isPending` (rw) -> PCO: `pending`
/// - `personId` (wo) -> PCO: `person_id`
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
/// - `pending`: (URLParameter), query on a specific pending, example: ?where[pending]=true
/// - `person_name`: (URLParameter), query on a specific person_name, example: ?where[person_name]=string
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// - `pending`: (URLParameter), prefix with a hyphen (-pending) to reverse the order
/// - `person_name`: (URLParameter), prefix with a hyphen (-person_name) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `household-householdmembership-household`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/household
/// - `person-householdmembership-person`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/person
/// 
/// Inbound Edges:
/// - `householdmembership-household-household_memberships`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships
/// - `householdmembership-person-household_memberships`: https://api.planningcenteronline.com/people/v2/people/1/household_memberships
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "HouseholdMembership",
///   "id": "1",
///   "attributes": {
///     "person_name": "string",
///     "pending": true
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleHouseholdMembership extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'HouseholdMembership';
  static const String kTypeId = 'household_membership';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/households/1/household_memberships';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/people/v2/households/1/household_memberships';

  /// possible includes with parameter ?include=a,b
  /// - `household`: include associated household 
  /// - `person`: include associated person 
  static List<String> get canInclude => ['household','person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `pending`: (URLParameter), query on a specific pending, example: ?where[pending]=true
  /// - `person_name`: (URLParameter), query on a specific person_name, example: ?where[person_name]=string
  static List<String> get canQuery => ['pending','person_name'];

  /// possible orderings with parameter ?order=
  /// - `pending`: (URLParameter), prefix with a hyphen (-pending) to reverse the order
  /// - `person_name`: (URLParameter), prefix with a hyphen (-person_name) to reverse the order
  static List<String> get canOrderBy => ['pending','person_name'];

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
  static const kPersonName = 'person_name';
  static const kPending = 'pending';
  static const kPersonId = 'person_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['person_id', 'pending'];

  @override
  List<String> get updateAllowed => ['person_id', 'pending'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get personName => _attributes[kPersonName] ?? '';
  bool get isPending => _attributes[kPending] == true;
  
  // setters for object attributes
  
  /// False when a person's memership in a household is unverified.
  
  /// pass `null` to remove key from attributes
  set isPending(bool? x) => (x == null) ? _attributes.remove(kPending) : _attributes[kPending] = x;
  
  // additional setters / getters for create/update attributes
  
  /// pass `null` to remove key from attributes
  set personId(String? x) => (x == null) ? _attributes.remove(kPersonId) : _attributes[kPersonId] = x;
  String get personId => _attributes[kPersonId] ?? '';
  
  // typed getters for each relationship
  
  PcoPeopleHousehold? get includedHousehold => _firstOrNull<PcoPeopleHousehold>(relationships['household']);
  PcoPeoplePerson? get includedPerson => _firstOrNull<PcoPeoplePerson>(relationships['person']);

  // Class Constructors
  PcoPeopleHouseholdMembership.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  PcoPeopleHouseholdMembership.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleHouseholdMembership] object using this endpoint: `https://api.planningcenteronline.com/people/v2/households/$householdId/household_memberships`
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: `personId`, `isPending`
  /// - FIELDS USED WHEN UPDATING: `personId`, `isPending`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoPeopleHouseholdMembership({required String householdId, String? id, String? personName, bool? isPending, String? personId, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoPeopleHouseholdMembership.empty();
    obj._id = id;
    obj._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/households/$householdId/household_memberships';
    if (personName != null) obj._attributes['person_name'] = personName;
    if (isPending != null) obj._attributes['pending'] = isPending;
    if (personId != null) obj._attributes['person_id'] = personId;
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



  /// Will get a collection of [PcoPeopleHouseholdMembership] objects (expecting many)
  /// using a path like this: `/people/v2/households/$householdId/household_memberships`
  static Future<PcoCollection<PcoPeopleHouseholdMembership>> getFromHousehold(String householdId, {String? id, PlanningCenterApiQuery? query, bool includeAll = false, bool includeHousehold = false, bool includePerson = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleHouseholdMembership.canInclude);
    if (includeHousehold) query.include.add('household');
    if (includePerson) query.include.add('person');
    var url = '/people/v2/households/$householdId/household_memberships';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleHouseholdMembership>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleHouseholdMembership] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/household_memberships`
  static Future<PcoCollection<PcoPeopleHouseholdMembership>> getFromPerson(String personId, {String? id, PlanningCenterApiQuery? query, bool includeAll = false, bool includeHousehold = false, bool includePerson = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleHouseholdMembership.canInclude);
    if (includeHousehold) query.include.add('household');
    if (includePerson) query.include.add('person');
    var url = '/people/v2/people/$personId/household_memberships';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleHouseholdMembership>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/household`
  Future<PcoCollection<PcoPeopleHousehold>> getHousehold({PlanningCenterApiQuery? query, bool includePeople = false,}) async {
    query ??= PlanningCenterApiQuery();
    
    if (includePeople) query.include.add('people');
    var url = '$apiEndpoint/household';
    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson({PlanningCenterApiQuery? query, bool includeAll = false, bool includeAddresses = false, bool includeEmails = false, bool includeFieldData = false, bool includeHouseholds = false, bool includeInactiveReason = false, bool includeMaritalStatus = false, bool includeNamePrefix = false, bool includeNameSuffix = false, bool includeOrganization = false, bool includePersonApps = false, bool includePhoneNumbers = false, bool includePlatformNotifications = false, bool includePrimaryCampus = false, bool includeSchool = false, bool includeSocialProfiles = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleHouseholdMembership.canInclude);
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
    if (includePlatformNotifications) query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
