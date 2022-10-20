/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:29:04.498895
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Ordering is not allowed on this object.
enum PcoPeopleNoteCategoryShareOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleNoteCategoryShareFilter { none }

/// Creates a [PcoPeopleNoteCategoryShareQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleNoteCategoryShareQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleNoteCategoryShareOrder, String> _orderMap = {
    
  };
  static String orderString(PcoPeopleNoteCategoryShareOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleNoteCategoryShareFilter, String> _filterMap = {
    
  };
  static String filterString(PcoPeopleNoteCategoryShareFilter filter) => _filterMap[filter]!;

  PcoPeopleNoteCategoryShareQuery({



    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super() ;
}

/// This class represents a PCO People NoteCategoryShare Object
/// 
/// - Application:        people
/// - Id:                 note_category_share
/// - Type:               NoteCategoryShare
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/note_categories/1/shares
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/note_categories/1/shares
/// 
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleNoteCategoryShare()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleNoteCategoryShare.fromJson()` constructor.
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
/// A note category share defines who can view notes in a category.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `group` (rw) -> PCO: `group`
/// - `personId` (rw) -> PCO: `person_id`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// NONE
/// 
/// Inbound Edges:
/// - `notecategoryshare-notecategory-shares`: https://api.planningcenteronline.com/people/v2/note_categories/1/shares
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "NoteCategoryShare",
///   "id": "1",
///   "attributes": {
///     "group": "value",
///     "person_id": "primary_key"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "note_category": {
///       "data": {
///         "type": "NoteCategory",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleNoteCategoryShare extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'NoteCategoryShare';
  static const String kTypeId = 'note_category_share';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/note_categories/1/shares';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/people/v2/note_categories/1/shares';

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
  static const kGroup = 'group';
  static const kPersonId = 'person_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['group', 'person_id'];

  @override
  List<String> get updateAllowed => ['group', 'person_id'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get group => _attributes[kGroup] ?? '';
  String get personId => _attributes[kPersonId] ?? '';
  
  // setters for object attributes
  
  /// Possible values: `No Access`, `Viewer`, `Editor`, or `Manager`
  ///
  /// pass `null` to remove key from attributes
  set group(String? x) => (x == null) ? _attributes.remove(kGroup) : _attributes[kGroup] = x;
  ///
  /// pass `null` to remove key from attributes
  set personId(String? x) => (x == null) ? _attributes.remove(kPersonId) : _attributes[kPersonId] = x;

  // Class Constructors
  PcoPeopleNoteCategoryShare.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  PcoPeopleNoteCategoryShare.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleNoteCategoryShare] object using this endpoint: `https://api.planningcenteronline.com/people/v2/note_categories/$noteCategoryId/shares`
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `group`, `personId`
  /// - FIELDS USED WHEN UPDATING: `group`, `personId`
  factory PcoPeopleNoteCategoryShare({required String noteCategoryId, String? id, String? group, String? personId, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoPeopleNoteCategoryShare.empty();
    obj._id = id;
    obj._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/note_categories/$noteCategoryId/shares';
    if (group != null) obj._attributes['group'] = group;
    if (personId != null) obj._attributes['person_id'] = personId;

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



  /// Will get a collection of [PcoPeopleNoteCategoryShare] objects (expecting one)
  /// using a path like this: `/people/v2/note_categories/$noteCategoryId/shares`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleNoteCategoryShare>> getSharesFromNoteCategory(String noteCategoryId, {PcoPeopleNoteCategoryShareQuery? query, }) async {
    query ??= PcoPeopleNoteCategoryShareQuery();
    
    
    var url = '/people/v2/note_categories/$noteCategoryId/shares';
    
    return PcoCollection.fromApiCall<PcoPeopleNoteCategoryShare>(url, query: query, apiVersion:kApiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
