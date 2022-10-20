/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.514701
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `planSortDate` -> `?order=plan_sort_date`
enum PcoServicesSongScheduleOrder { planSortDate }

/// Possible Inbound Filters:
/// - `threeMostRecent` -> `?filter=three_most_recent` : -- no description
enum PcoServicesSongScheduleFilter { threeMostRecent }

/// Creates a [PcoServicesSongScheduleQuery] object
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoServicesSongScheduleOrder.planSortDate` : will order by `plan_sort_date`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesSongScheduleQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesSongScheduleOrder, String> _orderMap = {
    PcoServicesSongScheduleOrder.planSortDate: 'plan_sort_date',
  };
  static String orderString(PcoServicesSongScheduleOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesSongScheduleFilter, String> _filterMap = {
    PcoServicesSongScheduleFilter.threeMostRecent: 'three_most_recent',
  };
  static String filterString(PcoServicesSongScheduleFilter filter) =>
      _filterMap[filter]!;

  PcoServicesSongScheduleQuery({
    PcoServicesSongScheduleFilter? filterBy,
    PcoServicesSongScheduleOrder? orderBy,

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
    if (filterBy != null) filter.add(filterString(filterBy));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Services SongSchedule Object
///
/// - Application:        services
/// - Id:                 song_schedule
/// - Type:               SongSchedule
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/song_schedules
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesSongSchedule.fromJson()` constructor.
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
/// A upcoming schedule for a song
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `arrangementName` (ro) -> PCO: `arrangement_name`
/// - `keyName` (ro) -> PCO: `key_name`
/// - `planDates` (ro) -> PCO: `plan_dates`
/// - `serviceTypeName` (ro) -> PCO: `service_type_name`
/// - `planSortDate` (ro) -> PCO: `plan_sort_date`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `songschedule-song-song_schedules`: https://api.planningcenteronline.com/services/v2/songs/1/song_schedules
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "SongSchedule",
///   "id": "1",
///   "attributes": {
///     "arrangement_name": "string",
///     "key_name": "string",
///     "plan_dates": "string",
///     "service_type_name": "string",
///     "plan_sort_date": "string"
///   },
///   "relationships": {
///     "arrangement": {
///       "data": {
///         "type": "Arrangement",
///         "id": "1"
///       }
///     },
///     "key": {
///       "data": {
///         "type": "Key",
///         "id": "1"
///       }
///     },
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     },
///     "item": {
///       "data": {
///         "type": "Item",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesSongSchedule extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SongSchedule';
  static const String kTypeId = 'song_schedule';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/songs/1/song_schedules';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `plan_sort_date`: (URLParameter), prefix with a hyphen (-plan_sort_date) to reverse the order
  static List<String> get canOrderBy => ['plan_sort_date'];

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
  static const kArrangementName = 'arrangement_name';
  static const kKeyName = 'key_name';
  static const kPlanDates = 'plan_dates';
  static const kServiceTypeName = 'service_type_name';
  static const kPlanSortDate = 'plan_sort_date';

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
  String get arrangementName => _attributes[kArrangementName] ?? '';
  String get keyName => _attributes[kKeyName] ?? '';
  String get planDates => _attributes[kPlanDates] ?? '';
  String get serviceTypeName => _attributes[kServiceTypeName] ?? '';
  String get planSortDate => _attributes[kPlanSortDate] ?? '';

  // Class Constructors
  PcoServicesSongSchedule.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesSongSchedule.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesSongSchedule] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesSongSchedule(
      {String? id,
      String? arrangementName,
      String? keyName,
      String? planDates,
      String? serviceTypeName,
      String? planSortDate,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesSongSchedule.empty();
    obj._id = id;
    if (arrangementName != null)
      obj._attributes['arrangement_name'] = arrangementName;
    if (keyName != null) obj._attributes['key_name'] = keyName;
    if (planDates != null) obj._attributes['plan_dates'] = planDates;
    if (serviceTypeName != null)
      obj._attributes['service_type_name'] = serviceTypeName;
    if (planSortDate != null) obj._attributes['plan_sort_date'] = planSortDate;

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

  /// Will get a collection of [PcoServicesSongSchedule] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/song_schedules`
  ///
  /// Available Query Filters:
  /// - `three_most_recent`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesSongSchedule>> getFromSong(
    String songId, {
    String? id,
    PcoServicesSongScheduleQuery? query,
  }) async {
    query ??= PcoServicesSongScheduleQuery();

    var url = '/services/v2/songs/$songId/song_schedules';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSongSchedule>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
