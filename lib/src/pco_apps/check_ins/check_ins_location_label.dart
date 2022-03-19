/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T13:06:05.042531
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO CheckIns LocationLabel Object
///
/// - Application:        check-ins
/// - Id:                 location_label
/// - Type:               LocationLabel
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels
/// - Create Endpoint:    NONE
///
/// ## Description
/// Says how many of a given label to print for this location and
/// whether to print it for regulars, guests, and/or volunteers.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `quantity` (ro) -> PCO: `quantity`
/// - `isForRegular` (ro) -> PCO: `for_regular`
/// - `isForGuest` (ro) -> PCO: `for_guest`
/// - `isForVolunteer` (ro) -> PCO: `for_volunteer`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `label`: include associated label
/// - `location`: include associated location
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
/// - `label-locationlabel-label`: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/label
/// - `location-locationlabel-location`: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/location
///
/// Inbound Edges:
/// - `locationlabel-label-location_labels`: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels
/// - `locationlabel-location-location_labels`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_labels
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "LocationLabel",
///   "id": "1",
///   "attributes": {
///     "quantity": 1,
///     "for_regular": true,
///     "for_guest": true,
///     "for_volunteer": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCheckInsLocationLabel extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'LocationLabel';
  static const String kTypeId = 'location_label';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `label`: include associated label
  /// - `location`: include associated location
  static List<String> get canInclude => ['label', 'location'];

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
  static const kQuantity = 'quantity';
  static const kForRegular = 'for_regular';
  static const kForGuest = 'for_guest';
  static const kForVolunteer = 'for_volunteer';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';

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
  int get quantity => attributes[kQuantity] ?? 0;
  bool get isForRegular => attributes[kForRegular] == true;
  bool get isForGuest => attributes[kForGuest] == true;
  bool get isForVolunteer => attributes[kForVolunteer] == true;

  // Class Constructors
  PcoCheckInsLocationLabel.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoCheckInsLocationLabel.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoCheckInsLocationLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/labels/$labelId/location_labels`
  static Future<PcoCollection<PcoCheckInsLocationLabel>> getFromLabel(
      String labelId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocationLabel.canInclude;
    var url = '/check-ins/v2/labels/$labelId/location_labels';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLocationLabel>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocationLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_labels`
  static Future<PcoCollection<PcoCheckInsLocationLabel>>
      getFromCheckInAndLocation(String checkInId, String locationId,
          {String? id,
          PlanningCenterApiQuery? query,
          bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocationLabel.canInclude;
    var url =
        '/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_labels';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLocationLabel>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/label`
  Future<PcoCollection<PcoCheckInsLabel>> getLabel(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    var url = '$apiEndpoint/label';
    return PcoCollection.fromApiCall<PcoCheckInsLabel>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/location`
  Future<PcoCollection<PcoCheckInsLocation>> getLocation(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '$apiEndpoint/location';
    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
