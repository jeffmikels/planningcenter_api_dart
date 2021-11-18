/// This file was generated on 2021-11-17T23:59:27.307329


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
class PcoPeopleCarrier extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'Carrier';
  static const String typeId = 'carrier';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'carrier-organization-carriers';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/carriers';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoPeopleCarrier() : super(pcoApplication, typeString);
  PcoPeopleCarrier.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleCarrier Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/carriers;
  static Future<List<PcoPeopleCarrier>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleCarrier> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/carriers';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleCarrier.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleCarrier Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/carriers;
  static Future<PcoPeopleCarrier?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleCarrier?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/carriers' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleCarrier.fromJson(res.data);
    }
    return retval;
  }




}
