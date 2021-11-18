/// This file was generated on 2021-11-18T13:57:10.024025


import '../../pco.dart';

/// This class represents a PCO People PhoneNumber Object
/// 
/// Application: people
/// Id:          phone_number
/// Type:        PhoneNumber
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A phone number represents a single telephone number and location.
/// 
/// Example:
/// 
/// {"type":"PhoneNumber","id":"1","attributes":{"number":"string","carrier":"string","location":"string","primary":true,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","e164":"string","international":"string","national":"string","country_code":"string"},"relationships":{"person":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/people/1/phone_numbers
/// 
class PcoPeoplePhoneNumber extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'PhoneNumber';
  static const String typeId = 'phone_number';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'phonenumber-person-phone_numbers';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/phone_numbers';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kNumber = 'number';
  static const kCarrier = 'carrier';
  static const kLocation = 'location';
  static const kPrimary = 'primary';
  static const kE164 = 'e164';
  static const kInternational = 'international';
  static const kNational = 'national';
  static const kCountryCode = 'country_code';


  // getters and setters
  @override
  List<String> get createAllowed => ['number','carrier','location','primary'];
  @override
  List<String> get updateAllowed => ['number','carrier','location','primary'];

  String get number => attributes[kNumber] ?? '';
  String get carrier => attributes[kCarrier] ?? '';
  String get location => attributes[kLocation] ?? '';
  bool get isPrimary => attributes[kPrimary] == true;
  String get e164 => attributes[kE164] ?? '';
  String get international => attributes[kInternational] ?? '';
  String get national => attributes[kNational] ?? '';
  String get countryCode => attributes[kCountryCode] ?? '';


  set number(String s) => attributes[kNumber] = s;
  set carrier(String s) => attributes[kCarrier] = s;
  set location(String s) => attributes[kLocation] = s;
  set isPrimary(bool b) => attributes[kPrimary] = b;


  PcoPeoplePhoneNumber() : super(pcoApplication, typeString);
  PcoPeoplePhoneNumber.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeoplePhoneNumber Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/phone_numbers;
  static Future<List<PcoPeoplePhoneNumber>> getManyFromPeopleAndPhoneNumberIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePhoneNumber> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/phone_numbers';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePhoneNumber.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeoplePhoneNumber Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/phone_numbers;
  static Future<PcoPeoplePhoneNumber?> getSingleFromPeopleAndPhoneNumberIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePhoneNumber?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/phone_numbers' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePhoneNumber.fromJson(res.data);
    }
    return retval;
  }




}
