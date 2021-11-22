/// This file was generated on 2021-11-22T16:37:09.086072


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoPeopleBirthdayPeople extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'BirthdayPeople';
  static const String kTypeId = 'birthday_people';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'birthdaypeople-organization-birthday_people';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/birthday_people';

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


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];





  PcoPeopleBirthdayPeople() : super(kPcoApplication, kTypeString);
  PcoPeopleBirthdayPeople.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleBirthdayPeople Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/birthday_people;
  static Future<List<PcoPeopleBirthdayPeople>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleBirthdayPeople> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleBirthdayPeople.canInclude;
    var url = '/people/v2/birthday_people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleBirthdayPeople.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleBirthdayPeople Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/birthday_people;
  static Future<PcoPeopleBirthdayPeople?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleBirthdayPeople?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleBirthdayPeople.canInclude;
    var url = '/people/v2/birthday_people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleBirthdayPeople.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
