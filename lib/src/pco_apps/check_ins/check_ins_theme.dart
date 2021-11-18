/// This file was generated on 2021-11-17T23:59:27.208878


import '../../pco.dart';

/// This class represents a PCO CheckIns Theme Object
/// 
/// Application: check-ins
/// Id:          theme
/// Type:        Theme
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// A custom style which may be applied to stations.\n
/// 
/// Example:
/// 
/// {"type":"Theme","id":"1","attributes":{"image_thumbnail":"string","name":"string","color":"string","text_color":"string","image":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","background_color":"string","mode":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/themes
/// 
class PcoCheckInsTheme extends PcoResource {
  static const String pcoApplication = 'check-ins';
  static const String typeString = 'Theme';
  static const String typeId = 'theme';
  static const String apiVersion = '2019-07-17';
  static const String shortestEdgeId = 'theme-organization-themes';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/themes';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kImageThumbnail = 'image_thumbnail';
  static const kName = 'name';
  static const kColor = 'color';
  static const kTextColor = 'text_color';
  static const kImage = 'image';
  static const kBackgroundColor = 'background_color';
  static const kMode = 'mode';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get imageThumbnail => attributes[kImageThumbnail] ?? '';
  String get name => attributes[kName] ?? '';
  String get color => attributes[kColor] ?? '';
  String get textColor => attributes[kTextColor] ?? '';
  String get image => attributes[kImage] ?? '';
  String get backgroundColor => attributes[kBackgroundColor] ?? '';
  String get mode => attributes[kMode] ?? '';




  PcoCheckInsTheme() : super(pcoApplication, typeString);
  PcoCheckInsTheme.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCheckInsTheme Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/themes;
  static Future<List<PcoCheckInsTheme>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsTheme> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/themes';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsTheme.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsTheme Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/theme;
  static Future<List<PcoCheckInsTheme>> getManyFromStationAndThemeIds(String stationId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsTheme> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/stations/$stationId/theme';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsTheme.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsTheme Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/themes;
  static Future<PcoCheckInsTheme?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsTheme?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/themes' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsTheme.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsTheme Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/theme;
  static Future<PcoCheckInsTheme?> getSingleFromStationAndThemeIds(String stationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsTheme?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/stations/$stationId/theme' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsTheme.fromJson(res.data);
    }
    return retval;
  }




}
