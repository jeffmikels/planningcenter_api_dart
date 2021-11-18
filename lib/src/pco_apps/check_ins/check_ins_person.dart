/// This file was generated on 2021-11-18T13:57:09.868439


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
class PcoCheckInsPerson extends PcoResource {
  static const String pcoApplication = 'check-ins';
  static const String typeString = 'Person';
  static const String typeId = 'person';
  static const String apiVersion = '2019-07-17';
  static const String shortestEdgeId = 'person-organization-people';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/people';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoCheckInsPerson() : super(pcoApplication, typeString);
  PcoCheckInsPerson.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCheckInsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_by;
  static Future<List<PcoCheckInsPerson>> getManyFromCheckInAndCheckedInByIds(String checkInId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/checked_in_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsPerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_out_by;
  static Future<List<PcoCheckInsPerson>> getManyFromCheckInAndCheckedOutByIds(String checkInId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/checked_out_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsPerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/person;
  static Future<List<PcoCheckInsPerson>> getManyFromCheckInAndPersonIds(String checkInId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsPerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people;
  static Future<List<PcoCheckInsPerson>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsPerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/passes/1/person;
  static Future<List<PcoCheckInsPerson>> getManyFromPasAndPersonIds(String pasId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/passes/$pasId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsPerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/person;
  static Future<List<PcoCheckInsPerson>> getManyFromEventAndPersonEventAndPersonIds(String eventId,String personEventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/person_events/$personEventId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsPerson.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_by;
  static Future<PcoCheckInsPerson?> getSingleFromCheckInAndCheckedInByIds(String checkInId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/checked_in_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsPerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_out_by;
  static Future<PcoCheckInsPerson?> getSingleFromCheckInAndCheckedOutByIds(String checkInId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/checked_out_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsPerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/person;
  static Future<PcoCheckInsPerson?> getSingleFromCheckInAndPersonIds(String checkInId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsPerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people;
  static Future<PcoCheckInsPerson?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsPerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/passes/1/person;
  static Future<PcoCheckInsPerson?> getSingleFromPasAndPersonIds(String pasId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/passes/$pasId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsPerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/person;
  static Future<PcoCheckInsPerson?> getSingleFromEventAndPersonEventAndPersonIds(String eventId,String personEventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/person_events/$personEventId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsPerson.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/check_ins
Future<List<PcoCheckInsCheckIn>> getCheckIns({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsCheckIn> retval = [];
  var url = '$apiEndpoint/check_ins';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsCheckIn.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsOrganization objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/organization
Future<List<PcoCheckInsOrganization>> getOrganizations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsOrganization> retval = [];
  var url = '$apiEndpoint/organization';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsOrganization.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsPas objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/passes
Future<List<PcoCheckInsPas>> getPasesPasses({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsPas> retval = [];
  var url = '$apiEndpoint/passes';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsPas.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsPersonEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/person_events
Future<List<PcoCheckInsPersonEvent>> getPersonEvents({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsPersonEvent> retval = [];
  var url = '$apiEndpoint/person_events';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsPersonEvent.fromJson(itemData));
    }
  }
  return retval;
}
    

}
