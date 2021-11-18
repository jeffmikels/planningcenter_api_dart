/// This file was generated on 2021-11-17T23:59:29.916906


import '../../pco.dart';

/// This class represents a PCO People SchoolOption Object
/// 
/// Application: people
/// Id:          school_option
/// Type:        SchoolOption
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A school option represents a school name, school type, grades, etc. and can be selected for a person.
/// 
/// Example:
/// 
/// {"type":"SchoolOption","id":"1","attributes":{"value":"string","sequence":1,"beginning_grade":"string","ending_grade":"string","school_types":[]},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/school_options
/// 
class PcoPeopleSchoolOption extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'SchoolOption';
  static const String typeId = 'school_option';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'schooloption-organization-school_options';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/school_options';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kValue = 'value';
  static const kSequence = 'sequence';
  static const kBeginningGrade = 'beginning_grade';
  static const kEndingGrade = 'ending_grade';
  static const kSchoolTypes = 'school_types';


  // getters and setters
  @override
  List<String> get createAllowed => ['value','sequence','beginning_grade','ending_grade','school_types'];
  @override
  List<String> get updateAllowed => ['value','sequence','beginning_grade','ending_grade','school_types'];

  String get value => attributes[kValue] ?? '';
  int get sequence => attributes[kSequence] ?? 0;
  String get beginningGrade => attributes[kBeginningGrade] ?? '';
  String get endingGrade => attributes[kEndingGrade] ?? '';
  List get schoolTypes => attributes[kSchoolTypes] ?? [];


  set value(String s) => attributes[kValue] = s;
  set sequence(int n) => attributes[kSequence] = n;
  set beginningGrade(String s) => attributes[kBeginningGrade] = s;
  set endingGrade(String s) => attributes[kEndingGrade] = s;
  set schoolTypes(List a) => attributes[kSchoolTypes] = a;


  PcoPeopleSchoolOption() : super(pcoApplication, typeString);
  PcoPeopleSchoolOption.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleSchoolOption Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/school_options;
  static Future<List<PcoPeopleSchoolOption>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleSchoolOption> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/school_options';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleSchoolOption.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleSchoolOption Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/school;
  static Future<List<PcoPeopleSchoolOption>> getManyFromPeopleAndSchoolIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleSchoolOption> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/school';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleSchoolOption.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleSchoolOption Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/school_options/1/promotes_to_school;
  static Future<List<PcoPeopleSchoolOption>> getManyFromSchoolOptionAndPromotesToSchoolIds(String schoolOptionId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleSchoolOption> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/school_options/$schoolOptionId/promotes_to_school';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleSchoolOption.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleSchoolOption Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/school_options;
  static Future<PcoPeopleSchoolOption?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleSchoolOption?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/school_options' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleSchoolOption.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleSchoolOption Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/school;
  static Future<PcoPeopleSchoolOption?> getSingleFromPeopleAndSchoolIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleSchoolOption?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/school' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleSchoolOption.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleSchoolOption Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/school_options/1/promotes_to_school;
  static Future<PcoPeopleSchoolOption?> getSingleFromSchoolOptionAndPromotesToSchoolIds(String schoolOptionId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleSchoolOption?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/school_options/$schoolOptionId/promotes_to_school' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleSchoolOption.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleSchoolOption objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/school_options/1/promotes_to_school
Future<List<PcoPeopleSchoolOption>> getSchoolOptionsPromotesToSchool({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleSchoolOption> retval = [];
  var url = '$apiEndpoint/promotes_to_school';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleSchoolOption.fromJson(itemData));
    }
  }
  return retval;
}
    

}
