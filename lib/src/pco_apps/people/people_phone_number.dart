/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:48.337751
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO People PhoneNumber Object
/// 
/// - Application:        people
/// - Id:                 phone_number
/// - Type:               PhoneNumber
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/phone_numbers
/// 
/// Description:
/// A phone number represents a single telephone number and location.
/// 
/// Example:
/// ```json
/// {
///   "type": "PhoneNumber",
///   "id": "1",
///   "attributes": {
///     "number": "string",
///     "carrier": "string",
///     "location": "string",
///     "primary": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "e164": "string",
///     "international": "string",
///     "national": "string",
///     "country_code": "string"
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
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `carrier`: (URLParameter), query on a specific carrier, example: ?where[carrier]=string
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `location`: (URLParameter), query on a specific location, example: ?where[location]=string
/// - `number`: (URLParameter), query on a specific number, example: ?where[number]=string
/// - `primary`: (URLParameter), query on a specific primary, example: ?where[primary]=true
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `carrier`: (URLParameter), prefix with a hyphen (-carrier) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `location`: (URLParameter), prefix with a hyphen (-location) to reverse the order
/// - `number`: (URLParameter), prefix with a hyphen (-number) to reverse the order
/// - `primary`: (URLParameter), prefix with a hyphen (-primary) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `phonenumber-person-phone_numbers`: https://api.planningcenteronline.com/people/v2/people/1/phone_numbers
/// 
/// All Actions:
/// NONE
///
class PcoPeoplePhoneNumber extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PhoneNumber';
  static const String kTypeId = 'phone_number';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'phonenumber-person-phone_numbers';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/phone_numbers';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/phone_numbers';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `carrier`: (URLParameter), query on a specific carrier, example: ?where[carrier]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `location`: (URLParameter), query on a specific location, example: ?where[location]=string
  /// - `number`: (URLParameter), query on a specific number, example: ?where[number]=string
  /// - `primary`: (URLParameter), query on a specific primary, example: ?where[primary]=true
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['carrier','created_at','location','number','primary','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `carrier`: (URLParameter), prefix with a hyphen (-carrier) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `location`: (URLParameter), prefix with a hyphen (-location) to reverse the order
  /// - `number`: (URLParameter), prefix with a hyphen (-number) to reverse the order
  /// - `primary`: (URLParameter), prefix with a hyphen (-primary) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['carrier','created_at','location','number','primary','updated_at'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kNumber = 'number';
  static const kCarrier = 'carrier';
  static const kLocation = 'location';
  static const kPrimary = 'primary';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kE164 = 'e164';
  static const kInternational = 'international';
  static const kNational = 'national';
  static const kCountryCode = 'country_code';


  // getters and setters
  @override
  List<String> get createAllowed => ['number','carrier','location','primary'];

  @override
  List<String> get updateAllowed => ['number','carrier','location','primary'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get number => attributes[kNumber] ?? '';
  String get carrier => attributes[kCarrier] ?? '';
  String get location => attributes[kLocation] ?? '';
  bool get isPrimary => attributes[kPrimary] == true;
  String get e164 => attributes[kE164] ?? '';
  String get international => attributes[kInternational] ?? '';
  String get national => attributes[kNational] ?? '';
  String get countryCode => attributes[kCountryCode] ?? '';
  

  // setters for object attributes

  set number(String s) => attributes[kNumber] = s;
  set carrier(String s) => attributes[kCarrier] = s;
  set location(String s) => attributes[kLocation] = s;
  set isPrimary(bool b) => attributes[kPrimary] = b;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeoplePhoneNumber._() : super(kPcoApplication, kTypeString);
  PcoPeoplePhoneNumber.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoPeoplePhoneNumber] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people/$peopleId/phone_numbers`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeoplePhoneNumber(String peopleId) {
    return PcoPeoplePhoneNumber._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/people/$peopleId/phone_numbers';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeoplePhoneNumber] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/phone_numbers`
  static Future<PcoCollection<PcoPeoplePhoneNumber>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePhoneNumber.canInclude;
    var url = '/people/v2/people/$peopleId/phone_numbers';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePhoneNumber>(url, query: query, apiVersion:kApiVersion);
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
