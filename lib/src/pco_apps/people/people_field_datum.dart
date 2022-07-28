/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.711517
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// This class represents a PCO People FieldDatum Object
/// 
/// - Application:        people
/// - Id:                 field_datum
/// - Type:               FieldDatum
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/field_data
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/people/1/field_data
/// 
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleFieldDatum()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleFieldDatum.fromJson()` constructor.
/// - Manually create an object using the `PcoPeopleFieldDatum.manual()` constructor.
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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `field_definition`: include associated field_definition 
/// - `field_option`: include associated field_option 
/// - `tab`: include associated tab 
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// - `file`: (URLParameter), query on a specific file, example: ?where[file]=string
/// - `file_content_type`: (URLParameter), query on a specific file_content_type, example: ?where[file_content_type]=string
/// - `file_name`: (URLParameter), query on a specific file_name, example: ?where[file_name]=string
/// - `file_size`: (URLParameter), query on a specific file_size, example: ?where[file_size]=1
/// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// - `file`: (URLParameter), prefix with a hyphen (-file) to reverse the order
/// - `file_content_type`: (URLParameter), prefix with a hyphen (-file_content_type) to reverse the order
/// - `file_name`: (URLParameter), prefix with a hyphen (-file_name) to reverse the order
/// - `file_size`: (URLParameter), prefix with a hyphen (-file_size) to reverse the order
/// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
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
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/field_data';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/field_data';

  /// possible includes with parameter ?include=a,b
  /// - `field_definition`: include associated field_definition 
  /// - `field_option`: include associated field_option 
  /// - `tab`: include associated tab 
  static List<String> get canInclude => ['field_definition','field_option','tab'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `file`: (URLParameter), query on a specific file, example: ?where[file]=string
  /// - `file_content_type`: (URLParameter), query on a specific file_content_type, example: ?where[file_content_type]=string
  /// - `file_name`: (URLParameter), query on a specific file_name, example: ?where[file_name]=string
  /// - `file_size`: (URLParameter), query on a specific file_size, example: ?where[file_size]=1
  /// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
  static List<String> get canQuery => ['file','file_content_type','file_name','file_size','value'];

  /// possible orderings with parameter ?order=
  /// - `file`: (URLParameter), prefix with a hyphen (-file) to reverse the order
  /// - `file_content_type`: (URLParameter), prefix with a hyphen (-file_content_type) to reverse the order
  /// - `file_name`: (URLParameter), prefix with a hyphen (-file_name) to reverse the order
  /// - `file_size`: (URLParameter), prefix with a hyphen (-file_size) to reverse the order
  /// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
  static List<String> get canOrderBy => ['file','file_content_type','file_name','file_size','value'];

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
  String get value => _attributes[kValue] ?? '';
  String get file => _attributes[kFile] ?? '';
  int get fileSize => _attributes[kFileSize] ?? 0;
  String get fileContentType => _attributes[kFileContentType] ?? '';
  String get fileName => _attributes[kFileName] ?? '';
  
  // setters for object attributes
  
  /// pass `null` to remove key from attributes
  set value(String? x) => (x == null) ? _attributes.remove(kValue) : _attributes[kValue] = x;
  
  // additional setters / getters for create/update attributes
  
  /// pass `null` to remove key from attributes
  set fieldDefinitionId(String? x) => (x == null) ? _attributes.remove(kFieldDefinitionId) : _attributes[kFieldDefinitionId] = x;
  String get fieldDefinitionId => _attributes[kFieldDefinitionId] ?? '';
  
  // typed getters for each relationship
  
  PcoPeopleFieldDefinition? get includedFieldDefinition => _firstOrNull<PcoPeopleFieldDefinition>(relationships['field_definition']);
  PcoPeopleFieldOption? get includedFieldOption => _firstOrNull<PcoPeopleFieldOption>(relationships['field_option']);
  PcoPeopleTab? get includedTab => _firstOrNull<PcoPeopleTab>(relationships['tab']);

  // Class Constructors
  PcoPeopleFieldDatum.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


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
  /// - FIELDS USED WHEN CREATING: `value`, `fieldDefinitionId`
  /// - FIELDS USED WHEN UPDATING: `value`, `fieldDefinitionId`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoPeopleFieldDatum({required String personId, String? id, String? value, String? file, int? fileSize, String? fileContentType, String? fileName, String? fieldDefinitionId, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoPeopleFieldDatum.empty();
    obj._id = id;
    obj._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/people/$personId/field_data';
    if (value != null) obj._attributes['value'] = value;
    if (file != null) obj._attributes['file'] = file;
    if (fileSize != null) obj._attributes['file_size'] = fileSize;
    if (fileContentType != null) obj._attributes['file_content_type'] = fileContentType;
    if (fileName != null) obj._attributes['file_name'] = fileName;
    if (fieldDefinitionId != null) obj._attributes['field_definition_id'] = fieldDefinitionId;
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



  /// Will get a collection of [PcoPeopleFieldDatum] objects (expecting many)
  /// using a path like this: `/people/v2/field_data`
  static Future<PcoCollection<PcoPeopleFieldDatum>> get( {String? id, PlanningCenterApiQuery? query, bool includeAll = false, bool includeFieldDefinition = false, bool includeFieldOption = false, bool includeTab = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleFieldDatum.canInclude);
    if (includeFieldDefinition) query.include.add('field_definition');
    if (includeFieldOption) query.include.add('field_option');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/field_data';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDatum>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleFieldDatum] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/field_data`
  static Future<PcoCollection<PcoPeopleFieldDatum>> getFromPerson(String personId, {String? id, PlanningCenterApiQuery? query, bool includeAll = false, bool includeFieldDefinition = false, bool includeFieldOption = false, bool includeTab = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleFieldDatum.canInclude);
    if (includeFieldDefinition) query.include.add('field_definition');
    if (includeFieldOption) query.include.add('field_option');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/people/$personId/field_data';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDatum>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleFieldDefinition] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data/1/field_definition`
  Future<PcoCollection<PcoPeopleFieldDefinition>> getFieldDefinition({PlanningCenterApiQuery? query, bool includeAll = false, bool includeFieldOptions = false, bool includeTab = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleFieldDatum.canInclude);
    if (includeFieldOptions) query.include.add('field_options');
    if (includeTab) query.include.add('tab');
    var url = '$apiEndpoint/field_definition';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data/1/field_option`
  Future<PcoCollection<PcoPeopleFieldOption>> getFieldOption({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/field_option';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson({PlanningCenterApiQuery? query, bool includeAll = false, bool includeAddresses = false, bool includeEmails = false, bool includeFieldData = false, bool includeHouseholds = false, bool includeInactiveReason = false, bool includeMaritalStatus = false, bool includeNamePrefix = false, bool includeNameSuffix = false, bool includeOrganization = false, bool includePersonApps = false, bool includePhoneNumbers = false, bool includePlatformNotifications = false, bool includePrimaryCampus = false, bool includeSchool = false, bool includeSocialProfiles = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleFieldDatum.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications) query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data/1/tab`
  Future<PcoCollection<PcoPeopleTab>> getTab({PlanningCenterApiQuery? query, bool includeAll = false, bool includeFieldDefinitions = false, bool includeFieldOptions = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleFieldDatum.canInclude);
    if (includeFieldDefinitions) query.include.add('field_definitions');
    if (includeFieldOptions) query.include.add('field_options');
    var url = '$apiEndpoint/tab';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
