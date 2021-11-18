/// This file was generated on 2021-11-17T23:59:27.199209


import '../../pco.dart';

/// This class represents a PCO CheckIns Location Object
/// 
/// Application: check-ins
/// Id:          location
/// Type:        Location
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// A place where people may check in to for a given event.\nSome locations have `kind="Folder"`, which means that people\ncan't check-in here, but this location contains other locations.\nYou can get its contents from the `locations` attribute.\nYou can get a location's parent folder from the `parent` attribute.\n(If it's not in a folder, `parent` will be empty.)\n
/// 
/// Example:
/// 
/// {"type":"Location","id":"1","attributes":{"name":"string","kind":"string","opened":true,"questions":"string","age_min_in_months":1,"age_max_in_months":1,"age_range_by":"string","age_on":"2000-01-01","child_or_adult":"string","effective_date":"2000-01-01","gender":"string","grade_min":1,"grade_max":1,"max_occupancy":1,"min_volunteers":1,"attendees_per_volunteer":1,"position":1,"updated_at":"2000-01-01T12:00:00Z","created_at":"2000-01-01T12:00:00Z"},"relationships":{"parent":{"data":{"type":"Parent","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations
/// 
class PcoCheckInsLocation extends PcoResource {
  static const String pcoApplication = 'check-ins';
  static const String typeString = 'Location';
  static const String typeId = 'location';
  static const String apiVersion = '2019-07-17';
  static const String shortestEdgeId = 'location-event-locations';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/events/1/locations';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kKind = 'kind';
  static const kOpened = 'opened';
  static const kQuestions = 'questions';
  static const kAgeMinInMonths = 'age_min_in_months';
  static const kAgeMaxInMonths = 'age_max_in_months';
  static const kAgeRangeBy = 'age_range_by';
  static const kAgeOn = 'age_on';
  static const kChildOrAdult = 'child_or_adult';
  static const kEffectiveDate = 'effective_date';
  static const kGender = 'gender';
  static const kGradeMin = 'grade_min';
  static const kGradeMax = 'grade_max';
  static const kMaxOccupancy = 'max_occupancy';
  static const kMinVolunteers = 'min_volunteers';
  static const kAttendeesPerVolunteer = 'attendees_per_volunteer';
  static const kPosition = 'position';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';
  String get kind => attributes[kKind] ?? '';
  bool get isOpened => attributes[kOpened] == true;
  String get questions => attributes[kQuestions] ?? '';
  int get ageMinInMonths => attributes[kAgeMinInMonths] ?? 0;
  int get ageMaxInMonths => attributes[kAgeMaxInMonths] ?? 0;
  String get ageRangeBy => attributes[kAgeRangeBy] ?? '';
  String get ageOn => attributes[kAgeOn] ?? '';
  String get childOrAdult => attributes[kChildOrAdult] ?? '';
  String get effectiveDate => attributes[kEffectiveDate] ?? '';
  String get gender => attributes[kGender] ?? '';
  int get gradeMin => attributes[kGradeMin] ?? 0;
  int get gradeMax => attributes[kGradeMax] ?? 0;
  int get maxOccupancy => attributes[kMaxOccupancy] ?? 0;
  int get minVolunteers => attributes[kMinVolunteers] ?? 0;
  int get attendeesPerVolunteer => attributes[kAttendeesPerVolunteer] ?? 0;
  int get position => attributes[kPosition] ?? 0;




