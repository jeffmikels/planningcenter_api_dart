/// This file was generated on 2021-11-18T13:57:10.211452


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
  static const String pcoApplication = 'giving';
  static const String typeString = 'PaymentSource';
  static const String typeId = 'payment_source';
  static const String apiVersion = '2019-10-18';
  static const String shortestEdgeId = 'paymentsource-organization-payment_sources';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/payment_sources';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';


  // getters and setters
  @override
  List<String> get createAllowed => ['name'];
  @override
  List<String> get updateAllowed => ['name'];

  String get name => attributes[kName] ?? '';


  set name(String s) => attributes[kName] = s;


  PcoGivingPaymentSource() : super(pcoApplication, typeString);
  PcoGivingPaymentSource.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGivingPaymentSource Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/payment_sources;
  static Future<List<PcoGivingPaymentSource>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoGivingPaymentSource> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/payment_sources';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
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
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
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
