/// This file was generated on 2021-11-25T00:07:20.544295


import '../../pco.dart';

/// This class represents a PCO People AnniversaryCouples Object
/// 
/// Application: people
/// Id:          anniversary_couples
/// Type:        AnniversaryCouples
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// Returns upcoming anniversary couples for the organization.
/// 
/// Example:
/// 
/// {"type":"AnniversaryCouples","id":"1","attributes":{},"relationships":{}}
/// 
/// Collection Only: true
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/anniversary_couples
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoPeopleAnniversaryCouple extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'AnniversaryCouples';
  static const String kTypeId = 'anniversary_couples';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'anniversarycouples-organization-anniversary_couples';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/anniversary_couples';

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





  PcoPeopleAnniversaryCouple() : super(kPcoApplication, kTypeString);
  PcoPeopleAnniversaryCouple.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleAnniversaryCouple Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/anniversary_couples;
  static Future<PcoCollection<PcoPeopleAnniversaryCouple>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleAnniversaryCouple.canInclude;
    var url = '/people/v2/anniversary_couples';
    return PcoCollection.fromApiCall<PcoPeopleAnniversaryCouple>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeopleAnniversaryCouple Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/anniversary_couples;
  static Future<PcoCollection<PcoPeopleAnniversaryCouple>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleAnniversaryCouple.canInclude;
    var url = '/people/v2/anniversary_couples' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleAnniversaryCouple>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleAnniversaryCouple.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }





}
