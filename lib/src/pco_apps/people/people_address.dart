/// This file was generated on 2021-11-17T23:59:27.303727


import '../../pco.dart';

/// This class represents a PCO People Address Object
/// 
/// Application: people
/// Id:          address
/// Type:        Address
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// An address represents a physical and/or mailing address for a person.
/// 
/// Example:
/// 
/// {"type":"Address","id":"1","attributes":{"city":"string","state":"string","zip":"string","street":"string","location":"string","primary":true,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{"person":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/addresses
/// 
class PcoPeopleAddres extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'Address';
  static const String typeId = 'address';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'address-organization-addresses';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/addresses';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kCity = 'city';
  static const kState = 'state';
  static const kZip = 'zip';
  static const kStreet = 'street';
  static const kLocation = 'location';
  static const kPrimary = 'primary';


  // getters and setters
  @override
  List<String> get createAllowed => ['city','state','zip','street','location','primary'];
  @override
  List<String> get updateAllowed => ['city','state','zip','street','location','primary'];

  String get city => attributes[kCity] ?? '';
  String get state => attributes[kState] ?? '';
  String get zip => attributes[kZip] ?? '';
  String get street => attributes[kStreet] ?? '';
  String get location => attributes[kLocation] ?? '';
  bool get isPrimary => attributes[kPrimary] == true;


  set city(String s) => attributes[kCity] = s;
  set state(String s) => attributes[kState] = s;
  set zip(String s) => attributes[kZip] = s;
  set street(String s) => attributes[kStreet] = s;
  set location(String s) => attributes[kLocation] = s;
  set isPrimary(bool b) => attributes[kPrimary] = b;


  PcoPeopleAddres() : super(pcoApplication, typeString);
  PcoPeopleAddres.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleAddres Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/addresses;
  static Future<List<PcoPeopleAddres>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleAddres> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/addresses';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleAddres.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleAddres Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/addresses;
  static Future<List<PcoPeopleAddres>> getManyFromPeopleAndAddresIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleAddres> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/addresses';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleAddres.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleAddres Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/addresses;
  static Future<PcoPeopleAddres?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleAddres?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/addresses' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleAddres.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleAddres Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/addresses;
  static Future<PcoPeopleAddres?> getSingleFromPeopleAndAddresIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleAddres?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/addresses' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleAddres.fromJson(res.data);
    }
    return retval;
  }




}
