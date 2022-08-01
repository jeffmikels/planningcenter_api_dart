/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T14:42:03.580105
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `sequence` -> `?order=sequence`
/// - `updatedAt` -> `?order=updated_at`
enum PcoPeopleFormFieldOptionOrder { createdAt, sequence, updatedAt }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleFormFieldOptionFilter { none }

/// Creates a [PcoPeopleFormFieldOptionQuery] object
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoPeopleFormFieldOptionOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleFormFieldOptionOrder.sequence` : will order by `sequence`
/// - `PcoPeopleFormFieldOptionOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleFormFieldOptionQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleFormFieldOptionOrder, String> _orderMap = {
    PcoPeopleFormFieldOptionOrder.createdAt: 'created_at',
    PcoPeopleFormFieldOptionOrder.sequence: 'sequence',
    PcoPeopleFormFieldOptionOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoPeopleFormFieldOptionOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleFormFieldOptionFilter, String> _filterMap = {};
  static String filterString(PcoPeopleFormFieldOptionFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleFormFieldOptionQuery({
    PcoPeopleFormFieldOptionOrder? orderBy,

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
    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People FormFieldOption Object
///
/// - Application:        people
/// - Id:                 form_field_option
/// - Type:               FormFieldOption
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/forms/1/fields/1/options
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleFormFieldOption.fromJson()` constructor.
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
/// A field option on a custom form field.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `label` (ro) -> PCO: `label`
/// - `sequence` (ro) -> PCO: `sequence`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `formfieldoption-formfield-options`: https://api.planningcenteronline.com/people/v2/forms/1/fields/1/options
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "FormFieldOption",
///   "id": "1",
///   "attributes": {
///     "label": "string",
///     "sequence": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "form_field": {
///       "data": {
///         "type": "FormField",
///         "id": "1"
///       }
///     },
///     "optionable": {
///       "data": {
///         "type": "Optionable",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleFormFieldOption extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FormFieldOption';
  static const String kTypeId = 'form_field_option';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/forms/1/fields/1/options';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy =>
      ['created_at', 'sequence', 'updated_at'];

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
  static const kLabel = 'label';
  static const kSequence = 'sequence';
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
  String get label => _attributes[kLabel] ?? '';
  int get sequence => _attributes[kSequence] ?? 0;

  // Class Constructors
  PcoPeopleFormFieldOption.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleFormFieldOption.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleFormFieldOption] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoPeopleFormFieldOption(
      {String? id,
      String? label,
      int? sequence,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleFormFieldOption.empty();
    obj._id = id;
    if (label != null) obj._attributes['label'] = label;
    if (sequence != null) obj._attributes['sequence'] = sequence;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();

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

  /// Will get a collection of [PcoPeopleFormFieldOption] objects (expecting one)
  /// using a path like this: `/people/v2/forms/$formId/fields/$fieldId/options`
  static Future<PcoCollection<PcoPeopleFormFieldOption>>
      getOptionsFromFormAndField(
    String formId,
    String fieldId, {
    PcoPeopleFormFieldOptionQuery? query,
  }) async {
    query ??= PcoPeopleFormFieldOptionQuery();

    var url = '/people/v2/forms/$formId/fields/$fieldId/options';

    return PcoCollection.fromApiCall<PcoPeopleFormFieldOption>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
