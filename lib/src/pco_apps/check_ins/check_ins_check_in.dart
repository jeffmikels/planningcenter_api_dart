/// This file was generated on 2021-11-18T13:57:09.855581


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
class PcoCheckInsCheckIn extends PcoResource {
  static const String pcoApplication = 'check-ins';
  static const String typeString = 'CheckIn';
  static const String typeId = 'check_in';
  static const String apiVersion = '2019-07-17';
  static const String shortestEdgeId = 'checkin-organization-check_ins';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/check_ins';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoCheckInsCheckIn() : super(pcoApplication, typeString);
  PcoCheckInsCheckIn.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/check_ins;
  static Future<List<PcoCheckInsCheckIn>> getManyFromCheckInAndCheckInGroupAndCheckInIds(String checkInId,String checkInGroupId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsCheckIn> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/check_ins';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckIn.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/check_ins;
  static Future<List<PcoCheckInsCheckIn>> getManyFromEventAndCheckInIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsCheckIn> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/check_ins';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckIn.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/check_ins;
  static Future<List<PcoCheckInsCheckIn>> getManyFromCheckInAndEventPeriodAndCheckInIds(String checkInId,String eventPeriodId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsCheckIn> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/check_ins';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckIn.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/check_ins;
  static Future<List<PcoCheckInsCheckIn>> getManyFromEventTimeAndCheckInIds(String eventTimeId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsCheckIn> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/event_times/$eventTimeId/check_ins';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckIn.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/check_ins;
  static Future<List<PcoCheckInsCheckIn>> getManyFromCheckInAndLocationAndCheckInIds(String checkInId,String locationId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsCheckIn> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/check_ins';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckIn.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/check_ins;
  static Future<List<PcoCheckInsCheckIn>> getManyFromCheckInAndEventPeriodAndLocationEventPeriodAndCheckInIds(String checkInId,String eventPeriodId,String locationEventPeriodId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsCheckIn> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/check_ins';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckIn.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/check_ins;
  static Future<List<PcoCheckInsCheckIn>> getManyFromEventTimeAndLocationEventTimeAndCheckInIds(String eventTimeId,String locationEventTimeId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsCheckIn> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/event_times/$eventTimeId/location_event_times/$locationEventTimeId/check_ins';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckIn.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins;
  static Future<List<PcoCheckInsCheckIn>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsCheckIn> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckIn.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/check_ins;
  static Future<List<PcoCheckInsCheckIn>> getManyFromPeopleAndCheckInIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsCheckIn> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/people/$peopleId/check_ins';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckIn.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/first_check_in;
  static Future<List<PcoCheckInsCheckIn>> getManyFromEventAndPersonEventAndFirstCheckInIds(String eventId,String personEventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsCheckIn> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/person_events/$personEventId/first_check_in';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckIn.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/last_check_in;
  static Future<List<PcoCheckInsCheckIn>> getManyFromEventAndPersonEventAndCheckInIds(String eventId,String personEventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsCheckIn> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/person_events/$personEventId/last_check_in';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckIn.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsCheckIn Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/checked_in_at_check_ins;
  static Future<List<PcoCheckInsCheckIn>> getManyFromStationAndCheckedInAtCheckInIds(String stationId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsCheckIn> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/stations/$stationId/checked_in_at_check_ins';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckIn.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/check_ins;
  static Future<PcoCheckInsCheckIn?> getSingleFromCheckInAndCheckInGroupAndCheckInIds(String checkInId,String checkInGroupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsCheckIn?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/check_ins' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckIn.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/check_ins;
  static Future<PcoCheckInsCheckIn?> getSingleFromEventAndCheckInIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsCheckIn?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/check_ins' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckIn.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/check_ins;
  static Future<PcoCheckInsCheckIn?> getSingleFromCheckInAndEventPeriodAndCheckInIds(String checkInId,String eventPeriodId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsCheckIn?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/check_ins' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckIn.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/check_ins;
  static Future<PcoCheckInsCheckIn?> getSingleFromEventTimeAndCheckInIds(String eventTimeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsCheckIn?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/event_times/$eventTimeId/check_ins' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckIn.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/check_ins;
  static Future<PcoCheckInsCheckIn?> getSingleFromCheckInAndLocationAndCheckInIds(String checkInId,String locationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsCheckIn?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/check_ins' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckIn.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/check_ins;
  static Future<PcoCheckInsCheckIn?> getSingleFromCheckInAndEventPeriodAndLocationEventPeriodAndCheckInIds(String checkInId,String eventPeriodId,String locationEventPeriodId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsCheckIn?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/check_ins' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckIn.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/check_ins;
  static Future<PcoCheckInsCheckIn?> getSingleFromEventTimeAndLocationEventTimeAndCheckInIds(String eventTimeId,String locationEventTimeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsCheckIn?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/event_times/$eventTimeId/location_event_times/$locationEventTimeId/check_ins' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckIn.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins;
  static Future<PcoCheckInsCheckIn?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsCheckIn?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckIn.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/check_ins;
  static Future<PcoCheckInsCheckIn?> getSingleFromPeopleAndCheckInIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsCheckIn?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/people/$peopleId/check_ins' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckIn.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/first_check_in;
  static Future<PcoCheckInsCheckIn?> getSingleFromEventAndPersonEventAndFirstCheckInIds(String eventId,String personEventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsCheckIn?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/person_events/$personEventId/first_check_in' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckIn.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/last_check_in;
  static Future<PcoCheckInsCheckIn?> getSingleFromEventAndPersonEventAndCheckInIds(String eventId,String personEventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsCheckIn?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/person_events/$personEventId/last_check_in' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckIn.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsCheckIn Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/checked_in_at_check_ins;
  static Future<PcoCheckInsCheckIn?> getSingleFromStationAndCheckedInAtCheckInIds(String stationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsCheckIn?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/stations/$stationId/checked_in_at_check_ins' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckIn.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsCheckInGroup objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group
Future<List<PcoCheckInsCheckInGroup>> getCheckInGroups({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsCheckInGroup> retval = [];
  var url = '$apiEndpoint/check_in_group';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsCheckInGroup.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsCheckInTime objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times
Future<List<PcoCheckInsCheckInTime>> getCheckInTimes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsCheckInTime> retval = [];
  var url = '$apiEndpoint/check_in_times';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsCheckInTime.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsStation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_at
Future<List<PcoCheckInsStation>> getStationsCheckedInAt({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsStation> retval = [];
  var url = '$apiEndpoint/checked_in_at';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsStation.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsPerson objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_by
Future<List<PcoCheckInsPerson>> getPersonsCheckedInBy({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsPerson> retval = [];
  var url = '$apiEndpoint/checked_in_by';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsPerson objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_out_by
Future<List<PcoCheckInsPerson>> getPersonsCheckedOutBy({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsPerson> retval = [];
  var url = '$apiEndpoint/checked_out_by';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event
Future<List<PcoCheckInsEvent>> getEvents({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsEvent> retval = [];
  var url = '$apiEndpoint/event';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEvent.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsEventPeriod objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period
Future<List<PcoCheckInsEventPeriod>> getEventPeriods({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsEventPeriod> retval = [];
  var url = '$apiEndpoint/event_period';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEventPeriod.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsEventTime objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_times
Future<List<PcoCheckInsEventTime>> getEventTimes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsEventTime> retval = [];
  var url = '$apiEndpoint/event_times';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEventTime.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations
Future<List<PcoCheckInsLocation>> getLocations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLocation> retval = [];
  var url = '$apiEndpoint/locations';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocation.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsOption objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/options
Future<List<PcoCheckInsOption>> getOptions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsOption> retval = [];
  var url = '$apiEndpoint/options';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsOption.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsPerson objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/person
Future<List<PcoCheckInsPerson>> getPersons({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsPerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsPerson.fromJson(itemData));
    }
  }
  return retval;
}
    

}
