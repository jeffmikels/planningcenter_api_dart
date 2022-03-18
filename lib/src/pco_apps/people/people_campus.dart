/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-18T18:33:02.757515
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO People Campus Object
/// 
/// - Application:        people
/// - Id:                 campus
/// - Type:               Campus
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/campuses
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/campuses
/// 
/// ## Description
/// A Campus is a location belonging to an Organization
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `latitude` (rw) -> PCO: `latitude`
/// - `longitude` (rw) -> PCO: `longitude`
/// - `description` (rw) -> PCO: `description`
/// - `street` (rw) -> PCO: `street`
/// - `city` (rw) -> PCO: `city`
/// - `state` (rw) -> PCO: `state`
/// - `zip` (rw) -> PCO: `zip`
/// - `country` (rw) -> PCO: `country`
/// - `phoneNumber` (rw) -> PCO: `phone_number`
/// - `website` (rw) -> PCO: `website`
/// - `isTwentyFourHourTime` (rw) -> PCO: `twenty_four_hour_time`
/// - `dateFormat` (rw) -> PCO: `date_format`
/// - `isChurchCenterEnabled` (rw) -> PCO: `church_center_enabled`
/// - `contactEmailAddress` (rw) -> PCO: `contact_email_address`
/// - `timeZone` (rw) -> PCO: `time_zone`
/// - `isGeolocationSetManually` (rw) -> PCO: `geolocation_set_manually`
/// - `name` (rw) -> PCO: `name`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `avatarUrl` (ro) -> PCO: `avatar_url`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `lists`: include associated lists 
/// - `service_times`: include associated service_times 
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `list-campus-lists`: https://api.planningcenteronline.com/people/v2/campuses/1/lists
/// - `servicetime-campus-service_times`: https://api.planningcenteronline.com/people/v2/campuses/1/service_times
/// 
/// Inbound Edges:
/// - `campus-form-campus`: https://api.planningcenteronline.com/people/v2/forms/1/campus
/// - `campus-list-campus`: https://api.planningcenteronline.com/people/v2/lists/1/campus
/// - `campus-organization-campuses`: https://api.planningcenteronline.com/people/v2/campuses
/// - `campus-person-primary_campus`: https://api.planningcenteronline.com/people/v2/people/1/primary_campus
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Campus",
///   "id": "1",
///   "attributes": {
///     "latitude": 1.42,
///     "longitude": 1.42,
///     "description": "string",
///     "street": "string",
///     "city": "string",
///     "state": "string",
///     "zip": "string",
///     "country": "string",
///     "phone_number": "string",
///     "website": "string",
///     "twenty_four_hour_time": true,
///     "date_format": 1,
///     "church_center_enabled": true,
///     "contact_email_address": "string",
///     "time_zone": "string",
///     "geolocation_set_manually": true,
///     "name": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "avatar_url": "string"
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
class PcoPeopleCampus extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Campus';
  static const String kTypeId = 'campus';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/campuses';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/people/v2/campuses';

  /// possible includes with parameter ?include=a,b
  /// - `lists`: include associated lists 
  /// - `service_times`: include associated service_times 
  static List<String> get canInclude => ['lists','service_times'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','name','updated_at'];

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
  static const kLatitude = 'latitude';
  static const kLongitude = 'longitude';
  static const kDescription = 'description';
  static const kStreet = 'street';
  static const kCity = 'city';
  static const kState = 'state';
  static const kZip = 'zip';
  static const kCountry = 'country';
  static const kPhoneNumber = 'phone_number';
  static const kWebsite = 'website';
  static const kTwentyFourHourTime = 'twenty_four_hour_time';
  static const kDateFormat = 'date_format';
  static const kChurchCenterEnabled = 'church_center_enabled';
  static const kContactEmailAddress = 'contact_email_address';
  static const kTimeZone = 'time_zone';
  static const kGeolocationSetManually = 'geolocation_set_manually';
  static const kName = 'name';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kAvatarUrl = 'avatar_url';


  // getters and setters
  @override
  List<String> get createAllowed => ['latitude', 'longitude', 'description', 'street', 'city', 'state', 'zip', 'country', 'phone_number', 'website', 'twenty_four_hour_time', 'date_format', 'church_center_enabled', 'contact_email_address', 'time_zone', 'geolocation_set_manually', 'name'];

  @override
  List<String> get updateAllowed => ['latitude', 'longitude', 'description', 'street', 'city', 'state', 'zip', 'country', 'phone_number', 'website', 'twenty_four_hour_time', 'date_format', 'church_center_enabled', 'contact_email_address', 'time_zone', 'geolocation_set_manually', 'name'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  double get latitude => attributes[kLatitude] ?? 0;
  double get longitude => attributes[kLongitude] ?? 0;
  String get description => attributes[kDescription] ?? '';
  String get street => attributes[kStreet] ?? '';
  String get city => attributes[kCity] ?? '';
  String get state => attributes[kState] ?? '';
  String get zip => attributes[kZip] ?? '';
  String get country => attributes[kCountry] ?? '';
  String get phoneNumber => attributes[kPhoneNumber] ?? '';
  String get website => attributes[kWebsite] ?? '';
  bool get isTwentyFourHourTime => attributes[kTwentyFourHourTime] == true;
  int get dateFormat => attributes[kDateFormat] ?? 0;
  bool get isChurchCenterEnabled => attributes[kChurchCenterEnabled] == true;
  String get contactEmailAddress => attributes[kContactEmailAddress] ?? '';
  String get timeZone => attributes[kTimeZone] ?? '';
  bool get isGeolocationSetManually => attributes[kGeolocationSetManually] == true;
  String get name => attributes[kName] ?? '';
  String get avatarUrl => attributes[kAvatarUrl] ?? '';  
  
  // setters for object attributes
  
  /// pass `null` to remove key from attributes
  set latitude(double? x) => (x == null) ? attributes.remove(kLatitude) : attributes[kLatitude] = x;
  
  /// pass `null` to remove key from attributes
  set longitude(double? x) => (x == null) ? attributes.remove(kLongitude) : attributes[kLongitude] = x;
  
  /// pass `null` to remove key from attributes
  set description(String? x) => (x == null) ? attributes.remove(kDescription) : attributes[kDescription] = x;
  
  /// pass `null` to remove key from attributes
  set street(String? x) => (x == null) ? attributes.remove(kStreet) : attributes[kStreet] = x;
  
  /// pass `null` to remove key from attributes
  set city(String? x) => (x == null) ? attributes.remove(kCity) : attributes[kCity] = x;
  
  /// pass `null` to remove key from attributes
  set state(String? x) => (x == null) ? attributes.remove(kState) : attributes[kState] = x;
  
  /// pass `null` to remove key from attributes
  set zip(String? x) => (x == null) ? attributes.remove(kZip) : attributes[kZip] = x;
  
  /// pass `null` to remove key from attributes
  set country(String? x) => (x == null) ? attributes.remove(kCountry) : attributes[kCountry] = x;
  
  /// pass `null` to remove key from attributes
  set phoneNumber(String? x) => (x == null) ? attributes.remove(kPhoneNumber) : attributes[kPhoneNumber] = x;
  
  /// pass `null` to remove key from attributes
  set website(String? x) => (x == null) ? attributes.remove(kWebsite) : attributes[kWebsite] = x;
  
  /// pass `null` to remove key from attributes
  set isTwentyFourHourTime(bool? x) => (x == null) ? attributes.remove(kTwentyFourHourTime) : attributes[kTwentyFourHourTime] = x;
  
  /// pass `null` to remove key from attributes
  set dateFormat(int? x) => (x == null) ? attributes.remove(kDateFormat) : attributes[kDateFormat] = x;
  
  /// pass `null` to remove key from attributes
  set isChurchCenterEnabled(bool? x) => (x == null) ? attributes.remove(kChurchCenterEnabled) : attributes[kChurchCenterEnabled] = x;
  
  /// pass `null` to remove key from attributes
  set contactEmailAddress(String? x) => (x == null) ? attributes.remove(kContactEmailAddress) : attributes[kContactEmailAddress] = x;
  
  /// pass `null` to remove key from attributes
  set timeZone(String? x) => (x == null) ? attributes.remove(kTimeZone) : attributes[kTimeZone] = x;
  
  /// pass `null` to remove key from attributes
  set isGeolocationSetManually(bool? x) => (x == null) ? attributes.remove(kGeolocationSetManually) : attributes[kGeolocationSetManually] = x;
  
  /// pass `null` to remove key from attributes
  set name(String? x) => (x == null) ? attributes.remove(kName) : attributes[kName] = x;  

  // Class Constructors
  PcoPeopleCampus._() : super(kPcoApplication, kTypeString);
  PcoPeopleCampus.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoPeopleCampus] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/campuses`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleCampus({ double? latitude, double? longitude, String? description, String? street, String? city, String? state, String? zip, String? country, String? phoneNumber, String? website, bool? isTwentyFourHourTime, int? dateFormat, bool? isChurchCenterEnabled, String? contactEmailAddress, String? timeZone, bool? isGeolocationSetManually, String? name }) {
    var obj = PcoPeopleCampus._();
    obj._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/campuses';
    if (latitude != null) obj.latitude = latitude;
    if (longitude != null) obj.longitude = longitude;
    if (description != null) obj.description = description;
    if (street != null) obj.street = street;
    if (city != null) obj.city = city;
    if (state != null) obj.state = state;
    if (zip != null) obj.zip = zip;
    if (country != null) obj.country = country;
    if (phoneNumber != null) obj.phoneNumber = phoneNumber;
    if (website != null) obj.website = website;
    if (isTwentyFourHourTime != null) obj.isTwentyFourHourTime = isTwentyFourHourTime;
    if (dateFormat != null) obj.dateFormat = dateFormat;
    if (isChurchCenterEnabled != null) obj.isChurchCenterEnabled = isChurchCenterEnabled;
    if (contactEmailAddress != null) obj.contactEmailAddress = contactEmailAddress;
    if (timeZone != null) obj.timeZone = timeZone;
    if (isGeolocationSetManually != null) obj.isGeolocationSetManually = isGeolocationSetManually;
    if (name != null) obj.name = name;
    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleCampus] objects (expecting many)
  /// using a path like this: `/people/v2/campuses`
  static Future<PcoCollection<PcoPeopleCampus>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    var url = '/people/v2/campuses';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleCampus>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleCampus] objects (expecting one)
  /// using a path like this: `/people/v2/forms/$formId/campus`
  static Future<PcoCollection<PcoPeopleCampus>> getFromForm(String formId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    var url = '/people/v2/forms/$formId/campus';
    
    return PcoCollection.fromApiCall<PcoPeopleCampus>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleCampus] objects (expecting one)
  /// using a path like this: `/people/v2/lists/$listId/campus`
  static Future<PcoCollection<PcoPeopleCampus>> getFromList(String listId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    var url = '/people/v2/lists/$listId/campus';
    
    return PcoCollection.fromApiCall<PcoPeopleCampus>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleCampus] objects (expecting one)
  /// using a path like this: `/people/v2/people/$peopleId/primary_campus`
  static Future<PcoCollection<PcoPeopleCampus>> getPrimaryCampusFromPeople(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    var url = '/people/v2/people/$peopleId/primary_campus';
    
    return PcoCollection.fromApiCall<PcoPeopleCampus>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleList] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/campuses/1/lists`
  Future<PcoCollection<PcoPeopleList>> getLists({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleList.canInclude;
    var url = '$apiEndpoint/lists';
    return PcoCollection.fromApiCall<PcoPeopleList>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleServiceTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/campuses/1/service_times`
  Future<PcoCollection<PcoPeopleServiceTime>> getServiceTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleServiceTime.canInclude;
    var url = '$apiEndpoint/service_times';
    return PcoCollection.fromApiCall<PcoPeopleServiceTime>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
