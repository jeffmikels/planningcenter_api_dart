/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:58:55.646890
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO People ConnectedPerson Object
///
/// - Application:        people
/// - Id:                 connected_person
/// - Type:               ConnectedPerson
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/connected_people
/// - Create Endpoint:    NONE
///
/// ## Description
/// A Connected Person is an account from a different organization linked to an account in this organization.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `givenName` (ro) -> PCO: `given_name`
/// - `firstName` (ro) -> PCO: `first_name`
/// - `nickname` (ro) -> PCO: `nickname`
/// - `middleName` (ro) -> PCO: `middle_name`
/// - `lastName` (ro) -> PCO: `last_name`
/// - `gender` (ro) -> PCO: `gender`
/// - `organizationName` (ro) -> PCO: `organization_name`
/// - `organizationId` (ro) -> PCO: `organization_id`
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
/// - `connectedperson-person-connected_people`: https://api.planningcenteronline.com/people/v2/people/1/connected_people
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ConnectedPerson",
///   "id": "1",
///   "attributes": {
///     "given_name": "string",
///     "first_name": "string",
///     "nickname": "string",
///     "middle_name": "string",
///     "last_name": "string",
///     "gender": "string",
///     "organization_name": "string",
///     "organization_id": "primary_key"
///   },
///   "relationships": {
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleConnectedPerson extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'ConnectedPerson';
  static const String kTypeId = 'connected_person';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/connected_people';
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
  static const kGivenName = 'given_name';
  static const kFirstName = 'first_name';
  static const kNickname = 'nickname';
  static const kMiddleName = 'middle_name';
  static const kLastName = 'last_name';
  static const kGender = 'gender';
  static const kOrganizationName = 'organization_name';
  static const kOrganizationId = 'organization_id';

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
  String get givenName => attributes[kGivenName] ?? '';
  String get firstName => attributes[kFirstName] ?? '';
  String get nickname => attributes[kNickname] ?? '';
  String get middleName => attributes[kMiddleName] ?? '';
  String get lastName => attributes[kLastName] ?? '';
  String get gender => attributes[kGender] ?? '';
  String get organizationName => attributes[kOrganizationName] ?? '';
  String get organizationId => attributes[kOrganizationId] ?? '';

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  // Class Constructors
  PcoPeopleConnectedPerson.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleConnectedPerson.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoPeopleConnectedPerson] objects (expecting one)
  /// using a path like this: `/people/v2/people/$peopleId/connected_people`
  static Future<PcoCollection<PcoPeopleConnectedPerson>>
      getConnectedPeopleFromPeople(String peopleId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleConnectedPerson.canInclude;
    var url = '/people/v2/people/$peopleId/connected_people';

    return PcoCollection.fromApiCall<PcoPeopleConnectedPerson>(url,
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
