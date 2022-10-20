/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:51.405877
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `personFirstName` -> `?order=person.first_name`
/// - `personLastName` -> `?order=person.last_name`
enum PcoPeopleFormSubmissionOrder { createdAt, personFirstName, personLastName }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleFormSubmissionFilter { none }

/// Creates a [PcoPeopleFormSubmissionQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeForm`: include associated form
/// - `includeFormFields`: include associated form_fields
/// - `includeFormSubmissionValues`: include associated form_submission_values
/// - `includePerson`: include associated person
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleFormSubmissionQuery(includes: ['a', 'b'])`
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoPeopleFormSubmissionOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleFormSubmissionOrder.personFirstName` : will order by `person.first_name`
/// - `PcoPeopleFormSubmissionOrder.personLastName` : will order by `person.last_name`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleFormSubmissionQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleFormSubmissionOrder, String> _orderMap = {
    PcoPeopleFormSubmissionOrder.createdAt: 'created_at',
    PcoPeopleFormSubmissionOrder.personFirstName: 'person.first_name',
    PcoPeopleFormSubmissionOrder.personLastName: 'person.last_name',
  };
  static String orderString(PcoPeopleFormSubmissionOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleFormSubmissionFilter, String> _filterMap = {};
  static String filterString(PcoPeopleFormSubmissionFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleFormSubmissionQuery({
    /// include associated form
    /// when true, adds `?include=form` to url
    bool includeForm = false,

    /// include associated form_fields
    /// when true, adds `?include=form_fields` to url
    bool includeFormFields = false,

    /// include associated form_submission_values
    /// when true, adds `?include=form_submission_values` to url
    bool includeFormSubmissionValues = false,

    /// include associated person
    /// when true, adds `?include=person` to url
    bool includePerson = false,

    /// when true, adds `?include=form,form_fields,form_submission_values,person` to url parameters
    bool includeAll = false,
    PcoPeopleFormSubmissionOrder? orderBy,

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
    if (includeAll || includeForm) include.add('form');
    if (includeAll || includeFormFields) include.add('form_fields');
    if (includeAll || includeFormSubmissionValues)
      include.add('form_submission_values');
    if (includeAll || includePerson) include.add('person');

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People FormSubmission Object
///
/// - Application:        people
/// - Id:                 form_submission
/// - Type:               FormSubmission
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/forms/1/form_submissions
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleFormSubmission.fromJson()` constructor.
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
/// A form submission.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `isVerified` (ro) -> PCO: `verified`
/// - `isRequiresVerification` (ro) -> PCO: `requires_verification`
/// - `createdAt` (ro) -> PCO: `created_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `form-formsubmission-form`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form
/// - `formfield-formsubmission-form_fields`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_fields
/// - `formsubmissionvalue-formsubmission-form_submission_values`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values
/// - `person-formsubmission-person`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/person
///
/// Inbound Edges:
/// - `formsubmission-form-form_submissions`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "FormSubmission",
///   "id": "1",
///   "attributes": {
///     "verified": true,
///     "requires_verification": true,
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "form": {
///       "data": {
///         "type": "Form",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleFormSubmission extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FormSubmission';
  static const String kTypeId = 'form_submission';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/forms/1/form_submissions';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `form`: include associated form
  /// - `form_fields`: include associated form_fields
  /// - `form_submission_values`: include associated form_submission_values
  /// - `person`: include associated person
  static List<String> get canInclude =>
      ['form', 'form_fields', 'form_submission_values', 'person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `person.first_name`: (URLParameter), prefix with a hyphen (-person.first_name) to reverse the order
  /// - `person.last_name`: (URLParameter), prefix with a hyphen (-person.last_name) to reverse the order
  static List<String> get canOrderBy =>
      ['created_at', 'person.first_name', 'person.last_name'];

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
  static const kVerified = 'verified';
  static const kRequiresVerification = 'requires_verification';
  static const kCreatedAt = 'created_at';

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
  bool get isVerified => _attributes[kVerified] == true;
  bool get isRequiresVerification => _attributes[kRequiresVerification] == true;

  // typed getters for each relationship

  PcoPeopleForm? get includedForm =>
      _firstOrNull<PcoPeopleForm>(relationships['form']);
  List<PcoPeopleFormField> get includedFormFields =>
      (relationships['form_fields'] as List?)?.cast<PcoPeopleFormField>() ?? [];
  List<PcoPeopleFormSubmissionValue> get includedFormSubmissionValues =>
      (relationships['form_submission_values'] as List?)
          ?.cast<PcoPeopleFormSubmissionValue>() ??
      [];
  PcoPeoplePerson? get includedPerson =>
      _firstOrNull<PcoPeoplePerson>(relationships['person']);

  // Class Constructors
  PcoPeopleFormSubmission.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleFormSubmission.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleFormSubmission] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeopleFormSubmission(
      {String? id,
      bool? isVerified,
      bool? isRequiresVerification,
      DateTime? createdAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleFormSubmission.empty();
    obj._id = id;
    if (isVerified != null) obj._attributes['verified'] = isVerified;
    if (isRequiresVerification != null)
      obj._attributes['requires_verification'] = isRequiresVerification;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();

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

  /// Will get a collection of [PcoPeopleFormSubmission] objects (expecting many)
  /// using a path like this: `/people/v2/forms/$formId/form_submissions`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleFormSubmission>> getFromForm(
    String formId, {
    String? id,
    PcoPeopleFormSubmissionQuery? query,
    bool includeAll = false,
    bool includeForm = false,
    bool includeFormFields = false,
    bool includeFormSubmissionValues = false,
    bool includePerson = false,
  }) async {
    query ??= PcoPeopleFormSubmissionQuery();
    if (includeAll) query.include.addAll(PcoPeopleFormSubmission.canInclude);
    if (includeForm) query.include.add('form');
    if (includeFormFields) query.include.add('form_fields');
    if (includeFormSubmissionValues)
      query.include.add('form_submission_values');
    if (includePerson) query.include.add('person');
    var url = '/people/v2/forms/$formId/form_submissions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFormSubmission>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleForm] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form`
  Future<PcoCollection<PcoPeopleForm>> getForm(
      {PcoPeopleFormQuery? query}) async {
    query ??= PcoPeopleFormQuery();
    var url = '$apiEndpoint/form';
    return PcoCollection.fromApiCall<PcoPeopleForm>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFormField] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_fields`
  Future<PcoCollection<PcoPeopleFormField>> getFormFields(
      {PcoPeopleFormFieldQuery? query}) async {
    query ??= PcoPeopleFormFieldQuery();
    var url = '$apiEndpoint/form_fields';
    return PcoCollection.fromApiCall<PcoPeopleFormField>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFormSubmissionValue] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values`
  Future<PcoCollection<PcoPeopleFormSubmissionValue>> getFormSubmissionValues(
      {PcoPeopleFormSubmissionValueQuery? query}) async {
    query ??= PcoPeopleFormSubmissionValueQuery();
    var url = '$apiEndpoint/form_submission_values';
    return PcoCollection.fromApiCall<PcoPeopleFormSubmissionValue>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
