/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T13:06:04.806756
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Services Arrangement Object
///
/// - Application:        services
/// - Id:                 arrangement
/// - Type:               Arrangement
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/arrangements
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/songs/1/arrangements
///
/// ## Description
/// Each arrangement belongs to a song and is a different version of that song.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `bpm` (rw) -> PCO: `bpm`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `isrc` (rw) -> PCO: `isrc`
/// - `isHasChords` (ro) -> PCO: `has_chords`
/// - `length` (rw) -> PCO: `length`
/// - `meter` (rw) -> PCO: `meter`
/// - `name` (rw) -> PCO: `name`
/// - `notes` (rw) -> PCO: `notes`
/// - `printMargin` (rw) -> PCO: `print_margin`
/// - `printOrientation` (rw) -> PCO: `print_orientation`
/// - `printPageSize` (rw) -> PCO: `print_page_size`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `chordChart` (rw) -> PCO: `chord_chart`
/// - `chordChartFont` (rw) -> PCO: `chord_chart_font`
/// - `chordChartKey` (rw) -> PCO: `chord_chart_key`
/// - `chordChartColumns` (rw) -> PCO: `chord_chart_columns`
/// - `chordChartFontSize` (rw) -> PCO: `chord_chart_font_size`
/// - `isHasChordChart` (ro) -> PCO: `has_chord_chart`
/// - `isLyricsEnabled` (rw) -> PCO: `lyrics_enabled`
/// - `isNumberChartEnabled` (rw) -> PCO: `number_chart_enabled`
/// - `isNumeralChartEnabled` (rw) -> PCO: `numeral_chart_enabled`
/// - `sequence` (rw) -> PCO: `sequence`
/// - `sequenceShort` (ro) -> PCO: `sequence_short`
/// - `sequenceFull` (ro) -> PCO: `sequence_full`
/// - `chordChartChordColor` (rw) -> PCO: `chord_chart_chord_color`
/// - `archivedAt` (ro) -> PCO: `archived_at`
/// - `lyrics` (ro) -> PCO: `lyrics`
/// - `mtid` (rw) -> PCO: `mtid`
/// - `rehearsalMixId` (rw) -> PCO: `rehearsal_mix_id`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `keys`: include associated keys
/// - `sections`: include associated sections
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// NONE
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// NONE
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `attachment-arrangement-attachments`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/attachments
/// - `key-arrangement-keys`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys
/// - `arrangementsections-arrangement-sections`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections
/// - `tag-arrangement-tags`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/tags
///
/// Inbound Edges:
/// - `arrangement-item-arrangement`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/arrangement
/// - `arrangement-song-arrangements`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements
///
/// Actions:
/// - `assign_tags`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/assign_tags
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Arrangement",
///   "id": "1",
///   "attributes": {
///     "bpm": 1.42,
///     "created_at": "2000-01-01T12:00:00Z",
///     "isrc": "string",
///     "has_chords": true,
///     "length": 1,
///     "meter": "string",
///     "name": "string",
///     "notes": "string",
///     "print_margin": "string",
///     "print_orientation": "string",
///     "print_page_size": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "chord_chart": "string",
///     "chord_chart_font": "string",
///     "chord_chart_key": "string",
///     "chord_chart_columns": 1,
///     "chord_chart_font_size": 1,
///     "has_chord_chart": true,
///     "lyrics_enabled": true,
///     "number_chart_enabled": true,
///     "numeral_chart_enabled": true,
///     "sequence": [],
///     "sequence_short": [],
///     "sequence_full": [],
///     "chord_chart_chord_color": 1,
///     "archived_at": "2000-01-01T12:00:00Z",
///     "lyrics": "string",
///     "mtid": "primary_key",
///     "rehearsal_mix_id": "primary_key"
///   },
///   "relationships": {
///     "updated_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "song": {
///       "data": {
///         "type": "Song",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesArrangement extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Arrangement';
  static const String kTypeId = 'arrangement';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/songs/1/arrangements';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/songs/1/arrangements';

  /// possible includes with parameter ?include=a,b
  /// - `keys`: include associated keys
  /// - `sections`: include associated sections
  static List<String> get canInclude => ['keys', 'sections'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  ///
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get createPathTemplate => kCreatePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kBpm = 'bpm';
  static const kCreatedAt = 'created_at';
  static const kIsrc = 'isrc';
  static const kHasChords = 'has_chords';
  static const kLength = 'length';
  static const kMeter = 'meter';
  static const kName = 'name';
  static const kNotes = 'notes';
  static const kPrintMargin = 'print_margin';
  static const kPrintOrientation = 'print_orientation';
  static const kPrintPageSize = 'print_page_size';
  static const kUpdatedAt = 'updated_at';
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
  List<String> get createAllowed => [
        'bpm',
        'chord_chart',
        'chord_chart_chord_color',
        'chord_chart_columns',
        'chord_chart_font',
        'chord_chart_font_size',
        'chord_chart_key',
        'isrc',
        'length',
        'lyrics_enabled',
        'meter',
        'mtid',
        'name',
        'notes',
        'number_chart_enabled',
        'numeral_chart_enabled',
        'print_margin',
        'print_orientation',
        'print_page_size',
        'rehearsal_mix_id',
        'sequence'
      ];

  @override
  List<String> get updateAllowed => [
        'bpm',
        'chord_chart',
        'chord_chart_chord_color',
        'chord_chart_columns',
        'chord_chart_font',
        'chord_chart_font_size',
        'chord_chart_key',
        'isrc',
        'length',
        'lyrics_enabled',
        'meter',
        'mtid',
        'name',
        'notes',
        'number_chart_enabled',
        'numeral_chart_enabled',
        'print_margin',
        'print_orientation',
        'print_page_size',
        'rehearsal_mix_id',
        'sequence'
      ];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  double get bpm => attributes[kBpm] ?? 0;
  String get isrc => attributes[kIsrc] ?? '';
  bool get isHasChords => attributes[kHasChords] == true;
  int get length => attributes[kLength] ?? 0;
  String get meter => attributes[kMeter] ?? '';
  String get name => attributes[kName] ?? '';
  String get notes => attributes[kNotes] ?? '';
  String get printMargin => attributes[kPrintMargin] ?? '';
  String get printOrientation => attributes[kPrintOrientation] ?? '';
  String get printPageSize => attributes[kPrintPageSize] ?? '';
  String get chordChart => attributes[kChordChart] ?? '';
  String get chordChartFont => attributes[kChordChartFont] ?? '';
  String get chordChartKey => attributes[kChordChartKey] ?? '';
  int get chordChartColumns => attributes[kChordChartColumns] ?? 0;
  int get chordChartFontSize => attributes[kChordChartFontSize] ?? 0;
  bool get isHasChordChart => attributes[kHasChordChart] == true;
  bool get isLyricsEnabled => attributes[kLyricsEnabled] == true;
  bool get isNumberChartEnabled => attributes[kNumberChartEnabled] == true;
  bool get isNumeralChartEnabled => attributes[kNumeralChartEnabled] == true;
  List get sequence => attributes[kSequence] ?? [];
  List get sequenceShort => attributes[kSequenceShort] ?? [];
  List get sequenceFull => attributes[kSequenceFull] ?? [];
  int get chordChartChordColor => attributes[kChordChartChordColor] ?? 0;
  DateTime get archivedAt => DateTime.parse(attributes[kArchivedAt] ?? '');
  String get lyrics => attributes[kLyrics] ?? '';
  String get mtid => attributes[kMtid] ?? '';
  String get rehearsalMixId => attributes[kRehearsalMixId] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set bpm(double? x) =>
      (x == null) ? attributes.remove(kBpm) : attributes[kBpm] = x;

  /// pass `null` to remove key from attributes
  set isrc(String? x) =>
      (x == null) ? attributes.remove(kIsrc) : attributes[kIsrc] = x;

  /// pass `null` to remove key from attributes
  set length(int? x) =>
      (x == null) ? attributes.remove(kLength) : attributes[kLength] = x;

  /// Possible Values:
  ///
  /// - `2/2`
  ///
  /// - `2/4`
  ///
  /// - `3/4`
  ///
  /// - `4/4`
  ///
  /// - `5/4`
  ///
  /// - `6/4`
  ///
  /// - `3/8`
  ///
  /// - `6/8`
  ///
  /// - `7/8`
  ///
  /// - `9/8`
  ///
  /// - `12/8`

  /// pass `null` to remove key from attributes
  set meter(String? x) =>
      (x == null) ? attributes.remove(kMeter) : attributes[kMeter] = x;

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? attributes.remove(kName) : attributes[kName] = x;

  /// pass `null` to remove key from attributes
  set notes(String? x) =>
      (x == null) ? attributes.remove(kNotes) : attributes[kNotes] = x;

  /// Possible Values:
  ///
  /// - `0.0in`
  ///
  /// - `0.25in`
  ///
  /// - `0.5in`
  ///
  /// - `0.75in`
  ///
  /// - `1.0in`

  /// pass `null` to remove key from attributes
  set printMargin(String? x) => (x == null)
      ? attributes.remove(kPrintMargin)
      : attributes[kPrintMargin] = x;

  /// Possible Values:
  ///
  /// - `Portrait`
  ///
  /// - `Landscape`

  /// pass `null` to remove key from attributes
  set printOrientation(String? x) => (x == null)
      ? attributes.remove(kPrintOrientation)
      : attributes[kPrintOrientation] = x;

  /// Possible Values:
  ///
  /// - `Widescreen (16x9)`
  ///
  /// - `Fullscreen (4x3)`
  ///
  /// - `A4`
  ///
  /// - `Letter`
  ///
  /// - `Legal`
  ///
  /// - `11x17`

  /// pass `null` to remove key from attributes
  set printPageSize(String? x) => (x == null)
      ? attributes.remove(kPrintPageSize)
      : attributes[kPrintPageSize] = x;

  /// A string of lyrics and chords. Supports standard and ChordPro formats.

  /// pass `null` to remove key from attributes
  set chordChart(String? x) => (x == null)
      ? attributes.remove(kChordChart)
      : attributes[kChordChart] = x;

  /// pass `null` to remove key from attributes
  set chordChartFont(String? x) => (x == null)
      ? attributes.remove(kChordChartFont)
      : attributes[kChordChartFont] = x;

  /// pass `null` to remove key from attributes
  set chordChartKey(String? x) => (x == null)
      ? attributes.remove(kChordChartKey)
      : attributes[kChordChartKey] = x;

  /// pass `null` to remove key from attributes
  set chordChartColumns(int? x) => (x == null)
      ? attributes.remove(kChordChartColumns)
      : attributes[kChordChartColumns] = x;

  /// Possible Values:
  ///
  /// `10`, `11`, `12`, `13`, `14`, `15`, `16`, `18`, `20`, `22`, `24`, `26`, `28`, `32`, `36`, `42`, `48`

  /// pass `null` to remove key from attributes
  set chordChartFontSize(int? x) => (x == null)
      ? attributes.remove(kChordChartFontSize)
      : attributes[kChordChartFontSize] = x;

  /// pass `null` to remove key from attributes
  set isLyricsEnabled(bool? x) => (x == null)
      ? attributes.remove(kLyricsEnabled)
      : attributes[kLyricsEnabled] = x;

  /// pass `null` to remove key from attributes
  set isNumberChartEnabled(bool? x) => (x == null)
      ? attributes.remove(kNumberChartEnabled)
      : attributes[kNumberChartEnabled] = x;

  /// pass `null` to remove key from attributes
  set isNumeralChartEnabled(bool? x) => (x == null)
      ? attributes.remove(kNumeralChartEnabled)
      : attributes[kNumeralChartEnabled] = x;

  /// An array of strings containing a label and a number describing the section:
  ///
  /// ['Verse 1', 'Chorus 1', 'Verse 2']

  /// pass `null` to remove key from attributes
  set sequence(List? x) =>
      (x == null) ? attributes.remove(kSequence) : attributes[kSequence] = x;

  /// pass `null` to remove key from attributes
  set chordChartChordColor(int? x) => (x == null)
      ? attributes.remove(kChordChartChordColor)
      : attributes[kChordChartChordColor] = x;

  /// An alias for rehearsal_mix_id

  /// pass `null` to remove key from attributes
  set mtid(String? x) =>
      (x == null) ? attributes.remove(kMtid) : attributes[kMtid] = x;

  /// pass `null` to remove key from attributes
  set rehearsalMixId(String? x) => (x == null)
      ? attributes.remove(kRehearsalMixId)
      : attributes[kRehearsalMixId] = x;

  // Class Constructors
  PcoServicesArrangement.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesArrangement.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesArrangement] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/songs/$songId/arrangements`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesArrangement(String songId,
      {double? bpm,
      String? chordChart,
      int? chordChartChordColor,
      int? chordChartColumns,
      String? chordChartFont,
      int? chordChartFontSize,
      String? chordChartKey,
      String? isrc,
      int? length,
      bool? isLyricsEnabled,
      String? meter,
      String? mtid,
      String? name,
      String? notes,
      bool? isNumberChartEnabled,
      bool? isNumeralChartEnabled,
      String? printMargin,
      String? printOrientation,
      String? printPageSize,
      String? rehearsalMixId,
      List? sequence}) {
    var obj = PcoServicesArrangement.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/songs/$songId/arrangements';
    if (bpm != null) obj.bpm = bpm;
    if (chordChart != null) obj.chordChart = chordChart;
    if (chordChartChordColor != null)
      obj.chordChartChordColor = chordChartChordColor;
    if (chordChartColumns != null) obj.chordChartColumns = chordChartColumns;
    if (chordChartFont != null) obj.chordChartFont = chordChartFont;
    if (chordChartFontSize != null) obj.chordChartFontSize = chordChartFontSize;
    if (chordChartKey != null) obj.chordChartKey = chordChartKey;
    if (isrc != null) obj.isrc = isrc;
    if (length != null) obj.length = length;
    if (isLyricsEnabled != null) obj.isLyricsEnabled = isLyricsEnabled;
    if (meter != null) obj.meter = meter;
    if (mtid != null) obj.mtid = mtid;
    if (name != null) obj.name = name;
    if (notes != null) obj.notes = notes;
    if (isNumberChartEnabled != null)
      obj.isNumberChartEnabled = isNumberChartEnabled;
    if (isNumeralChartEnabled != null)
      obj.isNumeralChartEnabled = isNumeralChartEnabled;
    if (printMargin != null) obj.printMargin = printMargin;
    if (printOrientation != null) obj.printOrientation = printOrientation;
    if (printPageSize != null) obj.printPageSize = printPageSize;
    if (rehearsalMixId != null) obj.rehearsalMixId = rehearsalMixId;
    if (sequence != null) obj.sequence = sequence;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesArrangement] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/arrangement`
  static Future<PcoCollection<PcoServicesArrangement>>
      getFromServiceTypeAndPlanAndItem(
          String serviceTypeId, String planId, String itemId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesArrangement.canInclude;
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/arrangement';

    return PcoCollection.fromApiCall<PcoServicesArrangement>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesArrangement] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/arrangements`
  static Future<PcoCollection<PcoServicesArrangement>> getFromSong(
      String songId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesArrangement.canInclude;
    var url = '/services/v2/songs/$songId/arrangements';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesArrangement>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/attachments`
  Future<PcoCollection<PcoServicesAttachment>> getAttachments(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '$apiEndpoint/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesKey] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys`
  Future<PcoCollection<PcoServicesKey>> getKeys(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesKey.canInclude;
    var url = '$apiEndpoint/keys';
    return PcoCollection.fromApiCall<PcoServicesKey>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesArrangementSection] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections`
  Future<PcoCollection<PcoServicesArrangementSection>> getSections(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesArrangementSection.canInclude;
    var url = '$apiEndpoint/sections';
    return PcoCollection.fromApiCall<PcoServicesArrangementSection>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/tags`
  Future<PcoCollection<PcoServicesTag>> getTags(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoServicesTag>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `assign_tags`
  ///
  /// Used to assign tags to an arrangement.
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/assign_tags`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// All tags will be replaced so the full data set must be sent.
  ///
  /// It expects a body that looks like:
  ///
  /// ```json
  /// {
  /// 	"data": {
  /// 		"type": "TagAssignment",
  /// 		"attributes": {},
  /// 		"relationships": {
  /// 			"tags": {
  /// 				"data": [
  /// 					{
  /// 						"type": "Tag",
  /// 						"id": "5"
  /// 					}
  /// 				]
  /// 			}
  /// 		}
  /// 	}
  /// }
  /// ```
  ///
  /// On success you will get back a `204 No Content`.
  Future<PlanningCenterApiResponse> assignTags(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/assign_tags';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }
}
