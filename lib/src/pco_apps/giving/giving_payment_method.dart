/// This file was generated on 2021-11-19T12:10:42.778702


import '../../pco.dart';

/// This class represents a PCO Giving PaymentMethod Object
/// 
/// Application: giving
/// Id:          payment_method
/// Type:        PaymentMethod
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"PaymentMethod","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","method_type":"value","method_subtype":"string","last4":"string","brand":"string","expiration":"2000-01-01","verified":true},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2/people/1/payment_methods
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoGivingPaymentMethod extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'PaymentMethod';
  static const String kTypeId = 'payment_method';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'paymentmethod-person-payment_methods';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/people/1/payment_methods';

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
  static const kMethodType = 'method_type';
  static const kMethodSubtype = 'method_subtype';
  static const kLast4 = 'last4';
  static const kBrand = 'brand';
  static const kExpiration = 'expiration';
  static const kVerified = 'verified';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// Possible values: `card` or `bank_account`
  String get methodType => attributes[kMethodType] ?? '';

  /// For cards, either `credit` or `debit`. For bank accounts, either `checking` or `savings`.
  String get methodSubtype => attributes[kMethodSubtype] ?? '';
  String get last4 => attributes[kLast4] ?? '';
  String get brand => attributes[kBrand] ?? '';

  /// For cards only. String representation of the expiration date in the `MM/YYYY` form (without leading zeros). Will be `null` for bank accounts.
  String get expiration => attributes[kExpiration] ?? '';

  /// For bank accounts only. Will be `null` for cards.
  bool get isVerified => attributes[kVerified] == true;




  PcoGivingPaymentMethod() : super(kPcoApplication, kTypeString);
  PcoGivingPaymentMethod.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGivingPaymentMethod Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/payment_methods;
  static Future<List<PcoGivingPaymentMethod>> getManyFromPeopleAndPaymentMethodIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingPaymentMethod> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPaymentMethod.canInclude;
    var url = '/giving/v2/people/$peopleId/payment_methods';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingPaymentMethod.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingPaymentMethod Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/payment_method;
  static Future<List<PcoGivingPaymentMethod>> getManyFromRecurringDonationAndPaymentMethodIds(String recurringDonationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingPaymentMethod> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPaymentMethod.canInclude;
    var url = '/giving/v2/recurring_donations/$recurringDonationId/payment_method';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingPaymentMethod.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingPaymentMethod Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/payment_methods;
  static Future<PcoGivingPaymentMethod?> getSingleFromPeopleAndPaymentMethodIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingPaymentMethod?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPaymentMethod.canInclude;
    var url = '/giving/v2/people/$peopleId/payment_methods' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingPaymentMethod.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingPaymentMethod Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/payment_method;
  static Future<PcoGivingPaymentMethod?> getSingleFromRecurringDonationAndPaymentMethodIds(String recurringDonationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingPaymentMethod?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPaymentMethod.canInclude;
    var url = '/giving/v2/recurring_donations/$recurringDonationId/payment_method' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingPaymentMethod.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoGivingRecurringDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/payment_methods/1/recurring_donations
Future<List<PcoGivingRecurringDonation>> getRecurringDonations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingRecurringDonation.canInclude;
  List<PcoGivingRecurringDonation> retval = [];
  var url = '$apiEndpoint/recurring_donations';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingRecurringDonation.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
