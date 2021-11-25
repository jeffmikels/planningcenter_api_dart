/// This file was generated on 2021-11-25T00:07:20.354754


import '../../pco.dart';

/// This class represents a PCO CheckIns Person Object
/// 
/// Application: check-ins
/// Id:          person
/// Type:        Person
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// An attendee, volunteer or administrator.\n\n_Usually_, a person who checked in will be present as a `Person`. In some cases, they may not be present:\n- The person was manually deleted from the admin interface\n- The check-in was created as a "Visitor - Label Only" (which doesn't create a corresponding person record)\n\n
/// 
/// Example:
/// 
/// {"type":"Person","id":"1","attributes":{"addresses":[],"email_addresses":[],"phone_numbers":[],"avatar_url":"string","name_prefix":"string","first_name":"string","middle_name":"string","last_name":"string","name_suffix":"string","birthdate":"2000-01-01","grade":1,"gender":"string","medical_notes":"string","child":true,"permission":"string","headcounter":true,"last_checked_in_at":"2000-01-01T12:00:00Z","check_in_count":1,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","demographic_avatar_url":"string","name":"string","top_permission":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/people
/// 
/// possible includes with parameter ?include=a,b
/// @organization: include associated organization 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @headcounter (URLParameter), query on a specific headcounter, example: ?where[headcounter]=true
/// @permission (URLParameter), query on a specific permission, example: ?where[permission]=string
/// @search_name (URLParameter), Search by person name (first, last, combination), example: ?where[search_name]=string
/// possible orderings with parameter ?order=
/// @check_in_count (URLParameter), prefix with a hyphen (-check_in_count) to reverse the order
/// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// @last_checked_in_at (URLParameter), prefix with a hyphen (-last_checked_in_at) to reverse the order
/// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
///
class PcoCheckInsPerson extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Person';
  static const String kTypeId = 'person';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'person-organization-people';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/people';

  /// possible includes with parameter ?include=a,b
  /// @organization: include associated organization 
  static List<String> get canInclude => ['organization'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @headcounter (URLParameter), query on a specific headcounter, example: ?where[headcounter]=true
  /// @permission (URLParameter), query on a specific permission, example: ?where[permission]=string
  /// @search_name (URLParameter), Search by person name (first, last, combination), example: ?where[search_name]=string
  static List<String> get canQuery => ['headcounter','permission','search_name'];

  /// possible orderings with parameter ?order=
  /// @check_in_count (URLParameter), prefix with a hyphen (-check_in_count) to reverse the order
  /// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// @last_checked_in_at (URLParameter), prefix with a hyphen (-last_checked_in_at) to reverse the order
  /// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  static List<String> get canOrderBy => ['check_in_count','first_name','last_checked_in_at','last_name'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kAddresses = 'addresses';
  static const kEmailAddresses = 'email_addresses';
  static const kPhoneNumbers = 'phone_numbers';
  static const kAvatarUrl = 'avatar_url';
  static const kNamePrefix = 'name_prefix';
  static const kFirstName = 'first_name';
  static const kMiddleName = 'middle_name';
  static const kLastName = 'last_name';
  static const kNameSuffix = 'name_suffix';
  static const kBirthdate = 'birthdate';
  static const kGrade = 'grade';
  static const kGender = 'gender';
  static const kMedicalNotes = 'medical_notes';
  static const kChild = 'child';
  static const kPermission = 'permission';
  static const kHeadcounter = 'headcounter';
  static const kLastCheckedInAt = 'last_checked_in_at';
  static const kCheckInCount = 'check_in_count';
  static const kDemographicAvatarUrl = 'demographic_avatar_url';
  static const kName = 'name';
  static const kTopPermission = 'top_permission';
  static const kSearchName = 'search_name';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  List get addresses => attributes[kAddresses] ?? [];
  List get emailAddresses => attributes[kEmailAddresses] ?? [];
  List get phoneNumbers => attributes[kPhoneNumbers] ?? [];
  String get avatarUrl => attributes[kAvatarUrl] ?? '';
  String get namePrefix => attributes[kNamePrefix] ?? '';
  String get firstName => attributes[kFirstName] ?? '';
  String get middleName => attributes[kMiddleName] ?? '';
  String get lastName => attributes[kLastName] ?? '';
  String get nameSuffix => attributes[kNameSuffix] ?? '';
  String get birthdate => attributes[kBirthdate] ?? '';
  int get grade => attributes[kGrade] ?? 0;
  String get gender => attributes[kGender] ?? '';
  String get medicalNotes => attributes[kMedicalNotes] ?? '';
  bool get isChild => attributes[kChild] == true;
  String get permission => attributes[kPermission] ?? '';
  bool get isHeadcounter => attributes[kHeadcounter] == true;
  DateTime get lastCheckedInAt => DateTime.parse(attributes[kLastCheckedInAt] ?? '');
  int get checkInCount => attributes[kCheckInCount] ?? 0;
  String get demographicAvatarUrl => attributes[kDemographicAvatarUrl] ?? '';
  String get name => attributes[kName] ?? '';
  String get topPermission => attributes[kTopPermission] ?? '';
  String get searchName => attributes[kSearchName] ?? '';




  PcoCheckInsPerson() : super(kPcoApplication, kTypeString);
  PcoCheckInsPerson.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_by;
  static Future<PcoCollection<PcoCheckInsPerson>> getManyFromCheckInAndCheckedInBy(String checkInId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/checked_in_by';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_out_by;
  static Future<PcoCollection<PcoCheckInsPerson>> getManyFromCheckInAndCheckedOutBy(String checkInId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/checked_out_by';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/person;
  static Future<PcoCollection<PcoCheckInsPerson>> getManyFromCheckIn(String checkInId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/person';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people;
  static Future<PcoCollection<PcoCheckInsPerson>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/people';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/passes/1/person;
  static Future<PcoCollection<PcoCheckInsPerson>> getManyFromPas(String pasId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/passes/$pasId/person';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/person;
  static Future<PcoCollection<PcoCheckInsPerson>> getManyFromEventAndPersonEvent(String eventId,String personEventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/events/$eventId/person_events/$personEventId/person';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoCheckInsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_by;
  static Future<PcoCollection<PcoCheckInsPerson>> getSingleFromCheckInAndCheckedInBy(String checkInId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/checked_in_by' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsPerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_out_by;
  static Future<PcoCollection<PcoCheckInsPerson>> getSingleFromCheckInAndCheckedOutBy(String checkInId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/checked_out_by' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsPerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/person;
  static Future<PcoCollection<PcoCheckInsPerson>> getSingleFromCheckIn(String checkInId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/person' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsPerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people;
  static Future<PcoCollection<PcoCheckInsPerson>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/people' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsPerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/passes/1/person;
  static Future<PcoCollection<PcoCheckInsPerson>> getSingleFromPas(String pasId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/passes/$pasId/person' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsPerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/person;
  static Future<PcoCollection<PcoCheckInsPerson>> getSingleFromEventAndPersonEvent(String eventId,String personEventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/events/$eventId/person_events/$personEventId/person' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsPerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/check_ins
Future<PcoCollection<PcoCheckInsCheckIn>> getCheckIns({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
  var url = '$apiEndpoint/check_ins';
  return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsOrganization objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/organization
Future<PcoCollection<PcoCheckInsOrganization>> getOrganizations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsOrganization.canInclude;
  var url = '$apiEndpoint/organization';
  return PcoCollection.fromApiCall<PcoCheckInsOrganization>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsPas objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/passes
Future<PcoCollection<PcoCheckInsPas>> getPasesPasses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsPas.canInclude;
  var url = '$apiEndpoint/passes';
  return PcoCollection.fromApiCall<PcoCheckInsPas>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsPersonEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/person_events
Future<PcoCollection<PcoCheckInsPersonEvent>> getPersonEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsPersonEvent.canInclude;
  var url = '$apiEndpoint/person_events';
  return PcoCollection.fromApiCall<PcoCheckInsPersonEvent>(url, query: query, apiVersion:apiVersion);
}
    


}
