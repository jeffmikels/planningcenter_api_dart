/// This file was generated on 2021-11-17T23:59:27.079411


import '../../pco.dart';

/// This class represents a PCO Services Arrangement Object
/// 
/// Application: services
/// Id:          arrangement
/// Type:        Arrangement
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// Each arrangement belongs to a song and is a different version of that song.
/// 
/// Example:
/// 
/// {"type":"Arrangement","id":"1","attributes":{"bpm":1.42,"created_at":"2000-01-01T12:00:00Z","isrc":"string","has_chords":true,"length":1,"meter":"string","name":"string","notes":"string","print_margin":"string","print_orientation":"string","print_page_size":"string","updated_at":"2000-01-01T12:00:00Z","chord_chart":"string","chord_chart_font":"string","chord_chart_key":"string","chord_chart_columns":1,"chord_chart_font_size":1,"has_chord_chart":true,"lyrics_enabled":true,"number_chart_enabled":true,"numeral_chart_enabled":true,"sequence":[],"sequence_short":[],"sequence_full":[],"chord_chart_chord_color":1,"archived_at":"2000-01-01T12:00:00Z","lyrics":"string","mtid":"primary_key","rehearsal_mix_id":"primary_key"},"relationships":{"updated_by":{"data":{"type":"Person","id":"1"}},"created_by":{"data":{"type":"Person","id":"1"}},"song":{"data":{"type":"Song","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/songs/1/arrangements
/// 
class PcoServicesArrangement extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'Arrangement';
  static const String typeId = 'arrangement';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'arrangement-song-arrangements';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/arrangements';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kBpm = 'bpm';
  static const kIsrc = 'isrc';
  static const kHasChords = 'has_chords';
  static const kLength = 'length';
  static const kMeter = 'meter';
  static const kName = 'name';
  static const kNotes = 'notes';
  static const kPrintMargin = 'print_margin';
  static const kPrintOrientation = 'print_orientation';
  static const kPrintPageSize = 'print_page_size';
  static const kChordChart = 'chord_chart';
  static const kChordChartFont = 'chord_chart_font';
  static const kChordChartKey = 'chord_chart_key';
  static const kChordChartColumns = 'chord_chart_columns';
  static const kChordChartFontSize = 'chord_chart_font_size';
  static const kHasChordChart = 'has_chord_chart';
  static const kLyricsEnabled = 'lyrics_enabled';
  static const kNumberChartEnabled = 'number_chart_enabled';
  static const kNumeralChartEnabled = 'numeral_chart_enabled';
  static const kSequence = 'sequence';
  static const kSequenceShort = 'sequence_short';
  static const kSequenceFull = 'sequence_full';
  static const kChordChartChordColor = 'chord_chart_chord_color';
  static const kArchivedAt = 'archived_at';
  static const kLyrics = 'lyrics';
  static const kMtid = 'mtid';
  static const kRehearsalMixId = 'rehearsal_mix_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['bpm','chord_chart','chord_chart_chord_color','chord_chart_columns','chord_chart_font','chord_chart_font_size','chord_chart_key','isrc','length','lyrics_enabled','meter','mtid','name','notes','number_chart_enabled','numeral_chart_enabled','print_margin','print_orientation','print_page_size','rehearsal_mix_id','sequence'];
  @override
  List<String> get updateAllowed => ['bpm','chord_chart','chord_chart_chord_color','chord_chart_columns','chord_chart_font','chord_chart_font_size','chord_chart_key','isrc','length','lyrics_enabled','meter','mtid','name','notes','number_chart_enabled','numeral_chart_enabled','print_margin','print_orientation','print_page_size','rehearsal_mix_id','sequence'];

  double get bpm => attributes[kBpm] ?? 0;
  String get isrc => attributes[kIsrc] ?? '';
  bool get isHasChords => attributes[kHasChords] == true;
  int get length => attributes[kLength] ?? 0;

  /// Possible Values:
  ///- `2/2`
  ///- `2/4`
  ///- `3/4`
  ///- `4/4`
  ///- `5/4`
  ///- `6/4`
  ///- `3/8`
  ///- `6/8`
  ///- `7/8`
  ///- `9/8`
  ///- `12/8`
  String get meter => attributes[kMeter] ?? '';
  String get name => attributes[kName] ?? '';
  String get notes => attributes[kNotes] ?? '';

  /// Possible Values:
  ///- `0.0in`
  ///- `0.25in`
  ///- `0.5in`
  ///- `0.75in`
  ///- `1.0in`
  String get printMargin => attributes[kPrintMargin] ?? '';

  /// Possible Values:
  ///- `Portrait`
  ///- `Landscape`
  String get printOrientation => attributes[kPrintOrientation] ?? '';

  /// Possible Values:
  ///- `Widescreen (16x9)`
  ///- `Fullscreen (4x3)`
  ///- `A4`
  ///- `Letter`
  ///- `Legal`
  ///- `11x17`
  String get printPageSize => attributes[kPrintPageSize] ?? '';

  /// A string of lyrics and chords. Supports standard and ChordPro formats.
  String get chordChart => attributes[kChordChart] ?? '';
  String get chordChartFont => attributes[kChordChartFont] ?? '';
  String get chordChartKey => attributes[kChordChartKey] ?? '';
  int get chordChartColumns => attributes[kChordChartColumns] ?? 0;

  /// Possible Values:
  ///`10`, `11`, `12`, `13`, `14`, `15`, `16`, `18`, `20`, `22`, `24`, `26`, `28`, `32`, `36`, `42`, `48`
  int get chordChartFontSize => attributes[kChordChartFontSize] ?? 0;
  bool get isHasChordChart => attributes[kHasChordChart] == true;
  bool get isLyricsEnabled => attributes[kLyricsEnabled] == true;
  bool get isNumberChartEnabled => attributes[kNumberChartEnabled] == true;
  bool get isNumeralChartEnabled => attributes[kNumeralChartEnabled] == true;

  /// An array of strings containing a label and a number describing the section:
  ///['Verse 1', 'Chorus 1', 'Verse 2']
  List get sequence => attributes[kSequence] ?? [];
  List get sequenceShort => attributes[kSequenceShort] ?? [];
  List get sequenceFull => attributes[kSequenceFull] ?? [];
  int get chordChartChordColor => attributes[kChordChartChordColor] ?? 0;
  DateTime get archivedAt => DateTime.parse(attributes[kArchivedAt] ?? '');
  String get lyrics => attributes[kLyrics] ?? '';

  /// An alias for rehearsal_mix_id
  String get mtid => attributes[kMtid] ?? '';
  String get rehearsalMixId => attributes[kRehearsalMixId] ?? '';


  set bpm(double n) => attributes[kBpm] = n;
  set isrc(String s) => attributes[kIsrc] = s;
  set length(int n) => attributes[kLength] = n;

  /// Possible Values:
  ///- `2/2`
  ///- `2/4`
  ///- `3/4`
  ///- `4/4`
  ///- `5/4`
  ///- `6/4`
  ///- `3/8`
  ///- `6/8`
  ///- `7/8`
  ///- `9/8`
  ///- `12/8`
  set meter(String s) => attributes[kMeter] = s;
  set name(String s) => attributes[kName] = s;
  set notes(String s) => attributes[kNotes] = s;

  /// Possible Values:
  ///- `0.0in`
  ///- `0.25in`
  ///- `0.5in`
  ///- `0.75in`
  ///- `1.0in`
  set printMargin(String s) => attributes[kPrintMargin] = s;

  /// Possible Values:
  ///- `Portrait`
  ///- `Landscape`
  set printOrientation(String s) => attributes[kPrintOrientation] = s;

  /// Possible Values:
  ///- `Widescreen (16x9)`
  ///- `Fullscreen (4x3)`
  ///- `A4`
  ///- `Letter`
  ///- `Legal`
  ///- `11x17`
  set printPageSize(String s) => attributes[kPrintPageSize] = s;

  /// A string of lyrics and chords. Supports standard and ChordPro formats.
  set chordChart(String s) => attributes[kChordChart] = s;
  set chordChartFont(String s) => attributes[kChordChartFont] = s;
  set chordChartKey(String s) => attributes[kChordChartKey] = s;
  set chordChartColumns(int n) => attributes[kChordChartColumns] = n;

  /// Possible Values:
  ///`10`, `11`, `12`, `13`, `14`, `15`, `16`, `18`, `20`, `22`, `24`, `26`, `28`, `32`, `36`, `42`, `48`
  set chordChartFontSize(int n) => attributes[kChordChartFontSize] = n;
  set isLyricsEnabled(bool b) => attributes[kLyricsEnabled] = b;
  set isNumberChartEnabled(bool b) => attributes[kNumberChartEnabled] = b;
  set isNumeralChartEnabled(bool b) => attributes[kNumeralChartEnabled] = b;

  /// An array of strings containing a label and a number describing the section:
  ///['Verse 1', 'Chorus 1', 'Verse 2']
  set sequence(List a) => attributes[kSequence] = a;
  set chordChartChordColor(int n) => attributes[kChordChartChordColor] = n;

  /// An alias for rehearsal_mix_id
  set mtid(String s) => attributes[kMtid] = s;
  set rehearsalMixId(String s) => attributes[kRehearsalMixId] = s;


  PcoServicesArrangement() : super(pcoApplication, typeString);
  PcoServicesArrangement.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesArrangement Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/arrangement;
  static Future<List<PcoServicesArrangement>> getManyFromServiceTypeAndPlanAndItemAndArrangementIds(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesArrangement> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/arrangement';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesArrangement.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesArrangement Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements;
  static Future<List<PcoServicesArrangement>> getManyFromSongAndArrangementIds(String songId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesArrangement> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/arrangements';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesArrangement.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesArrangement Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/arrangement;
  static Future<PcoServicesArrangement?> getSingleFromServiceTypeAndPlanAndItemAndArrangementIds(String serviceTypeId,String planId,String itemId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesArrangement?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/arrangement' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesArrangement.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesArrangement Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements;
  static Future<PcoServicesArrangement?> getSingleFromSongAndArrangementIds(String songId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesArrangement?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/arrangements' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesArrangement.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesAttachment objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/attachments
Future<List<PcoServicesAttachment>> getAttachments({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesAttachment> retval = [];
  var url = '$apiEndpoint/attachments';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesAttachment.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesKey objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys
Future<List<PcoServicesKey>> getKeys({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesKey> retval = [];
  var url = '$apiEndpoint/keys';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesKey.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesArrangementSection objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections
Future<List<PcoServicesArrangementSection>> getArrangementSectionsSections({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesArrangementSection> retval = [];
  var url = '$apiEndpoint/sections';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesArrangementSection.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTag objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/tags
Future<List<PcoServicesTag>> getTags({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesTag> retval = [];
  var url = '$apiEndpoint/tags';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTag.fromJson(itemData));
    }
  }
  return retval;
}
    

}
