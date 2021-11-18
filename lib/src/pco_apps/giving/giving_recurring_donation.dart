/// This file was generated on 2021-11-17T23:59:30.041211


import '../../pco.dart';

/// This class represents a PCO Giving RecurringDonation Object
/// 
/// Application: giving
/// Id:          recurring_donation
/// Type:        RecurringDonation
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"RecurringDonation","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","release_hold_at":"2000-01-01T12:00:00Z","amount_cents":1,"status":"string","last_donation_received_at":"2000-01-01T12:00:00Z","next_occurrence":"2000-01-01T12:00:00Z","schedule":{"day_in_month":{"day":1}},"amount_currency":"USD"},"relationships":{"person":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2/recurring_donations
/// 
class PcoGivingRecurringDonation extends PcoResource {
  static const String pcoApplication = 'giving';
  static const String typeString = 'RecurringDonation';
  static const String typeId = 'recurring_donation';
  static const String apiVersion = '2019-10-18';
  static const String shortestEdgeId = 'recurringdonation-organization-recurring_donations';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/recurring_donations';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kReleaseHoldAt = 'release_hold_at';
  static const kAmountCents = 'amount_cents';
  static const kStatus = 'status';
  static const kLastDonationReceivedAt = 'last_donation_received_at';
  static const kNextOccurrence = 'next_occurrence';
  static const kSchedule = 'schedule';
  static const kAmountCurrency = 'amount_currency';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// The date when a `temporary_hold` will be released.
  DateTime get releaseHoldAt => DateTime.parse(attributes[kReleaseHoldAt] ?? '');
  int get amountCents => attributes[kAmountCents] ?? 0;

  /// One of `active`, `indefinite_hold` or `temporary_hold`.
  String get status => attributes[kStatus] ?? '';
  DateTime get lastDonationReceivedAt => DateTime.parse(attributes[kLastDonationReceivedAt] ?? '');
  DateTime get nextOccurrence => DateTime.parse(attributes[kNextOccurrence] ?? '');

  /// JSON representation of the billing schedule. See the repeatable Ruby gem for more details on the structure and meaning. https://github.com/molawson/repeatable#time-expressions
  String get schedule => attributes[kSchedule] ?? '';
  String get amountCurrency => attributes[kAmountCurrency] ?? '';




  PcoGivingRecurringDonation() : super(pcoApplication, typeString);
  PcoGivingRecurringDonation.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGivingRecurringDonation Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations;
  static Future<List<PcoGivingRecurringDonation>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoGivingRecurringDonation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/recurring_donations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingRecurringDonation.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGivingRecurringDonation Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/payment_methods/1/recurring_donations;
  static Future<List<PcoGivingRecurringDonation>> getManyFromPeopleAndPaymentMethodAndRecurringDonationIds(String peopleId,String paymentMethodId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingRecurringDonation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/people/$peopleId/payment_methods/$paymentMethodId/recurring_donations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingRecurringDonation.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGivingRecurringDonation Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/recurring_donations;
  static Future<List<PcoGivingRecurringDonation>> getManyFromPeopleAndRecurringDonationIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingRecurringDonation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/people/$peopleId/recurring_donations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingRecurringDonation.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingRecurringDonation Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations;
  static Future<PcoGivingRecurringDonation?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingRecurringDonation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/recurring_donations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingRecurringDonation.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGivingRecurringDonation Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/payment_methods/1/recurring_donations;
  static Future<PcoGivingRecurringDonation?> getSingleFromPeopleAndPaymentMethodAndRecurringDonationIds(String peopleId,String paymentMethodId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingRecurringDonation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/people/$peopleId/payment_methods/$paymentMethodId/recurring_donations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingRecurringDonation.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGivingRecurringDonation Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/recurring_donations;
  static Future<PcoGivingRecurringDonation?> getSingleFromPeopleAndRecurringDonationIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingRecurringDonation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/people/$peopleId/recurring_donations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingRecurringDonation.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGivingPaymentMethod objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/payment_method
Future<List<PcoGivingPaymentMethod>> getPaymentMethods({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingPaymentMethod> retval = [];
  var url = '$apiEndpoint/payment_method';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingPaymentMethod.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGivingRecurringDonationDesignation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations
Future<List<PcoGivingRecurringDonationDesignation>> getRecurringDonationDesignationsDesignations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingRecurringDonationDesignation> retval = [];
  var url = '$apiEndpoint/designations';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingRecurringDonationDesignation.fromJson(itemData));
    }
  }
  return retval;
}
    

}
