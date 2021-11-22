/// This file was generated on 2021-11-22T16:37:08.766757


import '../../pco.dart';

/// This class represents a PCO Services BlockoutScheduleConflict Object
/// 
/// Application: services
/// Id:          blockout_schedule_conflict
/// Type:        BlockoutScheduleConflict
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"BlockoutScheduleConflict","id":"1","attributes":{"dates":"string","organization_name":"string","person_avatar":"string","person_name":"string","position_display_times":"string","service_type_name":"string","short_dates":"string","status":"string","team_name":"string","team_position_name":"string","sort_date":"2000-01-01T12:00:00Z","can_accept_partial":true},"relationships":{"organization":{"data":{"type":"Organization","id":"1"}},"person":{"data":{"type":"Person","id":"1"}},"plan":{"data":{"type":"Plan","id":"1"}},"plan_person":{"data":{"type":"PlanPerson","id":"1"}},"service_type":{"data":{"type":"ServiceType","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesBlockoutScheduleConflict extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'BlockoutScheduleConflict';
  static const String kTypeId = 'blockout_schedule_conflict';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kDates = 'dates';
  static const kOrganizationName = 'organization_name';
  static const kPersonAvatar = 'person_avatar';
  static const kPersonName = 'person_name';
  static const kPositionDisplayTimes = 'position_display_times';
  static const kServiceTypeName = 'service_type_name';
  static const kShortDates = 'short_dates';
  static const kStatus = 'status';
  static const kTeamName = 'team_name';
  static const kTeamPositionName = 'team_position_name';
  static const kSortDate = 'sort_date';
  static const kCanAcceptPartial = 'can_accept_partial';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get dates => attributes[kDates] ?? '';
  String get organizationName => attributes[kOrganizationName] ?? '';
  String get personAvatar => attributes[kPersonAvatar] ?? '';
  String get personName => attributes[kPersonName] ?? '';
  String get positionDisplayTimes => attributes[kPositionDisplayTimes] ?? '';
  String get serviceTypeName => attributes[kServiceTypeName] ?? '';
  String get shortDates => attributes[kShortDates] ?? '';
  String get status => attributes[kStatus] ?? '';
  String get teamName => attributes[kTeamName] ?? '';
  String get teamPositionName => attributes[kTeamPositionName] ?? '';
  DateTime get sortDate => DateTime.parse(attributes[kSortDate] ?? '');
  bool get isCanAcceptPartial => attributes[kCanAcceptPartial] == true;




  PcoServicesBlockoutScheduleConflict() : super(kPcoApplication, kTypeString);
  PcoServicesBlockoutScheduleConflict.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);








}
