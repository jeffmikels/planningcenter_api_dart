/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.613187
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// This class represents a PCO Services Tag Object
/// 
/// - Application:        services
/// - Id:                 tag
/// - Type:               Tag
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/media/1/tags
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesTag.fromJson()` constructor.
/// - Manually create an object using the `PcoServicesTag.manual()` constructor.
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
/// A tag belonging to a tag group.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
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
/// NONE
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// NONE
/// 
/// Inbound Edges:
/// - `tag-arrangement-tags`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/tags
/// - `tag-media-tags`: https://api.planningcenteronline.com/services/v2/media/1/tags
/// - `tag-person-tags`: https://api.planningcenteronline.com/services/v2/people/1/tags
/// - `tag-song-tags`: https://api.planningcenteronline.com/services/v2/songs/1/tags
/// - `tag-taggroup-tags`: https://api.planningcenteronline.com/services/v2/tag_groups/1/tags
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Tag",
///   "id": "1",
///   "attributes": {
///     "name": "string"
///   },
///   "relationships": {
///     "tag_group": {
///       "data": {
///         "type": "TagGroup",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesTag extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Tag';
  static const String kTypeId = 'tag';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/media/1/tags';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

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
  static const kName = 'name';


  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';

  // Class Constructors
  PcoServicesTag.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesTag.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesTag] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoServicesTag({String? id, String? name, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoServicesTag.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
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



  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/arrangements/$arrangementId/tags`
  static Future<PcoCollection<PcoServicesTag>> getFromSongAndArrangement(String songId,String arrangementId, {String? id, PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `/services/v2/media/$mediaId/tags`
  static Future<PcoCollection<PcoServicesTag>> getFromMedia(String mediaId, {String? id, PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '/services/v2/media/$mediaId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/tags`
  static Future<PcoCollection<PcoServicesTag>> getFromPerson(String personId, {String? id, PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '/services/v2/people/$personId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/tags`
  static Future<PcoCollection<PcoServicesTag>> getFromSong(String songId, {String? id, PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '/services/v2/songs/$songId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `/services/v2/tag_groups/$tagGroupId/tags`
  static Future<PcoCollection<PcoServicesTag>> getFromTagGroup(String tagGroupId, {String? id, PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '/services/v2/tag_groups/$tagGroupId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTag>(url, query: query, apiVersion:kApiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
