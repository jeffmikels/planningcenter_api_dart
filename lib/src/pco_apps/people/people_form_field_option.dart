/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:14.966899
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

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
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
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
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

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
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/people/v2/forms/$formId/fields/$fieldId/options';

    return PcoCollection.fromApiCall<PcoPeopleFormFieldOption>(url,
        query: query, apiVersion: kApiVersion);
  }
}
