/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.292618
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services Arrangement Object
/// 
/// - Application:        services
/// - Id:                 arrangement
/// - Type:               Arrangement
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/arrangements
/// 
/// Description:
/// Each arrangement belongs to a song and is a different version of that song.
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// - keys: include associated keys 
/// - sections: include associated sections 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `attachment-arrangement-attachments`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/attachments
/// - `key-arrangement-keys`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys
/// - `arrangementsections-arrangement-sections`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections
/// - `tag-arrangement-tags`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/tags
/// 
/// All Inbound Edges:
/// - `arrangement-item-arrangement`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/arrangement
/// - `arrangement-song-arrangements`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements
/// 
/// All Actions:
/// - `assign_tags`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/assign_tags
///
export class PcoServicesArrangement extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'Arrangement';
  static kTypeId = 'arrangement';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'arrangement-song-arrangements';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/arrangements';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/arrangements';

  /// possible includes with parameter ?include=a,b
  /// - `keys`: include associated keys 
  /// - `sections`: include associated sections 
  static get canInclude() { return ['keys','sections'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesArrangement.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesArrangement.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesArrangement.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kBpm() { return 'bpm' }
  static get kCreatedAt() { return 'created_at' }
  static get kIsrc() { return 'isrc' }
  static get kHasChords() { return 'has_chords' }
  static get kLength() { return 'length' }
  static get kMeter() { return 'meter' }
  static get kName() { return 'name' }
  static get kNotes() { return 'notes' }
  static get kPrintMargin() { return 'print_margin' }
  static get kPrintOrientation() { return 'print_orientation' }
  static get kPrintPageSize() { return 'print_page_size' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kChordChart() { return 'chord_chart' }
  static get kChordChartFont() { return 'chord_chart_font' }
  static get kChordChartKey() { return 'chord_chart_key' }
  static get kChordChartColumns() { return 'chord_chart_columns' }
  static get kChordChartFontSize() { return 'chord_chart_font_size' }
  static get kHasChordChart() { return 'has_chord_chart' }
  static get kLyricsEnabled() { return 'lyrics_enabled' }
  static get kNumberChartEnabled() { return 'number_chart_enabled' }
  static get kNumeralChartEnabled() { return 'numeral_chart_enabled' }
  static get kSequence() { return 'sequence' }
  static get kSequenceShort() { return 'sequence_short' }
  static get kSequenceFull() { return 'sequence_full' }
  static get kChordChartChordColor() { return 'chord_chart_chord_color' }
  static get kArchivedAt() { return 'archived_at' }
  static get kLyrics() { return 'lyrics' }
  static get kMtid() { return 'mtid' }
  static get kRehearsalMixId() { return 'rehearsal_mix_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['bpm','chord_chart','chord_chart_chord_color','chord_chart_columns','chord_chart_font','chord_chart_font_size','chord_chart_key','isrc','length','lyrics_enabled','meter','mtid','name','notes','number_chart_enabled','numeral_chart_enabled','print_margin','print_orientation','print_page_size','rehearsal_mix_id','sequence']; }

  // @override
  get updateAllowed() { return ['bpm','chord_chart','chord_chart_chord_color','chord_chart_columns','chord_chart_font','chord_chart_font_size','chord_chart_key','isrc','length','lyrics_enabled','meter','mtid','name','notes','number_chart_enabled','numeral_chart_enabled','print_margin','print_orientation','print_page_size','rehearsal_mix_id','sequence']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get bpm() { return attributes[this.constructor.kBpm] ?? 0; }
  get isrc() { return attributes[this.constructor.kIsrc] ?? ''; }
  get isHasChords() { return attributes[this.constructor.kHasChords] == true; }
  get length() { return attributes[this.constructor.kLength] ?? 0; }
  get meter() { return attributes[this.constructor.kMeter] ?? ''; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get notes() { return attributes[this.constructor.kNotes] ?? ''; }
  get printMargin() { return attributes[this.constructor.kPrintMargin] ?? ''; }
  get printOrientation() { return attributes[this.constructor.kPrintOrientation] ?? ''; }
  get printPageSize() { return attributes[this.constructor.kPrintPageSize] ?? ''; }
  get chordChart() { return attributes[this.constructor.kChordChart] ?? ''; }
  get chordChartFont() { return attributes[this.constructor.kChordChartFont] ?? ''; }
  get chordChartKey() { return attributes[this.constructor.kChordChartKey] ?? ''; }
  get chordChartColumns() { return attributes[this.constructor.kChordChartColumns] ?? 0; }
  get chordChartFontSize() { return attributes[this.constructor.kChordChartFontSize] ?? 0; }
  get isHasChordChart() { return attributes[this.constructor.kHasChordChart] == true; }
  get isLyricsEnabled() { return attributes[this.constructor.kLyricsEnabled] == true; }
  get isNumberChartEnabled() { return attributes[this.constructor.kNumberChartEnabled] == true; }
  get isNumeralChartEnabled() { return attributes[this.constructor.kNumeralChartEnabled] == true; }
  get sequence() { return attributes[this.constructor.kSequence] ?? []; }
  get sequenceShort() { return attributes[this.constructor.kSequenceShort] ?? []; }
  get sequenceFull() { return attributes[this.constructor.kSequenceFull] ?? []; }
  get chordChartChordColor() { return attributes[this.constructor.kChordChartChordColor] ?? 0; }
  get archivedAt() { return Date.parse(attributes[this.constructor.kArchivedAt] ?? 0); }
  get lyrics() { return attributes[this.constructor.kLyrics] ?? ''; }
  get mtid() { return attributes[this.constructor.kMtid] ?? ''; }
  get rehearsalMixId() { return attributes[this.constructor.kRehearsalMixId] ?? ''; }
  

  // setters for object attributes

  set bpm(n) { attributes[this.constructor.kBpm] = n; }
  set isrc(s) {attributes[this.constructor.kIsrc] = s;}
  set length(n) { attributes[this.constructor.kLength] = n; }
  
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
  set meter(s) {attributes[this.constructor.kMeter] = s;}
  set name(s) {attributes[this.constructor.kName] = s;}
  set notes(s) {attributes[this.constructor.kNotes] = s;}
  
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
  set printMargin(s) {attributes[this.constructor.kPrintMargin] = s;}
  
  /// Possible Values:
  /// 
  /// - `Portrait`
  /// 
  /// - `Landscape`
  set printOrientation(s) {attributes[this.constructor.kPrintOrientation] = s;}
  
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
  set printPageSize(s) {attributes[this.constructor.kPrintPageSize] = s;}
  
  /// A string of lyrics and chords. Supports standard and ChordPro formats.
  set chordChart(s) {attributes[this.constructor.kChordChart] = s;}
  set chordChartFont(s) {attributes[this.constructor.kChordChartFont] = s;}
  set chordChartKey(s) {attributes[this.constructor.kChordChartKey] = s;}
  set chordChartColumns(n) { attributes[this.constructor.kChordChartColumns] = n; }
  
  /// Possible Values:
  /// 
  /// `10`, `11`, `12`, `13`, `14`, `15`, `16`, `18`, `20`, `22`, `24`, `26`, `28`, `32`, `36`, `42`, `48`
  set chordChartFontSize(n) { attributes[this.constructor.kChordChartFontSize] = n; }
  set isLyricsEnabled(b) { attributes[this.constructor.kLyricsEnabled] = b; }
  set isNumberChartEnabled(b) { attributes[this.constructor.kNumberChartEnabled] = b; }
  set isNumeralChartEnabled(b) { attributes[this.constructor.kNumeralChartEnabled] = b; }
  
  /// An array of strings containing a label and a number describing the section:
  /// 
  /// ['Verse 1', 'Chorus 1', 'Verse 2']
  set sequence(a) { attributes[this.constructor.kSequence] = a; }
  set chordChartChordColor(n) { attributes[this.constructor.kChordChartChordColor] = n; }
  
  /// An alias for rehearsal_mix_id
  set mtid(s) {attributes[this.constructor.kMtid] = s;}
  set rehearsalMixId(s) {attributes[this.constructor.kRehearsalMixId] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesArrangement._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesArrangement({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesArrangement] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/songs/${songId}/arrangements`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(songId) {
    super(PcoServicesArrangement.kPcoApplication, PcoServicesArrangement.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/songs/${songId}/arrangements`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesArrangement] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/arrangement`
  static getFromServiceTypeAndPlanAndItem(serviceTypeId, planId, itemId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesArrangement.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/arrangement`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesArrangement] objects (expecting many)
  /// using a path like this: `/services/v2/songs/${songId}/arrangements`
  static getFromSong(songId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesArrangement.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/songs/${songId}/arrangements`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/attachments`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAttachments({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let url = `${apiEndpoint}/attachments`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesKey] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getKeys({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesKey.canInclude;
    let url = `${apiEndpoint}/keys`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesArrangementSection] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSections({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesArrangementSection.canInclude;
    let url = `${apiEndpoint}/sections`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/tags`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTags({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    let url = `${apiEndpoint}/tags`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
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
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  assignTags(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/assign_tags`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
