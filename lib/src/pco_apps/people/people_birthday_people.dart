/// This file was generated on 2021-11-17T23:59:27.305474


import '../../pco.dart';

/// This class represents a PCO People BirthdayPeople Object
/// 
/// Application: people
/// Id:          birthday_people
/// Type:        BirthdayPeople
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// Returns upcoming birthdays for the organization.
/// 
/// Example:
/// 
/// {"type":"BirthdayPeople","id":"1","attributes":{},"relationships":{}}
/// 
/// Collection Only: true
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/birthday_people
/// 
class PcoPeopleBirthdayPeople extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'BirthdayPeople';
  static const String typeId = 'birthday_people';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'birthdaypeople-organization-birthday_people';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/birthday_people';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];





  PcoPeopleBirthdayPeople() : super(pcoApplication, typeString);
  PcoPeopleBirthdayPeople.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleBirthdayPeople Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/birthday_people;
  static Future<List<PcoPeopleBirthdayPeople>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleBirthdayPeople> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/birthday_people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleBirthdayPeople.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleBirthdayPeople Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/birthday_people;
  static Future<PcoPeopleBirthdayPeople?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleBirthdayPeople?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/birthday_people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleBirthdayPeople.fromJson(res.data);
    }
    return retval;
  }




}
