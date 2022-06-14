/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:14.966440
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People FormField Object
///
/// - Application:        people
/// - Id:                 form_field
/// - Type:               FormField
/// - ApiVersion:         2021-08-17
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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `options`: include associated options
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
/// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
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
  static const String kApiVersion = '2021-08-17';
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
  /// For type safe code, you should specify it here.
  List<T> includedOptions<T extends PcoResource>() =>
      (relationships['options'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoPeopleFormField.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeopleFormField] objects (expecting one)
  /// using a path like this: `/people/v2/forms/$formId/fields`
  static Future<PcoCollection<PcoPeopleFormField>> getFieldsFromForm(
    String formId, {
    PlanningCenterApiQuery? query,
    bool includeOptions = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeOptions) query.include.add('options');
    var url = '/people/v2/forms/$formId/fields';

    return PcoCollection.fromApiCall<PcoPeopleFormField>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleFormField] objects (expecting many)
  /// using a path like this: `/people/v2/forms/$formId/form_submissions/$formSubmissionId/form_fields`
  static Future<PcoCollection<PcoPeopleFormField>> getFromFormAndFormSubmission(
    String formId,
    String formSubmissionId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeOptions = false,
  }) async {
    query ??= PlanningCenterApiQuery();

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
  Future<PcoCollection<PcoPeopleFormFieldOption>> getOptions({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/options';
    return PcoCollection.fromApiCall<PcoPeopleFormFieldOption>(url,
        query: query, apiVersion: apiVersion);
  }
}
