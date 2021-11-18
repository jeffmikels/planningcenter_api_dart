/// This file was generated on 2021-11-18T15:28:01.673310


import '../../pco.dart';

/// This class represents a PCO Services ArrangementSections Object
/// 
/// Application: services
/// Id:          arrangement_sections
/// Type:        ArrangementSections
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// Sections of an Arrangement, derived from its chord chart
/// 
/// Example:
/// 
/// {"type":"ArrangementSections","id":"1","attributes":{"sections":[]},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections
/// 
class PcoServicesArrangementSection extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ArrangementSections';
  static const String kTypeId = 'arrangement_sections';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'arrangementsections-arrangement-sections';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kSections = 'sections';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// Given an arrangement with the folowing `chord_chart`:
  ///```
  ///VERSE 1
  ///D          Bm       G          D
  ///Be thou my vision O Lord of my heart
  ///A             Bm         G              A
  ///naught be all else to me save that Thou art
  ///```
  ///The value will be:
  ///```json
  ///[
  ///  {
  ///    "label": "Verse",
  ///    "lyrics": "Be thou my vision O Lord of my heart
  ///naught be all else to me save that Thou art",
  ///    "breaks_at": null
  ///  }
  ///]
  ///```
  List get sections => attributes[kSections] ?? [];




  PcoServicesArrangementSection() : super(kPcoApplication, kTypeString);
  PcoServicesArrangementSection.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoServicesArrangementSection Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections;
  static Future<List<PcoServicesArrangementSection>> getManyFromSongAndArrangementAndSectionIds(String songId,String arrangementId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesArrangementSection> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/sections';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesArrangementSection.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesArrangementSection Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections;
  static Future<PcoServicesArrangementSection?> getSingleFromSongAndArrangementAndSectionIds(String songId,String arrangementId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesArrangementSection?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/sections' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesArrangementSection.fromJson(res.data);
    }
    return retval;
  }




}
