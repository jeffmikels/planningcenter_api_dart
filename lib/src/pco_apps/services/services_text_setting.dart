/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:11.983190
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesTextSettingOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesTextSettingFilter { none }

/// Creates a [PcoServicesTextSettingQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesTextSettingQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesTextSettingOrder, String> _orderMap = {
    
  };
  static String orderString(PcoServicesTextSettingOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesTextSettingFilter, String> _filterMap = {
    
  };
  static String filterString(PcoServicesTextSettingFilter filter) => _filterMap[filter]!;

  PcoServicesTextSettingQuery({



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
  }) : super() ;
}

/// This class represents a PCO Services TextSetting Object
/// 
/// - Application:        services
/// - Id:                 text_setting
/// - Type:               TextSetting
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/text_settings
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesTextSetting.fromJson()` constructor.
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
/// 
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `isSchedulingRequestsEnabled` (rw) -> PCO: `scheduling_requests_enabled`
/// - `isGeneralEmailsEnabled` (rw) -> PCO: `general_emails_enabled`
/// - `isSchedulingRepliesEnabled` (rw) -> PCO: `scheduling_replies_enabled`
/// - `isRemindersEnabled` (rw) -> PCO: `reminders_enabled`
/// - `carrier` (ro) -> PCO: `carrier`
/// - `displayNumber` (ro) -> PCO: `display_number`
/// - `normalizedNumber` (ro) -> PCO: `normalized_number`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// NONE
/// 
/// Inbound Edges:
/// - `textsetting-person-text_settings`: https://api.planningcenteronline.com/services/v2/people/1/text_settings
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "TextSetting",
///   "id": "1",
///   "attributes": {
///     "scheduling_requests_enabled": true,
///     "general_emails_enabled": true,
///     "scheduling_replies_enabled": true,
///     "reminders_enabled": true,
///     "carrier": "string",
///     "display_number": "string",
///     "normalized_number": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoServicesTextSetting extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'TextSetting';
  static const String kTypeId = 'text_setting';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/text_settings';
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
  static const kSchedulingRequestsEnabled = 'scheduling_requests_enabled';
  static const kGeneralEmailsEnabled = 'general_emails_enabled';
  static const kSchedulingRepliesEnabled = 'scheduling_replies_enabled';
  static const kRemindersEnabled = 'reminders_enabled';
  static const kCarrier = 'carrier';
  static const kDisplayNumber = 'display_number';
  static const kNormalizedNumber = 'normalized_number';


  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => ['general_emails_enabled', 'reminders_enabled', 'scheduling_replies_enabled', 'scheduling_requests_enabled'];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  bool get isSchedulingRequestsEnabled => _attributes[kSchedulingRequestsEnabled] == true;
  bool get isGeneralEmailsEnabled => _attributes[kGeneralEmailsEnabled] == true;
  bool get isSchedulingRepliesEnabled => _attributes[kSchedulingRepliesEnabled] == true;
  bool get isRemindersEnabled => _attributes[kRemindersEnabled] == true;
  String get carrier => _attributes[kCarrier] ?? '';
  String get displayNumber => _attributes[kDisplayNumber] ?? '';
  String get normalizedNumber => _attributes[kNormalizedNumber] ?? '';
  
  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set isSchedulingRequestsEnabled(bool? x) => (x == null) ? _attributes.remove(kSchedulingRequestsEnabled) : _attributes[kSchedulingRequestsEnabled] = x;
  ///
  /// pass `null` to remove key from attributes
  set isGeneralEmailsEnabled(bool? x) => (x == null) ? _attributes.remove(kGeneralEmailsEnabled) : _attributes[kGeneralEmailsEnabled] = x;
  ///
  /// pass `null` to remove key from attributes
  set isSchedulingRepliesEnabled(bool? x) => (x == null) ? _attributes.remove(kSchedulingRepliesEnabled) : _attributes[kSchedulingRepliesEnabled] = x;
  ///
  /// pass `null` to remove key from attributes
  set isRemindersEnabled(bool? x) => (x == null) ? _attributes.remove(kRemindersEnabled) : _attributes[kRemindersEnabled] = x;

  // Class Constructors
  PcoServicesTextSetting.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesTextSetting.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesTextSetting] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: `isGeneralEmailsEnabled`, `isRemindersEnabled`, `isSchedulingRepliesEnabled`, `isSchedulingRequestsEnabled`
  factory PcoServicesTextSetting({String? id, bool? isSchedulingRequestsEnabled, bool? isGeneralEmailsEnabled, bool? isSchedulingRepliesEnabled, bool? isRemindersEnabled, String? carrier, String? displayNumber, String? normalizedNumber, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoServicesTextSetting.empty();
    obj._id = id;
    if (isSchedulingRequestsEnabled != null) obj._attributes['scheduling_requests_enabled'] = isSchedulingRequestsEnabled;
    if (isGeneralEmailsEnabled != null) obj._attributes['general_emails_enabled'] = isGeneralEmailsEnabled;
    if (isSchedulingRepliesEnabled != null) obj._attributes['scheduling_replies_enabled'] = isSchedulingRepliesEnabled;
    if (isRemindersEnabled != null) obj._attributes['reminders_enabled'] = isRemindersEnabled;
    if (carrier != null) obj._attributes['carrier'] = carrier;
    if (displayNumber != null) obj._attributes['display_number'] = displayNumber;
    if (normalizedNumber != null) obj._attributes['normalized_number'] = normalizedNumber;

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



  /// Will get a collection of [PcoServicesTextSetting] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/text_settings`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesTextSetting>> getFromPerson(String personId, {String? id, PcoServicesTextSettingQuery? query, }) async {
    query ??= PcoServicesTextSettingQuery();
    
    
    var url = '/services/v2/people/$personId/text_settings';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTextSetting>(url, query: query, apiVersion:kApiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
