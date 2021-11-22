/// This file was generated on 2021-11-22T16:37:09.167770


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @carrier (URLParameter), query on a specific carrier, example: ?where[carrier]=string
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @location (URLParameter), query on a specific location, example: ?where[location]=string
/// @number (URLParameter), query on a specific number, example: ?where[number]=string
/// @primary (URLParameter), query on a specific primary, example: ?where[primary]=true
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @carrier (URLParameter), prefix with a hyphen (-carrier) to reverse the order
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @location (URLParameter), prefix with a hyphen (-location) to reverse the order
/// @number (URLParameter), prefix with a hyphen (-number) to reverse the order
/// @primary (URLParameter), prefix with a hyphen (-primary) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeoplePhoneNumber extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PhoneNumber';
  static const String kTypeId = 'phone_number';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'phonenumber-person-phone_numbers';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/phone_numbers';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @carrier (URLParameter), query on a specific carrier, example: ?where[carrier]=string
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @location (URLParameter), query on a specific location, example: ?where[location]=string
  /// @number (URLParameter), query on a specific number, example: ?where[number]=string
  /// @primary (URLParameter), query on a specific primary, example: ?where[primary]=true
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['carrier','created_at','location','number','primary','updated_at'];

  /// possible orderings with parameter ?order=
  /// @carrier (URLParameter), prefix with a hyphen (-carrier) to reverse the order
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @location (URLParameter), prefix with a hyphen (-location) to reverse the order
  /// @number (URLParameter), prefix with a hyphen (-number) to reverse the order
  /// @primary (URLParameter), prefix with a hyphen (-primary) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['carrier','created_at','location','number','primary','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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


  PcoPeoplePhoneNumber() : super(kPcoApplication, kTypeString);
  PcoPeoplePhoneNumber.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeoplePhoneNumber Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/phone_numbers;
  static Future<List<PcoPeoplePhoneNumber>> getManyFromPeopleAndPhoneNumberIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePhoneNumber> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePhoneNumber.canInclude;
    var url = '/people/v2/people/$peopleId/phone_numbers';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePhoneNumber.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeoplePhoneNumber Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/phone_numbers;
  static Future<PcoPeoplePhoneNumber?> getSingleFromPeopleAndPhoneNumberIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePhoneNumber?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePhoneNumber.canInclude;
    var url = '/people/v2/people/$peopleId/phone_numbers' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePhoneNumber.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
