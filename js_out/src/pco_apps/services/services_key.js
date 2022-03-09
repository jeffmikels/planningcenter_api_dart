/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.384157
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services Key Object
/// 
/// - Application:        services
/// - Id:                 key
/// - Type:               Key
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys
/// 
/// Description:
/// Each song arrangement can have multiple keys. A key is the pitch center of the song.
/// 
/// Example:
/// ```json
/// {
///   "type": "Key",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "alternate_keys": "string",
///     "ending_key": "string",
///     "starting_key": "string",
///     "starting_minor": true,
///     "ending_minor": true
///   },
///   "relationships": {
///     "arrangement": {
///       "data": {
///         "type": "Arrangement",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `attachment-key-attachments`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys/1/attachments
/// 
/// All Inbound Edges:
/// - `key-arrangement-keys`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys
/// - `key-item-key`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/key
/// 
/// All Actions:
/// NONE
///
export class PcoServicesKey extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'Key';
  static kTypeId = 'key';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'key-arrangement-keys';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesKey.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesKey.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesKey.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kName() { return 'name' }
  static get kAlternateKeys() { return 'alternate_keys' }
  static get kEndingKey() { return 'ending_key' }
  static get kStartingKey() { return 'starting_key' }
  static get kStartingMinor() { return 'starting_minor' }
  static get kEndingMinor() { return 'ending_minor' }


  // getters and setters
  // @override
  get createAllowed() { return ['name','starting_key','ending_key','alternate_keys']; }

  // @override
  get updateAllowed() { return ['name','starting_key','ending_key','alternate_keys']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get alternateKeys() { return attributes[this.constructor.kAlternateKeys] ?? ''; }
  get endingKey() { return attributes[this.constructor.kEndingKey] ?? ''; }
  get startingKey() { return attributes[this.constructor.kStartingKey] ?? ''; }
  get isStartingMinor() { return attributes[this.constructor.kStartingMinor] == true; }
  get isEndingMinor() { return attributes[this.constructor.kEndingMinor] == true; }
  

  // setters for object attributes

  set name(s) {attributes[this.constructor.kName] = s;}
  
  /// An array of objects.
  /// 
  /// `
  /// {
  ///   "name": "My Alternate Key",
  ///   "key": "B"
  /// }
  /// `
  set alternateKeys(s) {attributes[this.constructor.kAlternateKeys] = s;}
  
  /// Possible Values:
  /// 
  /// `Ab`, `A`, `A#`, `Bb`, `B`, `C`, `C#`, `Db`, `D`, `D#`, `Eb`, `E`, `F`, `F#`, `Gb`, `G`, `G#`, `Abm`, `Am`, `A#m`, `Bbm`, `Bm`, `Cm`, `C#m`, `Dbm`, `Dm`, `D#m`, `Ebm`, `Em`, `Fm`, `F#m`, `Gbm`, `Gm`, `G#m`
  /// 
  /// To set the key to minor append `m` to the key. e.g. `Cm`
  set endingKey(s) {attributes[this.constructor.kEndingKey] = s;}
  
  /// Possible Values:
  /// 
  /// `Ab`, `A`, `A#`, `Bb`, `B`, `C`, `C#`, `Db`, `D`, `D#`, `Eb`, `E`, `F`, `F#`, `Gb`, `G`, `G#`, `Abm`, `Am`, `A#m`, `Bbm`, `Bm`, `Cm`, `C#m`, `Dbm`, `Dm`, `D#m`, `Ebm`, `Em`, `Fm`, `F#m`, `Gbm`, `Gm`, `G#m`
  /// 
  /// To set the key to minor append `m` to the key. e.g. `Cm`
  set startingKey(s) {attributes[this.constructor.kStartingKey] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesKey._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesKey({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesKey] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/songs/${songId}/arrangements/${arrangementId}/keys`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(songId,arrangementId) {
    super(PcoServicesKey.kPcoApplication, PcoServicesKey.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/songs/${songId}/arrangements/${arrangementId}/keys`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesKey] objects (expecting many)
  /// using a path like this: `/services/v2/songs/${songId}/arrangements/${arrangementId}/keys`
  static getFromSongAndArrangement(songId, arrangementId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesKey.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/songs/${songId}/arrangements/${arrangementId}/keys`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesKey] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/key`
  static getFromServiceTypeAndPlanAndItem(serviceTypeId, planId, itemId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesKey.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/key`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys/1/attachments`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAttachments({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let url = `${apiEndpoint}/attachments`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
