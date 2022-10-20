/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:43:17.387775
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Ordering is not allowed on this object.
enum PcoGroupsEventNoteOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoGroupsEventNoteFilter { none }

/// Creates a [PcoGroupsEventNoteQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
/// 
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeOwner`: include associated owner 
/// - `includeAll`: include all related objects
/// 
/// Alternatively, you may pass a list of strings to the `include` argument.
/// 
/// e.g. `PcoGroupsEventNoteQuery(includes: ['a', 'b'])`
/// 
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGroupsEventNoteQuery extends PlanningCenterApiQuery {
  static final Map<PcoGroupsEventNoteOrder, String> _orderMap = {
    
  };
  static String orderString(PcoGroupsEventNoteOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGroupsEventNoteFilter, String> _filterMap = {
    
  };
  static String filterString(PcoGroupsEventNoteFilter filter) => _filterMap[filter]!;

  PcoGroupsEventNoteQuery({
    /// include associated owner
    /// when true, adds `?include=owner` to url
    bool includeOwner = false,
    



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
  }) : super() {
    if (includeOwner) include.add('owner');}
}

/// This class represents a PCO Groups EventNote Object
/// 
/// - Application:        groups
/// - Id:                 event_note
/// - Type:               EventNote
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/events/1/notes
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGroupsEventNote.fromJson()` constructor.
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
/// 
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `body` (ro) -> PCO: `body`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `owner-eventnote-owner`: https://api.planningcenteronline.com/groups/v2/events/1/notes/1/owner
/// 
/// Inbound Edges:
/// - `eventnote-event-notes`: https://api.planningcenteronline.com/groups/v2/events/1/notes
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "EventNote",
///   "id": "1",
///   "attributes": {
///     "body": "string"
///   },
///   "relationships": {
///     "annotatable": {
///       "data": {
///         "type": "Annotatable",
///         "id": "1"
///       }
///     },
///     "owner": {
///       "data": {
///         "type": "Owner",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoGroupsEventNote extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'EventNote';
  static const String kTypeId = 'event_note';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/groups/v2/events/1/notes';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `owner`: include associated owner 
  static List<String> get canInclude => ['owner'];

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
  static const kBody = 'body';


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
  String get body => _attributes[kBody] ?? '';
  
  // typed getters for each relationship
  
  PcoGroupsOwner? get includedOwner => _firstOrNull<PcoGroupsOwner>(relationships['owner']);

  // Class Constructors
  PcoGroupsEventNote.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGroupsEventNote.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGroupsEventNote] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGroupsEventNote({String? id, String? body, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoGroupsEventNote.empty();
    obj._id = id;
    if (body != null) obj._attributes['body'] = body;

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



  /// Will get a collection of [PcoGroupsEventNote] objects (expecting one)
  /// using a path like this: `/groups/v2/events/$eventId/notes`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsEventNote>> getNotesFromEvent(String eventId, {PcoGroupsEventNoteQuery? query, bool includeOwner = false,}) async {
    query ??= PcoGroupsEventNoteQuery();
    
    if (includeOwner) query.include.add('owner');
    var url = '/groups/v2/events/$eventId/notes';
    
    return PcoCollection.fromApiCall<PcoGroupsEventNote>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsOwner] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/events/1/notes/1/owner`
  Future<PcoCollection<PcoGroupsOwner>> getOwner({PcoGroupsOwnerQuery? query}) async {
    query ??= PcoGroupsOwnerQuery();
    var url = '$apiEndpoint/owner';
    return PcoCollection.fromApiCall<PcoGroupsOwner>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
