/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:51.406219
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoPeopleFormSubmissionValueOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleFormSubmissionValueFilter { none }

/// Creates a [PcoPeopleFormSubmissionValueQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleFormSubmissionValueQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleFormSubmissionValueOrder, String> _orderMap = {};
  static String orderString(PcoPeopleFormSubmissionValueOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleFormSubmissionValueFilter, String> _filterMap = {};
  static String filterString(PcoPeopleFormSubmissionValueFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleFormSubmissionValueQuery({
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

/// This class represents a PCO People FormSubmissionValue Object
///
/// - Application:        people
/// - Id:                 form_submission_value
/// - Type:               FormSubmissionValue
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleFormSubmissionValue.fromJson()` constructor.
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
/// A form submission value.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `displayValue` (ro) -> PCO: `display_value`
/// - `attachments` (ro) -> PCO: `attachments`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `formsubmissionvalue-formsubmission-form_submission_values`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "FormSubmissionValue",
///   "id": "1",
///   "attributes": {
///     "display_value": "string",
///     "attachments": []
///   },
///   "relationships": {
///     "form_field": {
///       "data": {
///         "type": "FormField",
///         "id": "1"
///       }
///     },
///     "form_field_option": {
///       "data": {
///         "type": "FormFieldOption",
///         "id": "1"
///       }
///     },
///     "form_submission": {
///       "data": {
///         "type": "FormSubmission",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleFormSubmissionValue extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FormSubmissionValue';
  static const String kTypeId = 'form_submission_value';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values';
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
  static const kDisplayValue = 'display_value';
  static const kAttachments = 'attachments';

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
  String get displayValue => _attributes[kDisplayValue] ?? '';
  List get attachments => _attributes[kAttachments] ?? [];

  // Class Constructors
  PcoPeopleFormSubmissionValue.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleFormSubmissionValue.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleFormSubmissionValue] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeopleFormSubmissionValue(
      {String? id,
      String? displayValue,
      List? attachments,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleFormSubmissionValue.empty();
    obj._id = id;
    if (displayValue != null) obj._attributes['display_value'] = displayValue;
    if (attachments != null) obj._attributes['attachments'] = attachments;

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

  /// Will get a collection of [PcoPeopleFormSubmissionValue] objects (expecting many)
  /// using a path like this: `/people/v2/forms/$formId/form_submissions/$formSubmissionId/form_submission_values`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleFormSubmissionValue>>
      getFromFormAndFormSubmission(
    String formId,
    String formSubmissionId, {
    String? id,
    PcoPeopleFormSubmissionValueQuery? query,
  }) async {
    query ??= PcoPeopleFormSubmissionValueQuery();

    var url =
        '/people/v2/forms/$formId/form_submissions/$formSubmissionId/form_submission_values';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFormSubmissionValue>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
