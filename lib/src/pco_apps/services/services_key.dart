/// This file was generated on 2021-11-18T15:28:01.699563


import '../../pco.dart';

/// This class represents a PCO Services Key Object
/// 
/// Application: services
/// Id:          key
/// Type:        Key
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// Each song arrangement can have multiple keys. A key is the pitch center of the song.
/// 
/// Example:
/// 
/// {"type":"Key","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","name":"string","alternate_keys":"string","ending_key":"string","starting_key":"string","starting_minor":true,"ending_minor":true},"relationships":{"arrangement":{"data":{"type":"Arrangement","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys
/// 
class PcoServicesKey extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Key';
  static const String kTypeId = 'key';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'key-arrangement-keys';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kName = 'name';
  static const kAlternateKeys = 'alternate_keys';
  static const kEndingKey = 'ending_key';
  static const kStartingKey = 'starting_key';
  static const kStartingMinor = 'starting_minor';
  static const kEndingMinor = 'ending_minor';


  // getters and setters
  @override
  List<String> get createAllowed => ['name','starting_key','ending_key','alternate_keys'];
  @override
  List<String> get updateAllowed => ['name','starting_key','ending_key','alternate_keys'];

  String get name => attributes[kName] ?? '';

  /// An array of objects.
  ///`
  ///{
  ///  "name": "My Alternate Key",
  ///  "key": "B"
  ///}
  ///`
  String get alternateKeys => attributes[kAlternateKeys] ?? '';

  /// Possible Values:
  ///`Ab`, `A`, `A#`, `Bb`, `B`, `C`, `C#`, `Db`, `D`, `D#`, `Eb`, `E`, `F`, `F#`, `Gb`, `G`, `G#`, `Abm`, `Am`, `A#m`, `Bbm`, `Bm`, `Cm`, `C#m`, `Dbm`, `Dm`, `D#m`, `Ebm`, `Em`, `Fm`, `F#m`, `Gbm`, `Gm`, `G#m`
  ///To set the key to minor append `m` to the key. e.g. `Cm`
  String get endingKey => attributes[kEndingKey] ?? '';

  /// Possible Values:
  ///`Ab`, `A`, `A#`, `Bb`, `B`, `C`, `C#`, `Db`, `D`, `D#`, `Eb`, `E`, `F`, `F#`, `Gb`, `G`, `G#`, `Abm`, `Am`, `A#m`, `Bbm`, `Bm`, `Cm`, `C#m`, `Dbm`, `Dm`, `D#m`, `Ebm`, `Em`, `Fm`, `F#m`, `Gbm`, `Gm`, `G#m`
  ///To set the key to minor append `m` to the key. e.g. `Cm`
  String get startingKey => attributes[kStartingKey] ?? '';
  bool get isStartingMinor => attributes[kStartingMinor] == true;
  bool get isEndingMinor => attributes[kEndingMinor] == true;


  set name(String s) => attributes[kName] = s;

  /// An array of objects.
  ///`
  ///{
  ///  "name": "My Alternate Key",
  ///  "key": "B"
  ///}
  ///`
  set alternateKeys(String s) => attributes[kAlternateKeys] = s;

  /// Possible Values:
  ///`Ab`, `A`, `A#`, `Bb`, `B`, `C`, `C#`, `Db`, `D`, `D#`, `Eb`, `E`, `F`, `F#`, `Gb`, `G`, `G#`, `Abm`, `Am`, `A#m`, `Bbm`, `Bm`, `Cm`, `C#m`, `Dbm`, `Dm`, `D#m`, `Ebm`, `Em`, `Fm`, `F#m`, `Gbm`, `Gm`, `G#m`
  ///To set the key to minor append `m` to the key. e.g. `Cm`
  set endingKey(String s) => attributes[kEndingKey] = s;

  /// Possible Values:
  ///`Ab`, `A`, `A#`, `Bb`, `B`, `C`, `C#`, `Db`, `D`, `D#`, `Eb`, `E`, `F`, `F#`, `Gb`, `G`, `G#`, `Abm`, `Am`, `A#m`, `Bbm`, `Bm`, `Cm`, `C#m`, `Dbm`, `Dm`, `D#m`, `Ebm`, `Em`, `Fm`, `F#m`, `Gbm`, `Gm`, `G#m`
  ///To set the key to minor append `m` to the key. e.g. `Cm`
  set startingKey(String s) => attributes[kStartingKey] = s;


  PcoServicesKey() : super(kPcoApplication, kTypeString);
  PcoServicesKey.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoServicesKey Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys;
  static Future<List<PcoServicesKey>> getManyFromSongAndArrangementAndKeyIds(String songId,String arrangementId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesKey> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/keys';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesKey.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesKey Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/key;
  static Future<List<PcoServicesKey>> getManyFromServiceTypeAndPlanAndItemAndKeyIds(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesKey> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/key';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesKey.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesKey Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys;
  static Future<PcoServicesKey?> getSingleFromSongAndArrangementAndKeyIds(String songId,String arrangementId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesKey?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/keys' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesKey.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesKey Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/key;
  static Future<PcoServicesKey?> getSingleFromServiceTypeAndPlanAndItemAndKeyIds(String serviceTypeId,String planId,String itemId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesKey?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/key' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesKey.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesAttachment objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys/1/attachments
Future<List<PcoServicesAttachment>> getAttachments({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesAttachment> retval = [];
  var url = '$apiEndpoint/attachments';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesAttachment.fromJson(itemData));
    }
  }
  return retval;
}
    

}
