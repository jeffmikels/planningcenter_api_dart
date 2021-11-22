/// This file was generated on 2021-11-22T16:57:41.065947


import '../../pco.dart';

/// This class represents a PCO Services Contributor Object
/// 
/// Application: services
/// Id:          contributor
/// Type:        Contributor
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A Contributor Resource
/// 
/// Example:
/// 
/// {"type":"Contributor","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","contributable_action":"string","contributable_category":"string","contributable_type":"string","full_name":"string","photo_thumbnail_url":"string"},"relationships":{"plan":{"data":{"type":"Plan","id":"1"}},"person":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/contributors
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoServicesContributor extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Contributor';
  static const String kTypeId = 'contributor';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'contributor-plan-contributors';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/contributors';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kContributableAction = 'contributable_action';
  static const kContributableCategory = 'contributable_category';
  static const kContributableType = 'contributable_type';
  static const kFullName = 'full_name';
  static const kPhotoThumbnailUrl = 'photo_thumbnail_url';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get contributableAction => attributes[kContributableAction] ?? '';
  String get contributableCategory => attributes[kContributableCategory] ?? '';
  String get contributableType => attributes[kContributableType] ?? '';
  String get fullName => attributes[kFullName] ?? '';
  String get photoThumbnailUrl => attributes[kPhotoThumbnailUrl] ?? '';




  PcoServicesContributor() : super(kPcoApplication, kTypeString);
  PcoServicesContributor.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesContributor Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/contributors;
  static Future<List<PcoServicesContributor>> getManyFromServiceTypeAndPlanAndContributorIds(String serviceTypeId,String planId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesContributor> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesContributor.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/contributors';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesContributor.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesContributor Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/contributors;
  static Future<PcoServicesContributor?> getSingleFromServiceTypeAndPlanAndContributorIds(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesContributor?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesContributor.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/contributors' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesContributor.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
