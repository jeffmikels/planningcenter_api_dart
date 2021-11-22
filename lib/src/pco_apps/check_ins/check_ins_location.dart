/// This file was generated on 2021-11-22T16:57:41.361610


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
/// possible includes with parameter ?include=a,b
/// @event: include associated event 
/// @locations: include associated locations 
/// @options: include associated options 
/// @parent: include associated parent 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @kind (URLParameter), prefix with a hyphen (-kind) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
///
class PcoCheckInsLocation extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Location';
  static const String kTypeId = 'location';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'location-event-locations';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/events/1/locations';

  /// possible includes with parameter ?include=a,b
  /// @event: include associated event 
  /// @locations: include associated locations 
  /// @options: include associated options 
  /// @parent: include associated parent 
  static List<String> get canInclude => ['event','locations','options','parent'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @kind (URLParameter), prefix with a hyphen (-kind) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['kind','name'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoCheckInsLocation() : super(kPcoApplication, kTypeString);
  PcoCheckInsLocation.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations;
  static Future<List<PcoCheckInsLocation>> getManyFromCheckInAndLocationIds(String checkInId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/locations;
  static Future<List<PcoCheckInsLocation>> getManyFromEventAndLocationIds(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/events/$eventId/locations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/available_locations;
  static Future<List<PcoCheckInsLocation>> getManyFromEventTimeAndAvailableLocationIds(String eventTimeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/available_locations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/location;
  static Future<List<PcoCheckInsLocation>> getManyFromCheckInAndEventPeriodAndLocationEventPeriodAndLocationIds(String checkInId,String eventPeriodId,String locationEventPeriodId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/location';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/location;
  static Future<List<PcoCheckInsLocation>> getManyFromEventTimeAndLocationEventTimeAndLocationIds(String eventTimeId,String locationEventTimeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/location_event_times/$locationEventTimeId/location';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/location;
  static Future<List<PcoCheckInsLocation>> getManyFromLabelAndLocationLabelAndLocationIds(String labelId,String locationLabelId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/labels/$labelId/location_labels/$locationLabelId/location';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/locations;
  static Future<List<PcoCheckInsLocation>> getManyFromCheckInAndLocationAndLocationIds(String checkInId,String locationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/locations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/parent;
  static Future<List<PcoCheckInsLocation>> getManyFromCheckInAndLocationAndParentIds(String checkInId,String locationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/parent';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/location;
  static Future<List<PcoCheckInsLocation>> getManyFromStationAndLocationIds(String stationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsLocation> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/stations/$stationId/location';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocation.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations;
  static Future<PcoCheckInsLocation?> getSingleFromCheckInAndLocationIds(String checkInId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/locations;
  static Future<PcoCheckInsLocation?> getSingleFromEventAndLocationIds(String eventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/events/$eventId/locations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/available_locations;
  static Future<PcoCheckInsLocation?> getSingleFromEventTimeAndAvailableLocationIds(String eventTimeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/available_locations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/location;
  static Future<PcoCheckInsLocation?> getSingleFromCheckInAndEventPeriodAndLocationEventPeriodAndLocationIds(String checkInId,String eventPeriodId,String locationEventPeriodId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/location' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/location;
  static Future<PcoCheckInsLocation?> getSingleFromEventTimeAndLocationEventTimeAndLocationIds(String eventTimeId,String locationEventTimeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/location_event_times/$locationEventTimeId/location' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/location;
  static Future<PcoCheckInsLocation?> getSingleFromLabelAndLocationLabelAndLocationIds(String labelId,String locationLabelId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/labels/$labelId/location_labels/$locationLabelId/location' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/locations;
  static Future<PcoCheckInsLocation?> getSingleFromCheckInAndLocationAndLocationIds(String checkInId,String locationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/locations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/parent;
  static Future<PcoCheckInsLocation?> getSingleFromCheckInAndLocationAndParentIds(String checkInId,String locationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/parent' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/location;
  static Future<PcoCheckInsLocation?> getSingleFromStationAndLocationIds(String stationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsLocation?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '/check-ins/v2/stations/$stationId/location' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocation.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/check_ins
Future<List<PcoCheckInsCheckIn>> getCheckIns({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
  List<PcoCheckInsCheckIn> retval = [];
  var url = '$apiEndpoint/check_ins';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsCheckIn.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/event
Future<List<PcoCheckInsEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
  List<PcoCheckInsEvent> retval = [];
  var url = '$apiEndpoint/event';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEvent.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocationEventPeriod objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_periods
Future<List<PcoCheckInsLocationEventPeriod>> getLocationEventPeriods({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLocationEventPeriod.canInclude;
  List<PcoCheckInsLocationEventPeriod> retval = [];
  var url = '$apiEndpoint/location_event_periods';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocationEventPeriod.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocationEventTime objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_times
Future<List<PcoCheckInsLocationEventTime>> getLocationEventTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLocationEventTime.canInclude;
  List<PcoCheckInsLocationEventTime> retval = [];
  var url = '$apiEndpoint/location_event_times';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocationEventTime.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocationLabel objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_labels
Future<List<PcoCheckInsLocationLabel>> getLocationLabels({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLocationLabel.canInclude;
  List<PcoCheckInsLocationLabel> retval = [];
  var url = '$apiEndpoint/location_labels';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocationLabel.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/locations
Future<List<PcoCheckInsLocation>> getLocations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
  List<PcoCheckInsLocation> retval = [];
  var url = '$apiEndpoint/locations';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocation.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsOption objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/options
Future<List<PcoCheckInsOption>> getOptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsOption.canInclude;
  List<PcoCheckInsOption> retval = [];
  var url = '$apiEndpoint/options';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsOption.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/parent
Future<List<PcoCheckInsLocation>> getLocationsParent({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
  List<PcoCheckInsLocation> retval = [];
  var url = '$apiEndpoint/parent';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocation.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
