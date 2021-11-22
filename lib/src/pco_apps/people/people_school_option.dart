/// This file was generated on 2021-11-22T16:37:09.175314


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @beginning_grade (URLParameter), query on a specific beginning_grade, example: ?where[beginning_grade]=string
/// @ending_grade (URLParameter), query on a specific ending_grade, example: ?where[ending_grade]=string
/// @school_types (URLParameter), query on a specific school_types, example: ?where[school_types]=[]
/// @sequence (URLParameter), query on a specific sequence, example: ?where[sequence]=1
/// @value (URLParameter), query on a specific value, example: ?where[value]=string
/// possible orderings with parameter ?order=
/// @beginning_grade (URLParameter), prefix with a hyphen (-beginning_grade) to reverse the order
/// @ending_grade (URLParameter), prefix with a hyphen (-ending_grade) to reverse the order
/// @sequence (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// @value (URLParameter), prefix with a hyphen (-value) to reverse the order
///
class PcoPeopleSchoolOption extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'SchoolOption';
  static const String kTypeId = 'school_option';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'schooloption-organization-school_options';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/school_options';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @beginning_grade (URLParameter), query on a specific beginning_grade, example: ?where[beginning_grade]=string
  /// @ending_grade (URLParameter), query on a specific ending_grade, example: ?where[ending_grade]=string
  /// @school_types (URLParameter), query on a specific school_types, example: ?where[school_types]=[]
  /// @sequence (URLParameter), query on a specific sequence, example: ?where[sequence]=1
  /// @value (URLParameter), query on a specific value, example: ?where[value]=string
  static List<String> get canQuery => ['beginning_grade','ending_grade','school_types','sequence','value'];

  /// possible orderings with parameter ?order=
  /// @beginning_grade (URLParameter), prefix with a hyphen (-beginning_grade) to reverse the order
  /// @ending_grade (URLParameter), prefix with a hyphen (-ending_grade) to reverse the order
  /// @sequence (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// @value (URLParameter), prefix with a hyphen (-value) to reverse the order
  static List<String> get canOrderBy => ['beginning_grade','ending_grade','sequence','value'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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


  PcoPeopleSchoolOption() : super(kPcoApplication, kTypeString);
  PcoPeopleSchoolOption.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleSchoolOption Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/school_options;
  static Future<List<PcoPeopleSchoolOption>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleSchoolOption> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    var url = '/people/v2/school_options';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleSchoolOption.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleSchoolOption Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/school;
  static Future<List<PcoPeopleSchoolOption>> getManyFromPeopleAndSchoolIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleSchoolOption> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    var url = '/people/v2/people/$peopleId/school';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleSchoolOption.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleSchoolOption Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/school_options/1/promotes_to_school;
  static Future<List<PcoPeopleSchoolOption>> getManyFromSchoolOptionAndPromotesToSchoolIds(String schoolOptionId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleSchoolOption> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    var url = '/people/v2/school_options/$schoolOptionId/promotes_to_school';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleSchoolOption.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleSchoolOption Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/school_options;
  static Future<PcoPeopleSchoolOption?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleSchoolOption?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    var url = '/people/v2/school_options' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleSchoolOption.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleSchoolOption Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/school;
  static Future<PcoPeopleSchoolOption?> getSingleFromPeopleAndSchoolIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleSchoolOption?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    var url = '/people/v2/people/$peopleId/school' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleSchoolOption.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleSchoolOption Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/school_options/1/promotes_to_school;
  static Future<PcoPeopleSchoolOption?> getSingleFromSchoolOptionAndPromotesToSchoolIds(String schoolOptionId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleSchoolOption?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    var url = '/people/v2/school_options/$schoolOptionId/promotes_to_school' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleSchoolOption.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleSchoolOption objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/school_options/1/promotes_to_school
Future<List<PcoPeopleSchoolOption>> getSchoolOptionsPromotesToSchool({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
  List<PcoPeopleSchoolOption> retval = [];
  var url = '$apiEndpoint/promotes_to_school';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleSchoolOption.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
