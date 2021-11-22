/// This file was generated on 2021-11-22T16:37:09.089162


import '../../pco.dart';

/// This class represents a PCO People Carrier Object
/// 
/// Application: people
/// Id:          carrier
/// Type:        Carrier
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Carrier","id":"1","attributes":{"value":"string","name":"string","international":true},"relationships":{}}
/// 
/// Collection Only: true
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/carriers
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @international (URLParameter), prefix with a hyphen (-international) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
///
class PcoPeopleCarrier extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Carrier';
  static const String kTypeId = 'carrier';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'carrier-organization-carriers';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/carriers';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @international (URLParameter), prefix with a hyphen (-international) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['international','name'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kValue = 'value';
  static const kName = 'name';
  static const kInternational = 'international';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get value => attributes[kValue] ?? '';
  String get name => attributes[kName] ?? '';
  bool get isInternational => attributes[kInternational] == true;




  PcoPeopleCarrier() : super(kPcoApplication, kTypeString);
  PcoPeopleCarrier.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleCarrier Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/carriers;
  static Future<List<PcoPeopleCarrier>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleCarrier> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCarrier.canInclude;
    var url = '/people/v2/carriers';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleCarrier.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleCarrier Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/carriers;
  static Future<PcoPeopleCarrier?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleCarrier?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCarrier.canInclude;
    var url = '/people/v2/carriers' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleCarrier.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
