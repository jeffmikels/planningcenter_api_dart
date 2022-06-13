/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.609307
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


import '../../pco.dart';

/// This class represents a PCO Services Key Object
/// 
/// - Application:        services
/// - Id:                 key
/// - Type:               Key
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys
/// 
/// ## Description
/// Each song arrangement can have multiple keys. A key is the pitch center of the song.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `name` (rw) -> PCO: `name`
/// - `alternateKeys` (rw) -> PCO: `alternate_keys`
/// - `endingKey` (rw) -> PCO: `ending_key`
/// - `startingKey` (rw) -> PCO: `starting_key`
/// - `isStartingMinor` (ro) -> PCO: `starting_minor`
/// - `isEndingMinor` (ro) -> PCO: `ending_minor`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// NONE
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
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `attachment-key-attachments`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys/1/attachments
/// 
/// Inbound Edges:
/// - `key-arrangement-keys`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys
/// - `key-item-key`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/key
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoServicesKey extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Key';
  static const String kTypeId = 'key';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','updated_at'];

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
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kName = 'name';
  static const kAlternateKeys = 'alternate_keys';
  static const kEndingKey = 'ending_key';
  static const kStartingKey = 'starting_key';
  static const kStartingMinor = 'starting_minor';
  static const kEndingMinor = 'ending_minor';


  // getters and setters
  @override
  List<String> get createAllowed => ['name', 'starting_key', 'ending_key', 'alternate_keys'];

  @override
  List<String> get updateAllowed => ['name', 'starting_key', 'ending_key', 'alternate_keys'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => attributes[kName] ?? '';
  String get alternateKeys => attributes[kAlternateKeys] ?? '';
  String get endingKey => attributes[kEndingKey] ?? '';
  String get startingKey => attributes[kStartingKey] ?? '';
  bool get isStartingMinor => attributes[kStartingMinor] == true;
  bool get isEndingMinor => attributes[kEndingMinor] == true;  
  
  // setters for object attributes
  
  /// pass `null` to remove key from attributes
  set name(String? x) => (x == null) ? attributes.remove(kName) : attributes[kName] = x;
  
  /// An array of objects.
  /// 
  /// `
  /// {
  ///   "name": "My Alternate Key",
  ///   "key": "B"
  /// }
  /// `
  
  /// pass `null` to remove key from attributes
  set alternateKeys(String? x) => (x == null) ? attributes.remove(kAlternateKeys) : attributes[kAlternateKeys] = x;
  
  /// Possible Values:
  /// 
  /// `Ab`, `A`, `A#`, `Bb`, `B`, `C`, `C#`, `Db`, `D`, `D#`, `Eb`, `E`, `F`, `F#`, `Gb`, `G`, `G#`, `Abm`, `Am`, `A#m`, `Bbm`, `Bm`, `Cm`, `C#m`, `Dbm`, `Dm`, `D#m`, `Ebm`, `Em`, `Fm`, `F#m`, `Gbm`, `Gm`, `G#m`
  /// 
  /// To set the key to minor append `m` to the key. e.g. `Cm`
  
  /// pass `null` to remove key from attributes
  set endingKey(String? x) => (x == null) ? attributes.remove(kEndingKey) : attributes[kEndingKey] = x;
  
  /// Possible Values:
  /// 
  /// `Ab`, `A`, `A#`, `Bb`, `B`, `C`, `C#`, `Db`, `D`, `D#`, `Eb`, `E`, `F`, `F#`, `Gb`, `G`, `G#`, `Abm`, `Am`, `A#m`, `Bbm`, `Bm`, `Cm`, `C#m`, `Dbm`, `Dm`, `D#m`, `Ebm`, `Em`, `Fm`, `F#m`, `Gbm`, `Gm`, `G#m`
  /// 
  /// To set the key to minor append `m` to the key. e.g. `Cm`
  
  /// pass `null` to remove key from attributes
  set startingKey(String? x) => (x == null) ? attributes.remove(kStartingKey) : attributes[kStartingKey] = x;  


  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships
  
  




  // Class Constructors
  PcoServicesKey.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoServicesKey.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesKey] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/songs/$songId/arrangements/$arrangementId/keys`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesKey(String songId, String arrangementId, { String? name, String? startingKey, String? endingKey, String? alternateKeys }) {
    var obj = PcoServicesKey.empty();
    obj._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/songs/$songId/arrangements/$arrangementId/keys';
    if (name != null) obj.name = name;
    if (startingKey != null) obj.startingKey = startingKey;
    if (endingKey != null) obj.endingKey = endingKey;
    if (alternateKeys != null) obj.alternateKeys = alternateKeys;
    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesKey] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/arrangements/$arrangementId/keys`
  static Future<PcoCollection<PcoServicesKey>> getFromSongAndArrangement(String songId,String arrangementId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesKey.canInclude;
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/keys';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesKey>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesKey] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/key`
  static Future<PcoCollection<PcoServicesKey>> getFromServiceTypeAndPlanAndItem(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesKey.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/key';
    
    return PcoCollection.fromApiCall<PcoServicesKey>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys/1/attachments`
  Future<PcoCollection<PcoServicesAttachment>> getAttachments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '$apiEndpoint/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
