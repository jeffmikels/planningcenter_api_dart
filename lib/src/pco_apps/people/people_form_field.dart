/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:26.144974
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `sequence` -> `?order=sequence`
/// - `updatedAt` -> `?order=updated_at`
enum PcoPeopleFormFieldOrder { createdAt, sequence, updatedAt }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleFormFieldFilter { none }

/// Creates a [PcoPeopleFormFieldQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeOptions`: include associated options
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleFormFieldQuery(includes: ['a', 'b'])`
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoPeopleFormFieldOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleFormFieldOrder.sequence` : will order by `sequence`
/// - `PcoPeopleFormFieldOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleFormFieldQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleFormFieldOrder, String> _orderMap = {
    PcoPeopleFormFieldOrder.createdAt: 'created_at',
    PcoPeopleFormFieldOrder.sequence: 'sequence',
    PcoPeopleFormFieldOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoPeopleFormFieldOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleFormFieldFilter, String> _filterMap = {};
  static String filterString(PcoPeopleFormFieldFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleFormFieldQuery({
    /// include associated options
    /// when true, adds `?include=options` to url
    bool includeOptions = false,
    PcoPeopleFormFieldOrder? orderBy,

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
    if (includeOptions) include.add('options');

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People FormField Object
///
/// - Application:        people
/// - Id:                 form_field
/// - Type:               FormField
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/forms/1/fields
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleFormField.fromJson()` constructor.
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
/// A field in a custom form.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `fieldType` (ro) -> PCO: `field_type`
/// - `label` (ro) -> PCO: `label`
/// - `description` (ro) -> PCO: `description`
/// - `isRequired` (ro) -> PCO: `required`
/// - `settings` (ro) -> PCO: `settings`
/// - `sequence` (ro) -> PCO: `sequence`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `formfieldoption-formfield-options`: https://api.planningcenteronline.com/people/v2/forms/1/fields/1/options
///
/// Inbound Edges:
/// - `formfield-form-fields`: https://api.planningcenteronline.com/people/v2/forms/1/fields
/// - `formfield-formsubmission-form_fields`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_fields
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "FormField",
///   "id": "1",
///   "attributes": {
///     "field_type": "value",
///     "label": "string",
///     "description": "string",
///     "required": true,
///     "settings": "string",
///     "sequence": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "form": {
///       "data": {
///         "type": "Form",
///         "id": "1"
///       }
///     },
///     "fieldable": {
///       "data": {
///         "type": "Fieldable",
///         "id": "1"
///       }
///     },
///     "options": {
///       "data": {
///         "type": "Options",
///         "id": "1"
///       }
///     },
///     "form_field_conditions": {
///       "data": [
///         {
///           "type": "FormFieldCondition",
///           "id": "1"
///         }
///       ]
///     }
///   }
/// }
/// ```
class PcoPeopleFormField extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FormField';
  static const String kTypeId = 'form_field';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/forms/1/fields';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `options`: include associated options
  static List<String> get canInclude => ['options'];

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
  static const kFieldType = 'field_type';
  static const kLabel = 'label';
  static const kDescription = 'description';
  static const kRequired = 'required';
  static const kSettings = 'settings';
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
  String get fieldType => _attributes[kFieldType] ?? '';
  String get label => _attributes[kLabel] ?? '';
  String get description => _attributes[kDescription] ?? '';
  bool get isRequired => _attributes[kRequired] == true;
  String get settings => _attributes[kSettings] ?? '';
  int get sequence => _attributes[kSequence] ?? 0;

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedOptions<T extends PcoResource>() =>
      (relationships['options'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoPeopleFormField.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleFormField.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleFormField] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeopleFormField(
      {String? id,
      String? fieldType,
      String? label,
      String? description,
      bool? isRequired,
      String? settings,
      int? sequence,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleFormField.empty();
    obj._id = id;
    if (fieldType != null) obj._attributes['field_type'] = fieldType;
    if (label != null) obj._attributes['label'] = label;
    if (description != null) obj._attributes['description'] = description;
    if (isRequired != null) obj._attributes['required'] = isRequired;
    if (settings != null) obj._attributes['settings'] = settings;
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

  /// Will get a collection of [PcoPeopleFormField] objects (expecting one)
  /// using a path like this: `/people/v2/forms/$formId/fields`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleFormField>> getFieldsFromForm(
    String formId, {
    PcoPeopleFormFieldQuery? query,
    bool includeOptions = false,
  }) async {
    query ??= PcoPeopleFormFieldQuery();

    if (includeOptions) query.include.add('options');
    var url = '/people/v2/forms/$formId/fields';

    return PcoCollection.fromApiCall<PcoPeopleFormField>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleFormField] objects (expecting many)
  /// using a path like this: `/people/v2/forms/$formId/form_submissions/$formSubmissionId/form_fields`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleFormField>> getFromFormAndFormSubmission(
    String formId,
    String formSubmissionId, {
    String? id,
    PcoPeopleFormFieldQuery? query,
    bool includeOptions = false,
  }) async {
    query ??= PcoPeopleFormFieldQuery();

    if (includeOptions) query.include.add('options');
    var url =
        '/people/v2/forms/$formId/form_submissions/$formSubmissionId/form_fields';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFormField>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleFormFieldOption] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/fields/1/options`
  Future<PcoCollection<PcoPeopleFormFieldOption>> getOptions(
      {PcoPeopleFormFieldOptionQuery? query}) async {
    query ??= PcoPeopleFormFieldOptionQuery();
    var url = '$apiEndpoint/options';
    return PcoCollection.fromApiCall<PcoPeopleFormFieldOption>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