  PcoCheckInsLocation() : super(pcoApplication, typeString);
  PcoCheckInsLocation.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations;
  static Future<List<PcoCheckInsLocation>> getManyFromCheckInAndLocationIds(String checkInId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/locations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/locations;
  static Future<List<PcoCheckInsLocation>> getManyFromEventAndLocationIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/locations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/available_locations;
  static Future<List<PcoCheckInsLocation>> getManyFromEventTimeAndAvailableLocationIds(String eventTimeId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/event_times/$eventTimeId/available_locations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/location;
  static Future<List<PcoCheckInsLocation>> getManyFromCheckInAndEventPeriodAndLocationEventPeriodAndLocationIds(String checkInId,String eventPeriodId,String locationEventPeriodId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/location';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/location;
  static Future<List<PcoCheckInsLocation>> getManyFromEventTimeAndLocationEventTimeAndLocationIds(String eventTimeId,String locationEventTimeId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/event_times/$eventTimeId/location_event_times/$locationEventTimeId/location';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/location;
  static Future<List<PcoCheckInsLocation>> getManyFromLabelAndLocationLabelAndLocationIds(String labelId,String locationLabelId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/labels/$labelId/location_labels/$locationLabelId/location';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/locations;
  static Future<List<PcoCheckInsLocation>> getManyFromCheckInAndLocationAndLocationIds(String checkInId,String locationId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/locations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/parent;
  static Future<List<PcoCheckInsLocation>> getManyFromCheckInAndLocationAndParentIds(String checkInId,String locationId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/parent';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/location;
  static Future<List<PcoCheckInsLocation>> getManyFromStationAndLocationIds(String stationId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/stations/$stationId/location';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations;
  static Future<PcoCheckInsLocation?> getSingleFromCheckInAndLocationIds(String checkInId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/locations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/locations;
  static Future<PcoCheckInsLocation?> getSingleFromEventAndLocationIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/locations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/available_locations;
  static Future<PcoCheckInsLocation?> getSingleFromEventTimeAndAvailableLocationIds(String eventTimeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/event_times/$eventTimeId/available_locations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/location;
  static Future<PcoCheckInsLocation?> getSingleFromCheckInAndEventPeriodAndLocationEventPeriodAndLocationIds(String checkInId,String eventPeriodId,String locationEventPeriodId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/location' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/location;
  static Future<PcoCheckInsLocation?> getSingleFromEventTimeAndLocationEventTimeAndLocationIds(String eventTimeId,String locationEventTimeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/event_times/$eventTimeId/location_event_times/$locationEventTimeId/location' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/location;
  static Future<PcoCheckInsLocation?> getSingleFromLabelAndLocationLabelAndLocationIds(String labelId,String locationLabelId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/labels/$labelId/location_labels/$locationLabelId/location' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/locations;
  static Future<PcoCheckInsLocation?> getSingleFromCheckInAndLocationAndLocationIds(String checkInId,String locationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/locations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/parent;
  static Future<PcoCheckInsLocation?> getSingleFromCheckInAndLocationAndParentIds(String checkInId,String locationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/parent' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/location;
  static Future<PcoCheckInsLocation?> getSingleFromStationAndLocationIds(String stationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/stations/$stationId/location' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/check_ins
Future<List<PcoCheckInsCheckIn>> getCheckIns({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsCheckIn> retval = [];
  var url = '$apiEndpoint/check_ins';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsCheckIn.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/event
Future<List<PcoCheckInsEvent>> getEvents({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsEvent> retval = [];
  var url = '$apiEndpoint/event';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEvent.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocationEventPeriod objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_periods
Future<List<PcoCheckInsLocationEventPeriod>> getLocationEventPeriods({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLocationEventPeriod> retval = [];
  var url = '$apiEndpoint/location_event_periods';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocationEventPeriod.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocationEventTime objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_times
Future<List<PcoCheckInsLocationEventTime>> getLocationEventTimes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLocationEventTime> retval = [];
  var url = '$apiEndpoint/location_event_times';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocationEventTime.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocationLabel objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_labels
Future<List<PcoCheckInsLocationLabel>> getLocationLabels({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLocationLabel> retval = [];
  var url = '$apiEndpoint/location_labels';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocationLabel.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/locations
Future<List<PcoCheckInsLocation>> getLocations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLocation> retval = [];
  var url = '$apiEndpoint/locations';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocation.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsOption objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/options
Future<List<PcoCheckInsOption>> getOptions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsOption> retval = [];
  var url = '$apiEndpoint/options';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsOption.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/parent
Future<List<PcoCheckInsLocation>> getLocationsParent({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLocation> retval = [];
  var url = '$apiEndpoint/parent';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocation.fromJson(itemData));
    }
  }
  return retval;
}
    

}
