/// This file was generated on 2021-11-17T23:59:27.100095


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
class PcoServicesBlockoutScheduleConflict extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'BlockoutScheduleConflict';
  static const String typeId = 'blockout_schedule_conflict';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoServicesBlockoutScheduleConflict() : super(pcoApplication, typeString);
  PcoServicesBlockoutScheduleConflict.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);







}
