/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.724187
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


import '../../pco.dart';

/// This class represents a PCO People Email Object
/// 
/// - Application:        people
/// - Id:                 email
/// - Type:               Email
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/emails
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/people/1/emails
/// 
/// ## Description
/// An email represents an email address and location.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `address` (rw) -> PCO: `address`
/// - `location` (rw) -> PCO: `location`
/// - `isPrimary` (rw) -> PCO: `primary`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `isBlocked` (ro) -> PCO: `blocked`
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
/// - `address`: (URLParameter), query on a specific address, example: ?where[address]=string
/// - `blocked`: (URLParameter), query on a specific blocked, example: ?where[blocked]=true
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `location`: (URLParameter), query on a specific location, example: ?where[location]=string
/// - `primary`: (URLParameter), query on a specific primary, example: ?where[primary]=true
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// - `address`: (URLParameter), prefix with a hyphen (-address) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `location`: (URLParameter), prefix with a hyphen (-location) to reverse the order
/// - `primary`: (URLParameter), prefix with a hyphen (-primary) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `person-email-person`: https://api.planningcenteronline.com/people/v2/emails/1/person
/// 
/// Inbound Edges:
/// - `email-organization-emails`: https://api.planningcenteronline.com/people/v2/emails
/// - `email-person-emails`: https://api.planningcenteronline.com/people/v2/people/1/emails
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Email",
///   "id": "1",
///   "attributes": {
///     "address": "string",
///     "location": "string",
///     "primary": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "blocked": true
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
class PcoPeopleEmail extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Email';
  static const String kTypeId = 'email';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/emails';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/emails';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `address`: (URLParameter), query on a specific address, example: ?where[address]=string
  /// - `blocked`: (URLParameter), query on a specific blocked, example: ?where[blocked]=true
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `location`: (URLParameter), query on a specific location, example: ?where[location]=string
  /// - `primary`: (URLParameter), query on a specific primary, example: ?where[primary]=true
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['address','blocked','created_at','location','primary','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `address`: (URLParameter), prefix with a hyphen (-address) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `location`: (URLParameter), prefix with a hyphen (-location) to reverse the order
  /// - `primary`: (URLParameter), prefix with a hyphen (-primary) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['address','created_at','location','primary','updated_at'];

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
  static const kAddress = 'address';
  static const kLocation = 'location';
  static const kPrimary = 'primary';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kBlocked = 'blocked';


  // getters and setters
  @override
  List<String> get createAllowed => ['address', 'location', 'primary'];

  @override
  List<String> get updateAllowed => ['address', 'location', 'primary'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get address => attributes[kAddress] ?? '';
  String get location => attributes[kLocation] ?? '';
  bool get isPrimary => attributes[kPrimary] == true;
  bool get isBlocked => attributes[kBlocked] == true;  
  
  // setters for object attributes
  
  /// pass `null` to remove key from attributes
  set address(String? x) => (x == null) ? attributes.remove(kAddress) : attributes[kAddress] = x;
  
  /// pass `null` to remove key from attributes
  set location(String? x) => (x == null) ? attributes.remove(kLocation) : attributes[kLocation] = x;
  
  /// pass `null` to remove key from attributes
  set isPrimary(bool? x) => (x == null) ? attributes.remove(kPrimary) : attributes[kPrimary] = x;  


  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships
  
  




  // Class Constructors
  PcoPeopleEmail.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoPeopleEmail.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleEmail] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people/$peopleId/emails`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleEmail(String peopleId, { String? address, String? location, bool? isPrimary }) {
    var obj = PcoPeopleEmail.empty();
    obj._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/people/$peopleId/emails';
    if (address != null) obj.address = address;
    if (location != null) obj.location = location;
    if (isPrimary != null) obj.isPrimary = isPrimary;
    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleEmail] objects (expecting many)
  /// using a path like this: `/people/v2/emails`
  static Future<PcoCollection<PcoPeopleEmail>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleEmail.canInclude;
    var url = '/people/v2/emails';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleEmail>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleEmail] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/emails`
  static Future<PcoCollection<PcoPeopleEmail>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleEmail.canInclude;
    var url = '/people/v2/people/$peopleId/emails';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleEmail>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/emails/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
