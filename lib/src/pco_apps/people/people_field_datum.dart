/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.093376
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `file` -> `?order=file`
/// - `fileContentType` -> `?order=file_content_type`
/// - `fileName` -> `?order=file_name`
/// - `fileSize` -> `?order=file_size`
/// - `value` -> `?order=value`
enum PcoPeopleFieldDatumOrder {
  file,
  fileContentType,
  fileName,
  fileSize,
  value
}

/// Filtering is not allowed when requesting this object.
enum PcoPeopleFieldDatumFilter { none }

/// Creates a [PcoPeopleFieldDatumQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeFieldDefinition`: include associated field_definition
/// - `includeFieldOption`: include associated field_option
/// - `includeTab`: include associated tab
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleFieldDatumQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleFieldDatum] objects can be requested with one or more of the following criteria:
/// - `whereFile`: query on a specific file, example: ?where[file]=string
/// - `whereFileContentType`: query on a specific file_content_type, example: ?where[file_content_type]=string
/// - `whereFileName`: query on a specific file_name, example: ?where[file_name]=string
/// - `whereFileSize`: query on a specific file_size, example: ?where[file_size]=1
/// - `whereValue`: query on a specific value, example: ?where[value]=string
/// - `whereFieldDefinitionId`: query on a specific field definition, example: ?where[field_definition_id]=string
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoPeopleFieldDatumOrder.file` : will order by `file`
/// - `PcoPeopleFieldDatumOrder.fileContentType` : will order by `file_content_type`
/// - `PcoPeopleFieldDatumOrder.fileName` : will order by `file_name`
/// - `PcoPeopleFieldDatumOrder.fileSize` : will order by `file_size`
/// - `PcoPeopleFieldDatumOrder.value` : will order by `value`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleFieldDatumQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleFieldDatumOrder, String> _orderMap = {
    PcoPeopleFieldDatumOrder.file: 'file',
    PcoPeopleFieldDatumOrder.fileContentType: 'file_content_type',
    PcoPeopleFieldDatumOrder.fileName: 'file_name',
    PcoPeopleFieldDatumOrder.fileSize: 'file_size',
    PcoPeopleFieldDatumOrder.value: 'value',
  };
  static String orderString(PcoPeopleFieldDatumOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleFieldDatumFilter, String> _filterMap = {};
  static String filterString(PcoPeopleFieldDatumFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleFieldDatumQuery({
    /// include associated field_definition
    /// when true, adds `?include=field_definition` to url
    bool includeFieldDefinition = false,

    /// include associated field_option
    /// when true, adds `?include=field_option` to url
    bool includeFieldOption = false,

    /// include associated tab
    /// when true, adds `?include=tab` to url
    bool includeTab = false,

    /// when true, adds `?include=field_definition,field_option,tab` to url parameters
    bool includeAllRelated = false,

    /// Query by `file`
    /// query on a specific file, url example: ?where[file]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereFile,

    /// Query by `file_content_type`
    /// query on a specific file_content_type, url example: ?where[file_content_type]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereFileContentType,

    /// Query by `file_name`
    /// query on a specific file_name, url example: ?where[file_name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereFileName,

    /// Query by `file_size`
    /// query on a specific file_size, url example: ?where[file_size]=1
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereFileSize,

    /// Query by `value`
    /// query on a specific value, url example: ?where[value]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereValue,

    /// Query by `field_definition_id`
    /// query on a specific field definition, url example: ?where[field_definition_id]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereFieldDefinitionId,
    PcoPeopleFieldDatumOrder? orderBy,

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
    if (includeAllRelated || includeFieldDefinition)
      include.add('field_definition');
    if (includeAllRelated || includeFieldOption) include.add('field_option');
    if (includeAllRelated || includeTab) include.add('tab');

    if (whereFile != null)
      where.add(PlanningCenterApiWhere.parse('file', whereFile));
    if (whereFileContentType != null)
      where.add(PlanningCenterApiWhere.parse(
          'file_content_type', whereFileContentType));
    if (whereFileName != null)
      where.add(PlanningCenterApiWhere.parse('file_name', whereFileName));
    if (whereFileSize != null)
      where.add(PlanningCenterApiWhere.parse('file_size', whereFileSize));
    if (whereValue != null)
      where.add(PlanningCenterApiWhere.parse('value', whereValue));
    if (whereFieldDefinitionId != null)
      where.add(PlanningCenterApiWhere.parse(
          'field_definition_id', whereFieldDefinitionId));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People FieldDatum Object
///
/// - Application:        people
/// - Id:                 field_datum
/// - Type:               FieldDatum
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/field_data
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/people/1/field_data
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleFieldDatum()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleFieldDatum.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
/// ### Extra Instructions
/// #### UPDATING
/// Given a person ID and a field definition ID with a data type of 'checkboxes', in order to 'check' the box for that profile, you want to do a POST request to `/people/v2/people/<person_id>/field_data`.
/// The payload must contain the `field_definition_id` and the string `value`.
///   ```
///      {
///        "data": {
///           "attributes": {
///             "field_definition_id": <field_definition_id>,
///             "value": "Financial/Bills"
///           }
///        }
///      }
///   ```
/// Note that if you POST with a value that does not already correspond to an existing field_option value for that field_definition, then the API will create a new one with that value.
///
/// You can GET all the existing checkbox values at `/people/v2/field_definitions/<field_definition_id>/field_options`.
///
/// To 'uncheck' the value of the checkbox, you can issue a DELETE to `/people/v2/people/<person_id>/field_data/<field_datum_id>`.
///
/// ## Description
/// A field datum is an individual piece of data for a custom field.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `value` (rw) -> PCO: `value`
/// - `file` (ro) -> PCO: `file`
/// - `fileSize` (ro) -> PCO: `file_size`
/// - `fileContentType` (ro) -> PCO: `file_content_type`
/// - `fileName` (ro) -> PCO: `file_name`
/// - `fieldDefinitionId` (wo) -> PCO: `field_definition_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `fielddefinition-fielddatum-field_definition`: https://api.planningcenteronline.com/people/v2/field_data/1/field_definition
/// - `fieldoption-fielddatum-field_option`: https://api.planningcenteronline.com/people/v2/field_data/1/field_option
/// - `person-fielddatum-person`: https://api.planningcenteronline.com/people/v2/field_data/1/person
/// - `tab-fielddatum-tab`: https://api.planningcenteronline.com/people/v2/field_data/1/tab
///
/// Inbound Edges:
/// - `fielddatum-organization-field_data`: https://api.planningcenteronline.com/people/v2/field_data
/// - `fielddatum-person-field_data`: https://api.planningcenteronline.com/people/v2/people/1/field_data
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "FieldDatum",
///   "id": "1",
///   "attributes": {
///     "value": "string",
///     "file": "string",
///     "file_size": 1,
///     "file_content_type": "string",
///     "file_name": "string"
///   },
///   "relationships": {
///     "field_definition": {
///       "data": {
///         "type": "FieldDefinition",
///         "id": "1"
///       }
///     },
///     "customizable": {
///       "data": {
///         "type": "Customizable",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleFieldDatum extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FieldDatum';
  static const String kTypeId = 'field_datum';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/field_data';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/field_data';

  /// possible includes with parameter ?include=a,b
  /// - `field_definition`: include associated field_definition
  /// - `field_option`: include associated field_option
  /// - `tab`: include associated tab
  static List<String> get canInclude =>
      ['field_definition', 'field_option', 'tab'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `file`: (URLParameter), query on a specific file, example: ?where[file]=string
  /// - `file_content_type`: (URLParameter), query on a specific file_content_type, example: ?where[file_content_type]=string
  /// - `file_name`: (URLParameter), query on a specific file_name, example: ?where[file_name]=string
  /// - `file_size`: (URLParameter), query on a specific file_size, example: ?where[file_size]=1
  /// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
  /// - `field_definition_id`: (URLParameter), query on a specific field definition, example: ?where[field_definition_id]=string
  static List<String> get canQuery => [
        'file',
        'file_content_type',
        'file_name',
        'file_size',
        'value',
        'field_definition_id'
      ];

  /// possible orderings with parameter ?order=
  /// - `file`: (URLParameter), prefix with a hyphen (-file) to reverse the order
  /// - `file_content_type`: (URLParameter), prefix with a hyphen (-file_content_type) to reverse the order
  /// - `file_name`: (URLParameter), prefix with a hyphen (-file_name) to reverse the order
  /// - `file_size`: (URLParameter), prefix with a hyphen (-file_size) to reverse the order
  /// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
  static List<String> get canOrderBy =>
      ['file', 'file_content_type', 'file_name', 'file_size', 'value'];

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
  static const kValue = 'value';
  static const kFile = 'file';
  static const kFileSize = 'file_size';
  static const kFileContentType = 'file_content_type';
  static const kFileName = 'file_name';
  static const kFieldDefinitionId = 'field_definition_id';

  // getters and setters
  @override
  List<String> get createAllowed => ['value', 'field_definition_id'];

  @override
  List<String> get updateAllowed => ['value', 'field_definition_id'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get value => _getAttribute<String>(kValue, '');
  String get file => _getAttribute<String>(kFile, '');
  int get fileSize => _getAttribute<int>(kFileSize, 0);
  String get fileContentType => _getAttribute<String>(kFileContentType, '');
  String get fileName => _getAttribute<String>(kFileName, '');

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set value(String? x) =>
      (x == null) ? _attributes.remove(kValue) : _attributes[kValue] = x;

  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set fieldDefinitionId(String? x) => (x == null)
      ? _attributes.remove(kFieldDefinitionId)
      : _attributes[kFieldDefinitionId] = x;
  String get fieldDefinitionId => _getAttribute<String>(kFieldDefinitionId, '');

  // typed getters for each relationship

  PcoPeopleFieldDefinition? get includedFieldDefinition =>
      _firstOrNull<PcoPeopleFieldDefinition>(relationships['field_definition']);
  PcoPeopleFieldOption? get includedFieldOption =>
      _firstOrNull<PcoPeopleFieldOption>(relationships['field_option']);
  PcoPeopleTab? get includedTab =>
      _firstOrNull<PcoPeopleTab>(relationships['tab']);

  // Class Constructors
  PcoPeopleFieldDatum.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleFieldDatum.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleFieldDatum] object using this endpoint: `https://api.planningcenteronline.com/people/v2/people/$personId/field_data`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `value`, `fieldDefinitionId`
  /// - FIELDS USED WHEN UPDATING: `value`, `fieldDefinitionId`
  factory PcoPeopleFieldDatum(
      {required String personId,
      String? id,
      String? value,
      String? file,
      int? fileSize,
      String? fileContentType,
      String? fileName,
      String? fieldDefinitionId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleFieldDatum.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/people/$personId/field_data';
    if (value != null) obj._attributes['value'] = value;
    if (file != null) obj._attributes['file'] = file;
    if (fileSize != null) obj._attributes['file_size'] = fileSize;
    if (fileContentType != null)
      obj._attributes['file_content_type'] = fileContentType;
    if (fileName != null) obj._attributes['file_name'] = fileName;
    if (fieldDefinitionId != null)
      obj._attributes['field_definition_id'] = fieldDefinitionId;

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

  /// Will get a [PcoCollection] of [PcoPeopleFieldDatum] objects (expecting many)
  /// using a path like this: `/people/v2/field_data`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleFieldDatum>> get({
    String? id,
    PcoPeopleFieldDatumQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeFieldDefinition = false,
    bool includeFieldOption = false,
    bool includeTab = false,
  }) async {
    query ??= PcoPeopleFieldDatumQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoPeopleFieldDatum.canInclude);
    if (includeFieldDefinition) query.include.add('field_definition');
    if (includeFieldOption) query.include.add('field_option');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/field_data';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDatum>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleFieldDatum] object
  /// using a path like this: `/people/v2/field_data/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleFieldDatum?> getSingle(
    String id, {
    PcoPeopleFieldDatumQuery? query,
    bool includeAllRelated = false,
    bool includeFieldDefinition = false,
    bool includeFieldOption = false,
    bool includeTab = false,
  }) async {
    query ??= PcoPeopleFieldDatumQuery();
    if (includeAllRelated) query.include.addAll(PcoPeopleFieldDatum.canInclude);
    if (includeFieldDefinition) query.include.add('field_definition');
    if (includeFieldOption) query.include.add('field_option');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/field_data/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleFieldDatum>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleFieldDatum] objects (expecting many)
  /// using a path like this: `/people/v2/field_data`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleFieldDatum>> getAll({
    String? id,
    PcoPeopleFieldDatumQuery? query,
    bool includeAllRelated = false,
    bool includeFieldDefinition = false,
    bool includeFieldOption = false,
    bool includeTab = false,
  }) async {
    query ??= PcoPeopleFieldDatumQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoPeopleFieldDatum.canInclude);
    if (includeFieldDefinition) query.include.add('field_definition');
    if (includeFieldOption) query.include.add('field_option');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/field_data';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDatum>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleFieldDatum] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/field_data`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleFieldDatum>> getFromPerson(
    String personId, {
    String? id,
    PcoPeopleFieldDatumQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeFieldDefinition = false,
    bool includeFieldOption = false,
    bool includeTab = false,
  }) async {
    query ??= PcoPeopleFieldDatumQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoPeopleFieldDatum.canInclude);
    if (includeFieldDefinition) query.include.add('field_definition');
    if (includeFieldOption) query.include.add('field_option');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/people/$personId/field_data';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDatum>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleFieldDatum] object
  /// using a path like this: `/people/v2/people/$personId/field_data/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleFieldDatum?> getSingleFromPerson(
    String personId,
    String id, {
    PcoPeopleFieldDatumQuery? query,
    bool includeAllRelated = false,
    bool includeFieldDefinition = false,
    bool includeFieldOption = false,
    bool includeTab = false,
  }) async {
    query ??= PcoPeopleFieldDatumQuery();
    if (includeAllRelated) query.include.addAll(PcoPeopleFieldDatum.canInclude);
    if (includeFieldDefinition) query.include.add('field_definition');
    if (includeFieldOption) query.include.add('field_option');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/people/$personId/field_data/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleFieldDatum>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleFieldDatum] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/field_data`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleFieldDatum>> getAllFromPerson(
    String personId, {
    String? id,
    PcoPeopleFieldDatumQuery? query,
    bool includeAllRelated = false,
    bool includeFieldDefinition = false,
    bool includeFieldOption = false,
    bool includeTab = false,
  }) async {
    query ??= PcoPeopleFieldDatumQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoPeopleFieldDatum.canInclude);
    if (includeFieldDefinition) query.include.add('field_definition');
    if (includeFieldOption) query.include.add('field_option');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/people/$personId/field_data';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDatum>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleFieldDefinition] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data/1/field_definition`
  Future<PcoCollection<PcoPeopleFieldDefinition>> getFieldDefinition(
      {PcoPeopleFieldDefinitionQuery? query}) async {
    query ??= PcoPeopleFieldDefinitionQuery();
    var url = '$apiEndpoint/field_definition';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data/1/field_option`
  Future<PcoCollection<PcoPeopleFieldOption>> getFieldOption(
      {PcoPeopleFieldOptionQuery? query}) async {
    query ??= PcoPeopleFieldOptionQuery();
    var url = '$apiEndpoint/field_option';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data/1/tab`
  Future<PcoCollection<PcoPeopleTab>> getTab({PcoPeopleTabQuery? query}) async {
    query ??= PcoPeopleTabQuery();
    var url = '$apiEndpoint/tab';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
