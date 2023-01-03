/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.115802
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoPeopleOrganizationOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleOrganizationFilter { none }

/// Creates a [PcoPeopleOrganizationQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleOrganizationQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleOrganizationOrder, String> _orderMap = {};
  static String orderString(PcoPeopleOrganizationOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleOrganizationFilter, String> _filterMap = {};
  static String filterString(PcoPeopleOrganizationFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleOrganizationQuery({
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

/// This class represents a PCO People Organization Object
///
/// - Application:        people
/// - Id:                 organization
/// - Type:               Organization
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleOrganization.fromJson()` constructor.
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
/// The organization represents a single church. Every other resource is scoped to this record.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `countryCode` (ro) -> PCO: `country_code`
/// - `dateFormat` (ro) -> PCO: `date_format`
/// - `timeZone` (ro) -> PCO: `time_zone`
/// - `contactWebsite` (ro) -> PCO: `contact_website`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `avatarUrl` (ro) -> PCO: `avatar_url`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `address-organization-addresses`: https://api.planningcenteronline.com/people/v2/addresses
/// - `anniversarycouples-organization-anniversary_couples`: https://api.planningcenteronline.com/people/v2/anniversary_couples
/// - `app-organization-apps`: https://api.planningcenteronline.com/people/v2/apps
/// - `birthdaypeople-organization-birthday_people`: https://api.planningcenteronline.com/people/v2/birthday_people
/// - `campus-organization-campuses`: https://api.planningcenteronline.com/people/v2/campuses
/// - `carrier-organization-carriers`: https://api.planningcenteronline.com/people/v2/carriers
/// - `email-organization-emails`: https://api.planningcenteronline.com/people/v2/emails
/// - `fielddatum-organization-field_data`: https://api.planningcenteronline.com/people/v2/field_data
/// - `fielddefinition-organization-field_definitions`: https://api.planningcenteronline.com/people/v2/field_definitions
/// - `form-organization-forms`: https://api.planningcenteronline.com/people/v2/forms
/// - `household-organization-households`: https://api.planningcenteronline.com/people/v2/households
/// - `inactivereason-organization-inactive_reasons`: https://api.planningcenteronline.com/people/v2/inactive_reasons
/// - `listcategory-organization-list_categories`: https://api.planningcenteronline.com/people/v2/list_categories
/// - `list-organization-lists`: https://api.planningcenteronline.com/people/v2/lists
/// - `maritalstatus-organization-marital_statuses`: https://api.planningcenteronline.com/people/v2/marital_statuses
/// - `messagegroup-organization-message_groups`: https://api.planningcenteronline.com/people/v2/message_groups
/// - `message-organization-messages`: https://api.planningcenteronline.com/people/v2/messages
/// - `nameprefix-organization-name_prefixes`: https://api.planningcenteronline.com/people/v2/name_prefixes
/// - `namesuffix-organization-name_suffixes`: https://api.planningcenteronline.com/people/v2/name_suffixes
/// - `notecategory-organization-note_categories`: https://api.planningcenteronline.com/people/v2/note_categories
/// - `notecategorysubscription-organization-note_category_subscriptions`: https://api.planningcenteronline.com/people/v2/note_category_subscriptions
/// - `note-organization-notes`: https://api.planningcenteronline.com/people/v2/notes
/// - `person-organization-people`: https://api.planningcenteronline.com/people/v2/people
/// - `peopleimport-organization-people_imports`: https://api.planningcenteronline.com/people/v2/people_imports
/// - `personmerger-organization-person_mergers`: https://api.planningcenteronline.com/people/v2/person_mergers
/// - `phonenumber-organization-phone_numbers`: https://api.planningcenteronline.com/people/v2/phone_numbers
/// - `report-organization-reports`: https://api.planningcenteronline.com/people/v2/reports
/// - `schooloption-organization-school_options`: https://api.planningcenteronline.com/people/v2/school_options
/// - `socialprofile-organization-social_profiles`: https://api.planningcenteronline.com/people/v2/social_profiles
/// - `organizationstatistics-organization-stats`: https://api.planningcenteronline.com/people/v2/stats
/// - `tab-organization-tabs`: https://api.planningcenteronline.com/people/v2/tabs
/// - `workflow-organization-workflows`: https://api.planningcenteronline.com/people/v2/workflows
///
/// Inbound Edges:
/// - `organization-person-organization`: https://api.planningcenteronline.com/people/v2/people/1/organization
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Organization",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "country_code": "string",
///     "date_format": 1,
///     "time_zone": "string",
///     "contact_website": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "avatar_url": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeopleOrganization extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2';
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
  static const kName = 'name';
  static const kCountryCode = 'country_code';
  static const kDateFormat = 'date_format';
  static const kTimeZone = 'time_zone';
  static const kContactWebsite = 'contact_website';
  static const kCreatedAt = 'created_at';
  static const kAvatarUrl = 'avatar_url';

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
  String get name => _getAttribute<String>(kName, '');
  String get countryCode => _getAttribute<String>(kCountryCode, '');
  int get dateFormat => _getAttribute<int>(kDateFormat, 0);
  String get timeZone => _getAttribute<String>(kTimeZone, '');
  String get contactWebsite => _getAttribute<String>(kContactWebsite, '');
  String get avatarUrl => _getAttribute<String>(kAvatarUrl, '');

  // Class Constructors
  PcoPeopleOrganization.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleOrganization.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleOrganization] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeopleOrganization(
      {String? id,
      String? name,
      String? countryCode,
      int? dateFormat,
      String? timeZone,
      String? contactWebsite,
      DateTime? createdAt,
      String? avatarUrl,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleOrganization.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
    if (countryCode != null) obj._attributes['country_code'] = countryCode;
    if (dateFormat != null) obj._attributes['date_format'] = dateFormat;
    if (timeZone != null) obj._attributes['time_zone'] = timeZone;
    if (contactWebsite != null)
      obj._attributes['contact_website'] = contactWebsite;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (avatarUrl != null) obj._attributes['avatar_url'] = avatarUrl;

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

  /// Will get a [PcoCollection] of [PcoPeopleOrganization] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/organization`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleOrganization>> getFromPerson(
    String personId, {
    String? id,
    PcoPeopleOrganizationQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoPeopleOrganizationQuery();
    if (getAll) query.getAll = true;

    var url = '/people/v2/people/$personId/organization';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleOrganization>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleOrganization] object
  /// using a path like this: `/people/v2/people/$personId/organization/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleOrganization?> getSingleFromPerson(
    String personId,
    String id, {
    PcoPeopleOrganizationQuery? query,
  }) async {
    query ??= PcoPeopleOrganizationQuery();

    var url = '/people/v2/people/$personId/organization/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleOrganization>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleOrganization] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/organization`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleOrganization>> getAllFromPerson(
    String personId, {
    String? id,
    PcoPeopleOrganizationQuery? query,
  }) async {
    query ??= PcoPeopleOrganizationQuery();
    query.getAll = true;

    var url = '/people/v2/people/$personId/organization';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleOrganization>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleAddress] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/addresses`
  Future<PcoCollection<PcoPeopleAddress>> getAddresses(
      {PcoPeopleAddressQuery? query}) async {
    query ??= PcoPeopleAddressQuery();
    var url = '$apiEndpoint/addresses';
    return PcoCollection.fromApiCall<PcoPeopleAddress>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleAnniversaryCouple] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/anniversary_couples`
  Future<PcoCollection<PcoPeopleAnniversaryCouple>> getAnniversaryCouples(
      {PcoPeopleAnniversaryCoupleQuery? query}) async {
    query ??= PcoPeopleAnniversaryCoupleQuery();
    var url = '$apiEndpoint/anniversary_couples';
    return PcoCollection.fromApiCall<PcoPeopleAnniversaryCouple>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/apps`
  Future<PcoCollection<PcoPeopleApp>> getApps(
      {PcoPeopleAppQuery? query}) async {
    query ??= PcoPeopleAppQuery();
    var url = '$apiEndpoint/apps';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleBirthdayPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/birthday_people`
  Future<PcoCollection<PcoPeopleBirthdayPerson>> getBirthdayPeople(
      {PcoPeopleBirthdayPersonQuery? query}) async {
    query ??= PcoPeopleBirthdayPersonQuery();
    var url = '$apiEndpoint/birthday_people';
    return PcoCollection.fromApiCall<PcoPeopleBirthdayPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleCampus] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/campuses`
  Future<PcoCollection<PcoPeopleCampus>> getCampuses(
      {PcoPeopleCampusQuery? query}) async {
    query ??= PcoPeopleCampusQuery();
    var url = '$apiEndpoint/campuses';
    return PcoCollection.fromApiCall<PcoPeopleCampus>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleCarrier] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/carriers`
  Future<PcoCollection<PcoPeopleCarrier>> getCarriers(
      {PcoPeopleCarrierQuery? query}) async {
    query ??= PcoPeopleCarrierQuery();
    var url = '$apiEndpoint/carriers';
    return PcoCollection.fromApiCall<PcoPeopleCarrier>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleEmail] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/emails`
  Future<PcoCollection<PcoPeopleEmail>> getEmails(
      {PcoPeopleEmailQuery? query}) async {
    query ??= PcoPeopleEmailQuery();
    var url = '$apiEndpoint/emails';
    return PcoCollection.fromApiCall<PcoPeopleEmail>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFieldDatum] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data`
  Future<PcoCollection<PcoPeopleFieldDatum>> getFieldData(
      {PcoPeopleFieldDatumQuery? query}) async {
    query ??= PcoPeopleFieldDatumQuery();
    var url = '$apiEndpoint/field_data';
    return PcoCollection.fromApiCall<PcoPeopleFieldDatum>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFieldDefinition] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_definitions`
  ///
  /// Available Query Filters:
  /// - `include_deleted`
  /// By default, deleted fields are not included. Pass filter=include_deleted to include them.
  ///
  Future<PcoCollection<PcoPeopleFieldDefinition>> getFieldDefinitions(
      {PcoPeopleFieldDefinitionQuery? query}) async {
    query ??= PcoPeopleFieldDefinitionQuery();
    var url = '$apiEndpoint/field_definitions';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleForm] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms`
  ///
  /// Available Query Filters:
  /// - `archived`
  /// - `closed`
  /// - `not_archived`
  /// - `open`
  /// - `recently_viewed`
  /// - `with_recoverable`
  Future<PcoCollection<PcoPeopleForm>> getForms(
      {PcoPeopleFormQuery? query}) async {
    query ??= PcoPeopleFormQuery();
    var url = '$apiEndpoint/forms';
    return PcoCollection.fromApiCall<PcoPeopleForm>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households`
  Future<PcoCollection<PcoPeopleHousehold>> getHouseholds(
      {PcoPeopleHouseholdQuery? query}) async {
    query ??= PcoPeopleHouseholdQuery();
    var url = '$apiEndpoint/households';
    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleInactiveReason] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/inactive_reasons`
  Future<PcoCollection<PcoPeopleInactiveReason>> getInactiveReasons(
      {PcoPeopleInactiveReasonQuery? query}) async {
    query ??= PcoPeopleInactiveReasonQuery();
    var url = '$apiEndpoint/inactive_reasons';
    return PcoCollection.fromApiCall<PcoPeopleInactiveReason>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleListCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/list_categories`
  Future<PcoCollection<PcoPeopleListCategory>> getListCategories(
      {PcoPeopleListCategoryQuery? query}) async {
    query ??= PcoPeopleListCategoryQuery();
    var url = '$apiEndpoint/list_categories';
    return PcoCollection.fromApiCall<PcoPeopleListCategory>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleList] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists`
  ///
  /// Available Query Filters:
  /// - `can_manage`
  /// - `recently_viewed`
  /// - `starred`
  Future<PcoCollection<PcoPeopleList>> getLists(
      {PcoPeopleListQuery? query}) async {
    query ??= PcoPeopleListQuery();
    var url = '$apiEndpoint/lists';
    return PcoCollection.fromApiCall<PcoPeopleList>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleMaritalStatus] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/marital_statuses`
  Future<PcoCollection<PcoPeopleMaritalStatus>> getMaritalStatuses(
      {PcoPeopleMaritalStatusQuery? query}) async {
    query ??= PcoPeopleMaritalStatusQuery();
    var url = '$apiEndpoint/marital_statuses';
    return PcoCollection.fromApiCall<PcoPeopleMaritalStatus>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/message_groups`
  Future<PcoCollection<PcoPeopleMessageGroup>> getMessageGroups(
      {PcoPeopleMessageGroupQuery? query}) async {
    query ??= PcoPeopleMessageGroupQuery();
    var url = '$apiEndpoint/message_groups';
    return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/messages`
  ///
  /// Available Query Filters:
  /// - `created_after`
  Future<PcoCollection<PcoPeopleMessage>> getMessages(
      {PcoPeopleMessageQuery? query}) async {
    query ??= PcoPeopleMessageQuery();
    var url = '$apiEndpoint/messages';
    return PcoCollection.fromApiCall<PcoPeopleMessage>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNamePrefix] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/name_prefixes`
  Future<PcoCollection<PcoPeopleNamePrefix>> getNamePrefixes(
      {PcoPeopleNamePrefixQuery? query}) async {
    query ??= PcoPeopleNamePrefixQuery();
    var url = '$apiEndpoint/name_prefixes';
    return PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNameSuffix] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/name_suffixes`
  Future<PcoCollection<PcoPeopleNameSuffix>> getNameSuffixes(
      {PcoPeopleNameSuffixQuery? query}) async {
    query ??= PcoPeopleNameSuffixQuery();
    var url = '$apiEndpoint/name_suffixes';
    return PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNoteCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_categories`
  ///
  /// Available Query Filters:
  /// - `view_creatable`
  Future<PcoCollection<PcoPeopleNoteCategory>> getNoteCategories(
      {PcoPeopleNoteCategoryQuery? query}) async {
    query ??= PcoPeopleNoteCategoryQuery();
    var url = '$apiEndpoint/note_categories';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategory>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNoteCategorySubscription] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_category_subscriptions`
  Future<PcoCollection<PcoPeopleNoteCategorySubscription>>
      getNoteCategorySubscriptions(
          {PcoPeopleNoteCategorySubscriptionQuery? query}) async {
    query ??= PcoPeopleNoteCategorySubscriptionQuery();
    var url = '$apiEndpoint/note_category_subscriptions';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategorySubscription>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/notes`
  Future<PcoCollection<PcoPeopleNote>> getNotes(
      {PcoPeopleNoteQuery? query}) async {
    query ??= PcoPeopleNoteQuery();
    var url = '$apiEndpoint/notes';
    return PcoCollection.fromApiCall<PcoPeopleNote>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people`
  ///
  /// Available Query Filters:
  /// - `admins`
  /// - `created_since`
  /// filter people created in the last 24 hours; pass an additional `time` parameter in ISO 8601 format to specify your own timeframe
  ///
  /// - `organization_admins`
  Future<PcoCollection<PcoPeoplePerson>> getPeople(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePeopleImport] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people_imports`
  Future<PcoCollection<PcoPeoplePeopleImport>> getPeopleImports(
      {PcoPeoplePeopleImportQuery? query}) async {
    query ??= PcoPeoplePeopleImportQuery();
    var url = '$apiEndpoint/people_imports';
    return PcoCollection.fromApiCall<PcoPeoplePeopleImport>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePersonMerger] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/person_mergers`
  Future<PcoCollection<PcoPeoplePersonMerger>> getPersonMergers(
      {PcoPeoplePersonMergerQuery? query}) async {
    query ??= PcoPeoplePersonMergerQuery();
    var url = '$apiEndpoint/person_mergers';
    return PcoCollection.fromApiCall<PcoPeoplePersonMerger>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePhoneNumber] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/phone_numbers`
  Future<PcoCollection<PcoPeoplePhoneNumber>> getPhoneNumbers(
      {PcoPeoplePhoneNumberQuery? query}) async {
    query ??= PcoPeoplePhoneNumberQuery();
    var url = '$apiEndpoint/phone_numbers';
    return PcoCollection.fromApiCall<PcoPeoplePhoneNumber>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleReport] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/reports`
  Future<PcoCollection<PcoPeopleReport>> getReports(
      {PcoPeopleReportQuery? query}) async {
    query ??= PcoPeopleReportQuery();
    var url = '$apiEndpoint/reports';
    return PcoCollection.fromApiCall<PcoPeopleReport>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/school_options`
  Future<PcoCollection<PcoPeopleSchoolOption>> getSchoolOptions(
      {PcoPeopleSchoolOptionQuery? query}) async {
    query ??= PcoPeopleSchoolOptionQuery();
    var url = '$apiEndpoint/school_options';
    return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleSocialProfile] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/social_profiles`
  Future<PcoCollection<PcoPeopleSocialProfile>> getSocialProfiles(
      {PcoPeopleSocialProfileQuery? query}) async {
    query ??= PcoPeopleSocialProfileQuery();
    var url = '$apiEndpoint/social_profiles';
    return PcoCollection.fromApiCall<PcoPeopleSocialProfile>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleOrganizationStatistic] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/stats`
  Future<PcoCollection<PcoPeopleOrganizationStatistic>> getStats(
      {PcoPeopleOrganizationStatisticQuery? query}) async {
    query ??= PcoPeopleOrganizationStatisticQuery();
    var url = '$apiEndpoint/stats';
    return PcoCollection.fromApiCall<PcoPeopleOrganizationStatistic>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/tabs`
  ///
  /// Available Query Filters:
  /// - `with_field_definitions`
  Future<PcoCollection<PcoPeopleTab>> getTabs(
      {PcoPeopleTabQuery? query}) async {
    query ??= PcoPeopleTabQuery();
    var url = '$apiEndpoint/tabs';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflow] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows`
  ///
  /// Available Query Filters:
  /// - `has_my_cards`
  /// - `only_deleted`
  /// - `recently_viewed`
  /// - `with_deleted`
  /// - `with_recoverable`
  /// - `with_steps`
  Future<PcoCollection<PcoPeopleWorkflow>> getWorkflows(
      {PcoPeopleWorkflowQuery? query}) async {
    query ??= PcoPeopleWorkflowQuery();
    var url = '$apiEndpoint/workflows';
    return PcoCollection.fromApiCall<PcoPeopleWorkflow>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
