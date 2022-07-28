/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.570508
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

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
/// ## Instantiation
/// - Create a new instance using the `PcoServicesKey()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesKey.fromJson()` constructor.
/// - Manually create an object using the `PcoServicesKey.manual()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
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
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at', 'updated_at'];

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
  List<String> get createAllowed =>
      ['name', 'starting_key', 'ending_key', 'alternate_keys'];

  @override
  List<String> get updateAllowed =>
      ['name', 'starting_key', 'ending_key', 'alternate_keys'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  String get alternateKeys => _attributes[kAlternateKeys] ?? '';
  String get endingKey => _attributes[kEndingKey] ?? '';
  String get startingKey => _attributes[kStartingKey] ?? '';
  bool get isStartingMinor => _attributes[kStartingMinor] == true;
  bool get isEndingMinor => _attributes[kEndingMinor] == true;

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  /// An array of objects.
  ///
  /// `
  /// {
  ///   "name": "My Alternate Key",
  ///   "key": "B"
  /// }
  /// `

  /// pass `null` to remove key from attributes
  set alternateKeys(String? x) => (x == null)
      ? _attributes.remove(kAlternateKeys)
      : _attributes[kAlternateKeys] = x;

  /// Possible Values:
  ///
  /// `Ab`, `A`, `A#`, `Bb`, `B`, `C`, `C#`, `Db`, `D`, `D#`, `Eb`, `E`, `F`, `F#`, `Gb`, `G`, `G#`, `Abm`, `Am`, `A#m`, `Bbm`, `Bm`, `Cm`, `C#m`, `Dbm`, `Dm`, `D#m`, `Ebm`, `Em`, `Fm`, `F#m`, `Gbm`, `Gm`, `G#m`
  ///
  /// To set the key to minor append `m` to the key. e.g. `Cm`

  /// pass `null` to remove key from attributes
  set endingKey(String? x) => (x == null)
      ? _attributes.remove(kEndingKey)
      : _attributes[kEndingKey] = x;

  /// Possible Values:
  ///
  /// `Ab`, `A`, `A#`, `Bb`, `B`, `C`, `C#`, `Db`, `D`, `D#`, `Eb`, `E`, `F`, `F#`, `Gb`, `G`, `G#`, `Abm`, `Am`, `A#m`, `Bbm`, `Bm`, `Cm`, `C#m`, `Dbm`, `Dm`, `D#m`, `Ebm`, `Em`, `Fm`, `F#m`, `Gbm`, `Gm`, `G#m`
  ///
  /// To set the key to minor append `m` to the key. e.g. `Cm`

  /// pass `null` to remove key from attributes
  set startingKey(String? x) => (x == null)
      ? _attributes.remove(kStartingKey)
      : _attributes[kStartingKey] = x;

  // Class Constructors
  PcoServicesKey.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoServicesKey.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesKey] object using this endpoint: `https://api.planningcenteronline.com/services/v2/songs/$songId/arrangements/$arrangementId/keys`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: `name`, `startingKey`, `endingKey`, `alternateKeys`
  /// - FIELDS USED WHEN UPDATING: `name`, `startingKey`, `endingKey`, `alternateKeys`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoServicesKey(
      {required String songId,
      required String arrangementId,
      String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? name,
      String? alternateKeys,
      String? endingKey,
      String? startingKey,
      bool? isStartingMinor,
      bool? isEndingMinor,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesKey.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/songs/$songId/arrangements/$arrangementId/keys';
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (name != null) obj._attributes['name'] = name;
    if (alternateKeys != null)
      obj._attributes['alternate_keys'] = alternateKeys;
    if (endingKey != null) obj._attributes['ending_key'] = endingKey;
    if (startingKey != null) obj._attributes['starting_key'] = startingKey;
    if (isStartingMinor != null)
      obj._attributes['starting_minor'] = isStartingMinor;
    if (isEndingMinor != null) obj._attributes['ending_minor'] = isEndingMinor;
    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }
    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoServicesKey] objects (expecting one)
  /// using a path like this: `/services/v2/songs/$songId/arrangements/$arrangementId/keys`
  static Future<PcoCollection<PcoServicesKey>> getKeysFromSongAndArrangement(
    String songId,
    String arrangementId, {
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/keys';

    return PcoCollection.fromApiCall<PcoServicesKey>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesKey] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/key`
  static Future<PcoCollection<PcoServicesKey>> getFromServiceTypeAndPlanAndItem(
    String serviceTypeId,
    String planId,
    String itemId, {
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/key';

    return PcoCollection.fromApiCall<PcoServicesKey>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/keys/1/attachments`
  Future<PcoCollection<PcoServicesAttachment>> getAttachments({
    PlanningCenterApiQuery? query,
    bool includeZooms = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeZooms) query.include.add('zooms');
    var url = '$apiEndpoint/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
