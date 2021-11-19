/// This file was generated on 2021-11-19T12:10:42.779724


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
  static Future<List<PcoGivingPerson>> getManyFromBatchGroupAndOwnerIds(String batchGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/batch_groups/$batchGroupId/owner';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingPerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/owner;
  static Future<List<PcoGivingPerson>> getManyFromBatcheAndOwnerIds(String batcheId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/batches/$batcheId/owner';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingPerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people;
  static Future<List<PcoGivingPerson>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingPerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/pledges/1/joint_giver;
  static Future<List<PcoGivingPerson>> getManyFromPledgeAndJointGiverIds(String pledgeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/pledges/$pledgeId/joint_giver';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingPerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingPerson Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups/1/owner;
  static Future<PcoGivingPerson?> getSingleFromBatchGroupAndOwnerIds(String batchGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingPerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/batch_groups/$batchGroupId/owner' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingPerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingPerson Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/owner;
  static Future<PcoGivingPerson?> getSingleFromBatcheAndOwnerIds(String batcheId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingPerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/batches/$batcheId/owner' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingPerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingPerson Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people;
  static Future<PcoGivingPerson?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingPerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingPerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingPerson Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/pledges/1/joint_giver;
  static Future<PcoGivingPerson?> getSingleFromPledgeAndJointGiverIds(String pledgeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingPerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/pledges/$pledgeId/joint_giver' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingPerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoGivingBatchGroup objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/batch_groups
Future<List<PcoGivingBatchGroup>> getBatchGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
  List<PcoGivingBatchGroup> retval = [];
  var url = '$apiEndpoint/batch_groups';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingBatchGroup.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingBatch objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/batches
Future<List<PcoGivingBatch>> getBatchsBatches({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingBatch.canInclude;
  List<PcoGivingBatch> retval = [];
  var url = '$apiEndpoint/batches';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingBatch.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/donations
Future<List<PcoGivingDonation>> getDonations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingDonation.canInclude;
  List<PcoGivingDonation> retval = [];
  var url = '$apiEndpoint/donations';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingDonation.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingPaymentMethod objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/payment_methods
Future<List<PcoGivingPaymentMethod>> getPaymentMethods({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingPaymentMethod.canInclude;
  List<PcoGivingPaymentMethod> retval = [];
  var url = '$apiEndpoint/payment_methods';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingPaymentMethod.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingPledge objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/pledges
Future<List<PcoGivingPledge>> getPledges({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingPledge.canInclude;
  List<PcoGivingPledge> retval = [];
  var url = '$apiEndpoint/pledges';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingPledge.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingCampus objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/primary_campus
Future<List<PcoGivingCampus>> getCampusesPrimaryCampus({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingCampus.canInclude;
  List<PcoGivingCampus> retval = [];
  var url = '$apiEndpoint/primary_campus';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingCampus.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingRecurringDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/recurring_donations
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
