/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:38.122057
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoGivingNoteOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoGivingNoteFilter { none }

/// Creates a [PcoGivingNoteQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGivingNoteQuery extends PlanningCenterApiQuery {
  static final Map<PcoGivingNoteOrder, String> _orderMap = {};
  static String orderString(PcoGivingNoteOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGivingNoteFilter, String> _filterMap = {};
  static String filterString(PcoGivingNoteFilter filter) => _filterMap[filter]!;

  PcoGivingNoteQuery({
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
  }) : super();
}

/// This class represents a PCO Giving Note Object
///
/// - Application:        giving
/// - Id:                 note
/// - Type:               Note
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/donations/1/note
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGivingNote.fromJson()` constructor.
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
/// NONE
///
/// Inbound Edges:
/// - `note-donation-note`: https://api.planningcenteronline.com/giving/v2/donations/1/note
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Note",
///   "id": "1",
///   "attributes": {
///     "body": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoGivingNote extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Note';
  static const String kTypeId = 'note';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2/donations/1/note';
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

  // Class Constructors
  PcoGivingNote.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGivingNote.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingNote] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGivingNote(
      {String? id,
      String? body,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGivingNote.empty();
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

  /// Will get a [PcoCollection] of [PcoGivingNote] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/note`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingNote>> getFromDonation(
    String donationId, {
    String? id,
    PcoGivingNoteQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGivingNoteQuery();
    if (getAll) query.getAll = true;

    var url = '/giving/v2/donations/$donationId/note';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingNote>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGivingNote] object
  /// using a path like this: `/giving/v2/donations/$donationId/note/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGivingNote?> getSingleFromDonation(
    String donationId,
    String id, {
    PcoGivingNoteQuery? query,
  }) async {
    query ??= PcoGivingNoteQuery();

    var url = '/giving/v2/donations/$donationId/note/$id';
    var retval = await PcoCollection.fromApiCall<PcoGivingNote>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGivingNote] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/note`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGivingNote>> getAllFromDonation(
    String donationId, {
    String? id,
    PcoGivingNoteQuery? query,
  }) async {
    query ??= PcoGivingNoteQuery();
    query.getAll = true;

    var url = '/giving/v2/donations/$donationId/note';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingNote>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
