/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.360369
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

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
/// NONE
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
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/text_settings';
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
  List<String> get updateAllowed => [
        'general_emails_enabled',
        'reminders_enabled',
        'scheduling_replies_enabled',
        'scheduling_requests_enabled'
      ];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  bool get isSchedulingRequestsEnabled =>
      _attributes[kSchedulingRequestsEnabled] == true;
  bool get isGeneralEmailsEnabled => _attributes[kGeneralEmailsEnabled] == true;
  bool get isSchedulingRepliesEnabled =>
      _attributes[kSchedulingRepliesEnabled] == true;
  bool get isRemindersEnabled => _attributes[kRemindersEnabled] == true;
  String get carrier => _attributes[kCarrier] ?? '';
  String get displayNumber => _attributes[kDisplayNumber] ?? '';
  String get normalizedNumber => _attributes[kNormalizedNumber] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set isSchedulingRequestsEnabled(bool? x) => (x == null)
      ? _attributes.remove(kSchedulingRequestsEnabled)
      : _attributes[kSchedulingRequestsEnabled] = x;

  /// pass `null` to remove key from attributes
  set isGeneralEmailsEnabled(bool? x) => (x == null)
      ? _attributes.remove(kGeneralEmailsEnabled)
      : _attributes[kGeneralEmailsEnabled] = x;

  /// pass `null` to remove key from attributes
  set isSchedulingRepliesEnabled(bool? x) => (x == null)
      ? _attributes.remove(kSchedulingRepliesEnabled)
      : _attributes[kSchedulingRepliesEnabled] = x;

  /// pass `null` to remove key from attributes
  set isRemindersEnabled(bool? x) => (x == null)
      ? _attributes.remove(kRemindersEnabled)
      : _attributes[kRemindersEnabled] = x;

  // Class Constructors
  PcoServicesTextSetting.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoServicesTextSetting] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/text_settings`
  static Future<PcoCollection<PcoServicesTextSetting>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/services/v2/people/$personId/text_settings';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTextSetting>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
