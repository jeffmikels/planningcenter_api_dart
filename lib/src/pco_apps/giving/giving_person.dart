/// This file was generated on 2021-11-25T00:07:20.791970


import '../../pco.dart';

/// This class represents a PCO Giving Person Object
/// 
/// Application: giving
/// Id:          person
/// Type:        Person
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Person","id":"1","attributes":{"permissions":"string","email_addresses":[],"addresses":[],"phone_numbers":[],"first_name":"string","last_name":"string","donor_number":1},"relationships":{"primary_campus":{"data":{"type":"Campus","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2/people
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @first_name (URLParameter), query on a specific first_name, example: ?where[first_name]=string
/// @last_name (URLParameter), query on a specific last_name, example: ?where[last_name]=string
/// possible orderings with parameter ?order=

///
class PcoGivingPerson extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Person';
  static const String kTypeId = 'person';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'person-organization-people';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/people';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @first_name (URLParameter), query on a specific first_name, example: ?where[first_name]=string
  /// @last_name (URLParameter), query on a specific last_name, example: ?where[last_name]=string
  static List<String> get canQuery => ['first_name','last_name'];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kPermissions = 'permissions';
  static const kEmailAddresses = 'email_addresses';
  static const kAddresses = 'addresses';
  static const kPhoneNumbers = 'phone_numbers';
  static const kFirstName = 'first_name';
  static const kLastName = 'last_name';
  static const kDonorNumber = 'donor_number';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get permissions => attributes[kPermissions] ?? '';
  List get emailAddresses => attributes[kEmailAddresses] ?? [];
  List get addresses => attributes[kAddresses] ?? [];
  List get phoneNumbers => attributes[kPhoneNumbers] ?? [];
  String get firstName => attributes[kFirstName] ?? '';
  String get lastName => attributes[kLastName] ?? '';
  int get donorNumber => attributes[kDonorNumber] ?? 0;




  PcoGivingPerson() : super(kPcoApplication, kTypeString);
  PcoGivingPerson.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGivingPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups/1/owner;
  static Future<PcoCollection<PcoGivingPerson>> getManyFromBatchGroupAndOwner(String batchGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/batch_groups/$batchGroupId/owner';
    return PcoCollection.fromApiCall<PcoGivingPerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGivingPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/owner;
  static Future<PcoCollection<PcoGivingPerson>> getManyFromBatcheAndOwner(String batcheId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/batches/$batcheId/owner';
    return PcoCollection.fromApiCall<PcoGivingPerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGivingPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people;
  static Future<PcoCollection<PcoGivingPerson>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/people';
    return PcoCollection.fromApiCall<PcoGivingPerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGivingPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/pledges/1/joint_giver;
  static Future<PcoCollection<PcoGivingPerson>> getManyFromPledgeAndJointGiver(String pledgeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/pledges/$pledgeId/joint_giver';
    return PcoCollection.fromApiCall<PcoGivingPerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoGivingPerson Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups/1/owner;
  static Future<PcoCollection<PcoGivingPerson>> getSingleFromBatchGroupAndOwner(String batchGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/batch_groups/$batchGroupId/owner' + '/$id';
    return PcoCollection.fromApiCall<PcoGivingPerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGivingPerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGivingPerson Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/owner;
  static Future<PcoCollection<PcoGivingPerson>> getSingleFromBatcheAndOwner(String batcheId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/batches/$batcheId/owner' + '/$id';
    return PcoCollection.fromApiCall<PcoGivingPerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGivingPerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGivingPerson Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people;
  static Future<PcoCollection<PcoGivingPerson>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/people' + '/$id';
    return PcoCollection.fromApiCall<PcoGivingPerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGivingPerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGivingPerson Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/pledges/1/joint_giver;
  static Future<PcoCollection<PcoGivingPerson>> getSingleFromPledgeAndJointGiver(String pledgeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/pledges/$pledgeId/joint_giver' + '/$id';
    return PcoCollection.fromApiCall<PcoGivingPerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGivingPerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoGivingBatchGroup objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/batch_groups
Future<PcoCollection<PcoGivingBatchGroup>> getBatchGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
  var url = '$apiEndpoint/batch_groups';
  return PcoCollection.fromApiCall<PcoGivingBatchGroup>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGivingBatch objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/batches
Future<PcoCollection<PcoGivingBatch>> getBatchsBatches({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingBatch.canInclude;
  var url = '$apiEndpoint/batches';
  return PcoCollection.fromApiCall<PcoGivingBatch>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGivingDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/donations
Future<PcoCollection<PcoGivingDonation>> getDonations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingDonation.canInclude;
  var url = '$apiEndpoint/donations';
  return PcoCollection.fromApiCall<PcoGivingDonation>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGivingPaymentMethod objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/payment_methods
Future<PcoCollection<PcoGivingPaymentMethod>> getPaymentMethods({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingPaymentMethod.canInclude;
  var url = '$apiEndpoint/payment_methods';
  return PcoCollection.fromApiCall<PcoGivingPaymentMethod>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGivingPledge objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/pledges
Future<PcoCollection<PcoGivingPledge>> getPledges({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingPledge.canInclude;
  var url = '$apiEndpoint/pledges';
  return PcoCollection.fromApiCall<PcoGivingPledge>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGivingCampus objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/primary_campus
Future<PcoCollection<PcoGivingCampus>> getCampusesPrimaryCampus({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingCampus.canInclude;
  var url = '$apiEndpoint/primary_campus';
  return PcoCollection.fromApiCall<PcoGivingCampus>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGivingRecurringDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/recurring_donations
Future<PcoCollection<PcoGivingRecurringDonation>> getRecurringDonations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingRecurringDonation.canInclude;
  var url = '$apiEndpoint/recurring_donations';
  return PcoCollection.fromApiCall<PcoGivingRecurringDonation>(url, query: query, apiVersion:apiVersion);
}
    


}
