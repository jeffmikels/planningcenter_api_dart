/// This file was generated on 2021-11-25T00:07:20.341328


import '../../pco.dart';

/// This class represents a PCO CheckIns CheckIn Object
/// 
/// Application: check-ins
/// Id:          check_in
/// Type:        CheckIn
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// An attendance record for an event.\n\nIf someone was checked out, `checked_out_at` will be present.\n\nYou can scope check-ins in a few ways:\n\n- `regular`s, `guest`s, and `volunteer`s correspond to the option selected when checking in.\n- `attendee`s are `regular`s and `guest`s together.\n- `one_time_guest`s are check-ins which were created without a corresponding person record.\n- `not_one_time_guest`s are check-ins which had a corresponding person record when they were created.\n- `checked_out` are check-ins where `checked_out_at` is present (meaning they were checked out from a station).\n- `first_time`s are check-ins which are the person's first for a given event. (Label-only visitors are not included here.)\n
/// 
/// Example:
/// 
/// {"type":"CheckIn","id":"1","attributes":{"first_name":"string","last_name":"string","medical_notes":"string","kind":"string","number":1,"security_code":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","checked_out_at":"2000-01-01T12:00:00Z","emergency_contact_name":"string","emergency_contact_phone_number":"string"},"relationships":{"event_period":{"data":{"type":"EventPeriod","id":"1"}},"person":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/check_ins
/// 
/// possible includes with parameter ?include=a,b
/// @check_in_times: include associated check_in_times 
/// @checked_in_at: include associated checked_in_at 
/// @checked_in_by: include associated checked_in_by 
/// @checked_out_by: include associated checked_out_by 
/// @event: include associated event 
/// @event_period: include associated event_period 
/// @event_times: include associated event_times 
/// @locations: include associated locations 
/// @options: include associated options 
/// @person: include associated person 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @security_code (URLParameter), query on a specific security_code, example: ?where[security_code]=string
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @checked_out_at (URLParameter), prefix with a hyphen (-checked_out_at) to reverse the order
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
/// @number (URLParameter), prefix with a hyphen (-number) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoCheckInsCheckIn extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'CheckIn';
  static const String kTypeId = 'check_in';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'checkin-organization-check_ins';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/check_ins';

  /// possible includes with parameter ?include=a,b
  /// @check_in_times: include associated check_in_times 
  /// @checked_in_at: include associated checked_in_at 
  /// @checked_in_by: include associated checked_in_by 
  /// @checked_out_by: include associated checked_out_by 
  /// @event: include associated event 
  /// @event_period: include associated event_period 
  /// @event_times: include associated event_times 
  /// @locations: include associated locations 
  /// @options: include associated options 
  /// @person: include associated person 
  static List<String> get canInclude => ['check_in_times','checked_in_at','checked_in_by','checked_out_by','event','event_period','event_times','locations','options','person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @security_code (URLParameter), query on a specific security_code, example: ?where[security_code]=string
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','security_code','updated_at'];

  /// possible orderings with parameter ?order=
  /// @checked_out_at (URLParameter), prefix with a hyphen (-checked_out_at) to reverse the order
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// @number (URLParameter), prefix with a hyphen (-number) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['checked_out_at','created_at','first_name','last_name','number','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kFirstName = 'first_name';
  static const kLastName = 'last_name';
  static const kMedicalNotes = 'medical_notes';
  static const kKind = 'kind';
  static const kNumber = 'number';
  static const kSecurityCode = 'security_code';
  static const kCheckedOutAt = 'checked_out_at';
  static const kEmergencyContactName = 'emergency_contact_name';
  static const kEmergencyContactPhoneNumber = 'emergency_contact_phone_number';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get firstName => attributes[kFirstName] ?? '';
  String get lastName => attributes[kLastName] ?? '';
  String get medicalNotes => attributes[kMedicalNotes] ?? '';
  String get kind => attributes[kKind] ?? '';
  int get number => attributes[kNumber] ?? 0;
  String get securityCode => attributes[kSecurityCode] ?? '';
  DateTime get checkedOutAt => DateTime.parse(attributes[kCheckedOutAt] ?? '');
  String get emergencyContactName => attributes[kEmergencyContactName] ?? '';
  String get emergencyContactPhoneNumber => attributes[kEmergencyContactPhoneNumber] ?? '';




  PcoCheckInsCheckIn() : super(kPcoApplication, kTypeString);
  PcoCheckInsCheckIn.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getManyFromCheckInAndCheckInGroupAndCheckIn(String checkInId,String checkInGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getManyFromEventAndCheckIn(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/events/$eventId/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getManyFromCheckInAndEventPeriodAndCheckIn(String checkInId,String eventPeriodId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getManyFromEventTimeAndCheckIn(String eventTimeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getManyFromCheckInAndLocationAndCheckIn(String checkInId,String locationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getManyFromCheckInAndEventPeriodAndLocationEventPeriodAndCheckIn(String checkInId,String eventPeriodId,String locationEventPeriodId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getManyFromEventTimeAndLocationEventTimeAndCheckIn(String eventTimeId,String locationEventTimeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/location_event_times/$locationEventTimeId/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getManyFromPeopleAndCheckIn(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/people/$peopleId/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/first_check_in;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getManyFromEventAndPersonEventAndFirstCheckIn(String eventId,String personEventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/events/$eventId/person_events/$personEventId/first_check_in';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/last_check_in;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getManyFromEventAndPersonEventAndCheckIn(String eventId,String personEventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/events/$eventId/person_events/$personEventId/last_check_in';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/checked_in_at_check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getManyFromStationAndCheckedInAtCheckIn(String stationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/stations/$stationId/checked_in_at_check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getSingleFromCheckInAndCheckInGroupAndCheckIn(String checkInId,String checkInGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/check_ins' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsCheckIn.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getSingleFromEventAndCheckIn(String eventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/events/$eventId/check_ins' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsCheckIn.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getSingleFromCheckInAndEventPeriodAndCheckIn(String checkInId,String eventPeriodId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/check_ins' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsCheckIn.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getSingleFromEventTimeAndCheckIn(String eventTimeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/check_ins' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsCheckIn.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getSingleFromCheckInAndLocationAndCheckIn(String checkInId,String locationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/check_ins' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsCheckIn.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getSingleFromCheckInAndEventPeriodAndLocationEventPeriodAndCheckIn(String checkInId,String eventPeriodId,String locationEventPeriodId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/check_ins' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsCheckIn.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getSingleFromEventTimeAndLocationEventTimeAndCheckIn(String eventTimeId,String locationEventTimeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/location_event_times/$locationEventTimeId/check_ins' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsCheckIn.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/check_ins' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsCheckIn.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getSingleFromPeopleAndCheckIn(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/people/$peopleId/check_ins' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsCheckIn.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/first_check_in;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getSingleFromEventAndPersonEventAndFirstCheckIn(String eventId,String personEventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/events/$eventId/person_events/$personEventId/first_check_in' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsCheckIn.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/last_check_in;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getSingleFromEventAndPersonEventAndCheckIn(String eventId,String personEventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/events/$eventId/person_events/$personEventId/last_check_in' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsCheckIn.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/checked_in_at_check_ins;
  static Future<PcoCollection<PcoCheckInsCheckIn>> getSingleFromStationAndCheckedInAtCheckIn(String stationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '/check-ins/v2/stations/$stationId/checked_in_at_check_ins' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsCheckIn.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoCheckInsCheckInGroup objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group
Future<PcoCollection<PcoCheckInsCheckInGroup>> getCheckInGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsCheckInGroup.canInclude;
  var url = '$apiEndpoint/check_in_group';
  return PcoCollection.fromApiCall<PcoCheckInsCheckInGroup>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsCheckInTime objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times
Future<PcoCollection<PcoCheckInsCheckInTime>> getCheckInTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsCheckInTime.canInclude;
  var url = '$apiEndpoint/check_in_times';
  return PcoCollection.fromApiCall<PcoCheckInsCheckInTime>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsStation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_at
Future<PcoCollection<PcoCheckInsStation>> getStationsCheckedInAt({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsStation.canInclude;
  var url = '$apiEndpoint/checked_in_at';
  return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsPerson objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_by
Future<PcoCollection<PcoCheckInsPerson>> getPersonsCheckedInBy({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
  var url = '$apiEndpoint/checked_in_by';
  return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsPerson objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_out_by
Future<PcoCollection<PcoCheckInsPerson>> getPersonsCheckedOutBy({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
  var url = '$apiEndpoint/checked_out_by';
  return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event
Future<PcoCollection<PcoCheckInsEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
  var url = '$apiEndpoint/event';
  return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsEventPeriod objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period
Future<PcoCollection<PcoCheckInsEventPeriod>> getEventPeriods({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
  var url = '$apiEndpoint/event_period';
  return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsEventTime objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_times
Future<PcoCollection<PcoCheckInsEventTime>> getEventTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
  var url = '$apiEndpoint/event_times';
  return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsLocation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations
Future<PcoCollection<PcoCheckInsLocation>> getLocations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
  var url = '$apiEndpoint/locations';
  return PcoCollection.fromApiCall<PcoCheckInsLocation>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsOption objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/options
Future<PcoCollection<PcoCheckInsOption>> getOptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsOption.canInclude;
  var url = '$apiEndpoint/options';
  return PcoCollection.fromApiCall<PcoCheckInsOption>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsPerson objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/person
Future<PcoCollection<PcoCheckInsPerson>> getPersons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
  var url = '$apiEndpoint/person';
  return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:apiVersion);
}
    


}
