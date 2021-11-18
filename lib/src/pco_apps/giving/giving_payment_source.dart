/// This file was generated on 2021-11-18T15:28:02.203814


import '../../pco.dart';

/// This class represents a PCO Giving PaymentSource Object
/// 
/// Application: giving
/// Id:          payment_source
/// Type:        PaymentSource
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"PaymentSource","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","name":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2/payment_sources
/// 
class PcoGivingPaymentSource extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'PaymentSource';
  static const String kTypeId = 'payment_source';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'paymentsource-organization-payment_sources';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/payment_sources';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kName = 'name';


  // getters and setters
  @override
  List<String> get createAllowed => ['name'];
  @override
  List<String> get updateAllowed => ['name'];

  String get name => attributes[kName] ?? '';


  set name(String s) => attributes[kName] = s;


  PcoGivingPaymentSource() : super(kPcoApplication, kTypeString);
  PcoGivingPaymentSource.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoGivingPaymentSource Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/payment_sources;
  static Future<List<PcoGivingPaymentSource>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoGivingPaymentSource> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/payment_sources';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingPaymentSource.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingPaymentSource Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/payment_sources;
  static Future<PcoGivingPaymentSource?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingPaymentSource?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/payment_sources' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingPaymentSource.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGivingDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/payment_sources/1/donations
Future<List<PcoGivingDonation>> getDonations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingDonation> retval = [];
  var url = '$apiEndpoint/donations';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingDonation.fromJson(itemData));
    }
  }
  return retval;
}
    

}
