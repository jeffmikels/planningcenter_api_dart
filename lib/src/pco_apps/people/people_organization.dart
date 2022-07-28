/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.733332
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// This class represents a PCO People Organization Object
/// 
/// - Application:        people
/// - Id:                 organization
/// - Type:               Organization
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleOrganization.fromJson()` constructor.
/// - Manually create an object using the `PcoPeopleOrganization.manual()` constructor.
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
/// - `avatarUrl` (ro) -> PCO: `avatar_url`
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
///     "avatar_url": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeopleOrganization extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2';
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
  String get name => _attributes[kName] ?? '';
  String get countryCode => _attributes[kCountryCode] ?? '';
  int get dateFormat => _attributes[kDateFormat] ?? 0;
  String get timeZone => _attributes[kTimeZone] ?? '';
  String get contactWebsite => _attributes[kContactWebsite] ?? '';
  String get avatarUrl => _attributes[kAvatarUrl] ?? '';

  // Class Constructors
  PcoPeopleOrganization.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


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
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoPeopleOrganization({String? id, String? name, String? countryCode, int? dateFormat, String? timeZone, String? contactWebsite, String? avatarUrl, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoPeopleOrganization.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
    if (countryCode != null) obj._attributes['country_code'] = countryCode;
    if (dateFormat != null) obj._attributes['date_format'] = dateFormat;
    if (timeZone != null) obj._attributes['time_zone'] = timeZone;
    if (contactWebsite != null) obj._attributes['contact_website'] = contactWebsite;
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



  /// Will get a collection of [PcoPeopleOrganization] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/organization`
  static Future<PcoCollection<PcoPeopleOrganization>> getFromPerson(String personId, {String? id, PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '/people/v2/people/$personId/organization';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleOrganization>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleAddress] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/addresses`
  Future<PcoCollection<PcoPeopleAddress>> getAddresses({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/addresses';
    return PcoCollection.fromApiCall<PcoPeopleAddress>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleAnniversaryCouple] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/anniversary_couples`
  Future<PcoCollection<PcoPeopleAnniversaryCouple>> getAnniversaryCouples({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/anniversary_couples';
    return PcoCollection.fromApiCall<PcoPeopleAnniversaryCouple>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/apps`
  Future<PcoCollection<PcoPeopleApp>> getApps({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/apps';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleBirthdayPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/birthday_people`
  Future<PcoCollection<PcoPeopleBirthdayPerson>> getBirthdayPeople({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/birthday_people';
    return PcoCollection.fromApiCall<PcoPeopleBirthdayPerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleCampus] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/campuses`
  Future<PcoCollection<PcoPeopleCampus>> getCampuses({PlanningCenterApiQuery? query, bool includeAll = false, bool includeLists = false, bool includeServiceTimes = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleOrganization.canInclude);
    if (includeLists) query.include.add('lists');
    if (includeServiceTimes) query.include.add('service_times');
    var url = '$apiEndpoint/campuses';
    return PcoCollection.fromApiCall<PcoPeopleCampus>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleCarrier] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/carriers`
  Future<PcoCollection<PcoPeopleCarrier>> getCarriers({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/carriers';
    return PcoCollection.fromApiCall<PcoPeopleCarrier>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleEmail] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/emails`
  Future<PcoCollection<PcoPeopleEmail>> getEmails({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/emails';
    return PcoCollection.fromApiCall<PcoPeopleEmail>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFieldDatum] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data`
  Future<PcoCollection<PcoPeopleFieldDatum>> getFieldData({PlanningCenterApiQuery? query, bool includeAll = false, bool includeFieldDefinition = false, bool includeFieldOption = false, bool includeTab = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleOrganization.canInclude);
    if (includeFieldDefinition) query.include.add('field_definition');
    if (includeFieldOption) query.include.add('field_option');
    if (includeTab) query.include.add('tab');
    var url = '$apiEndpoint/field_data';
    return PcoCollection.fromApiCall<PcoPeopleFieldDatum>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFieldDefinition] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_definitions`
  /// 
  /// Available Query Filters:
  /// - `include_deleted`
  /// By default, deleted fields are not included. Pass filter=include_deleted to include them.
  /// 
  Future<PcoCollection<PcoPeopleFieldDefinition>> getFieldDefinitions({PlanningCenterApiQuery? query, bool includeAll = false, bool includeFieldOptions = false, bool includeTab = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleOrganization.canInclude);
    if (includeFieldOptions) query.include.add('field_options');
    if (includeTab) query.include.add('tab');
    var url = '$apiEndpoint/field_definitions';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url, query: query, apiVersion: apiVersion);
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
  Future<PcoCollection<PcoPeopleForm>> getForms({PlanningCenterApiQuery? query, bool includeCampus = false,}) async {
    query ??= PlanningCenterApiQuery();
    
    if (includeCampus) query.include.add('campus');
    var url = '$apiEndpoint/forms';
    return PcoCollection.fromApiCall<PcoPeopleForm>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households`
  Future<PcoCollection<PcoPeopleHousehold>> getHouseholds({PlanningCenterApiQuery? query, bool includePeople = false,}) async {
    query ??= PlanningCenterApiQuery();
    
    if (includePeople) query.include.add('people');
    var url = '$apiEndpoint/households';
    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleInactiveReason] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/inactive_reasons`
  Future<PcoCollection<PcoPeopleInactiveReason>> getInactiveReasons({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/inactive_reasons';
    return PcoCollection.fromApiCall<PcoPeopleInactiveReason>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleListCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/list_categories`
  Future<PcoCollection<PcoPeopleListCategory>> getListCategories({PlanningCenterApiQuery? query, bool includeLists = false,}) async {
    query ??= PlanningCenterApiQuery();
    
    if (includeLists) query.include.add('lists');
    var url = '$apiEndpoint/list_categories';
    return PcoCollection.fromApiCall<PcoPeopleListCategory>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleList] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists`
  /// 
  /// Available Query Filters:
  /// - `can_manage`
  /// - `recently_viewed`
  /// - `starred`
  Future<PcoCollection<PcoPeopleList>> getLists({PlanningCenterApiQuery? query, bool includeAll = false, bool includeCampus = false, bool includeCategory = false, bool includeCreatedBy = false, bool includeMailchimpSyncStatus = false, bool includePeople = false, bool includeRules = false, bool includeShares = false, bool includeUpdatedBy = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleOrganization.canInclude);
    if (includeCampus) query.include.add('campus');
    if (includeCategory) query.include.add('category');
    if (includeCreatedBy) query.include.add('created_by');
    if (includeMailchimpSyncStatus) query.include.add('mailchimp_sync_status');
    if (includePeople) query.include.add('people');
    if (includeRules) query.include.add('rules');
    if (includeShares) query.include.add('shares');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '$apiEndpoint/lists';
    return PcoCollection.fromApiCall<PcoPeopleList>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleMaritalStatus] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/marital_statuses`
  Future<PcoCollection<PcoPeopleMaritalStatus>> getMaritalStatuses({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/marital_statuses';
    return PcoCollection.fromApiCall<PcoPeopleMaritalStatus>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/message_groups`
  Future<PcoCollection<PcoPeopleMessageGroup>> getMessageGroups({PlanningCenterApiQuery? query, bool includeAll = false, bool includeApp = false, bool includeFrom = false, bool includeMessages = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleOrganization.canInclude);
    if (includeApp) query.include.add('app');
    if (includeFrom) query.include.add('from');
    if (includeMessages) query.include.add('messages');
    var url = '$apiEndpoint/message_groups';
    return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/messages`
  /// 
  /// Available Query Filters:
  /// - `created_after`
  Future<PcoCollection<PcoPeopleMessage>> getMessages({PlanningCenterApiQuery? query, bool includeAll = false, bool includeMessageGroup = false, bool includeTo = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleOrganization.canInclude);
    if (includeMessageGroup) query.include.add('message_group');
    if (includeTo) query.include.add('to');
    var url = '$apiEndpoint/messages';
    return PcoCollection.fromApiCall<PcoPeopleMessage>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNamePrefix] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/name_prefixes`
  Future<PcoCollection<PcoPeopleNamePrefix>> getNamePrefixes({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/name_prefixes';
    return PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNameSuffix] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/name_suffixes`
  Future<PcoCollection<PcoPeopleNameSuffix>> getNameSuffixes({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/name_suffixes';
    return PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNoteCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_categories`
  Future<PcoCollection<PcoPeopleNoteCategory>> getNoteCategories({PlanningCenterApiQuery? query, bool includeAll = false, bool includeShares = false, bool includeSubscribers = false, bool includeSubscriptions = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleOrganization.canInclude);
    if (includeShares) query.include.add('shares');
    if (includeSubscribers) query.include.add('subscribers');
    if (includeSubscriptions) query.include.add('subscriptions');
    var url = '$apiEndpoint/note_categories';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategory>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNoteCategorySubscription] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_category_subscriptions`
  Future<PcoCollection<PcoPeopleNoteCategorySubscription>> getNoteCategorySubscriptions({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/note_category_subscriptions';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategorySubscription>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/notes`
  Future<PcoCollection<PcoPeopleNote>> getNotes({PlanningCenterApiQuery? query, bool includeAll = false, bool includeCategory = false, bool includeCreatedBy = false, bool includePerson = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleOrganization.canInclude);
    if (includeCategory) query.include.add('category');
    if (includeCreatedBy) query.include.add('created_by');
    if (includePerson) query.include.add('person');
    var url = '$apiEndpoint/notes';
    return PcoCollection.fromApiCall<PcoPeopleNote>(url, query: query, apiVersion: apiVersion);
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
  Future<PcoCollection<PcoPeoplePerson>> getPeople({PlanningCenterApiQuery? query, bool includeAll = false, bool includeAddresses = false, bool includeEmails = false, bool includeFieldData = false, bool includeHouseholds = false, bool includeInactiveReason = false, bool includeMaritalStatus = false, bool includeNamePrefix = false, bool includeNameSuffix = false, bool includeOrganization = false, bool includePersonApps = false, bool includePhoneNumbers = false, bool includePlatformNotifications = false, bool includePrimaryCampus = false, bool includeSchool = false, bool includeSocialProfiles = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleOrganization.canInclude);
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
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePeopleImport] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people_imports`
  Future<PcoCollection<PcoPeoplePeopleImport>> getPeopleImports({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/people_imports';
    return PcoCollection.fromApiCall<PcoPeoplePeopleImport>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePersonMerger] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/person_mergers`
  Future<PcoCollection<PcoPeoplePersonMerger>> getPersonMergers({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/person_mergers';
    return PcoCollection.fromApiCall<PcoPeoplePersonMerger>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleReport] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/reports`
  Future<PcoCollection<PcoPeopleReport>> getReports({PlanningCenterApiQuery? query, bool includeAll = false, bool includeCreatedBy = false, bool includeUpdatedBy = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleOrganization.canInclude);
    if (includeCreatedBy) query.include.add('created_by');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '$apiEndpoint/reports';
    return PcoCollection.fromApiCall<PcoPeopleReport>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/school_options`
  Future<PcoCollection<PcoPeopleSchoolOption>> getSchoolOptions({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/school_options';
    return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleSocialProfile] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/social_profiles`
  Future<PcoCollection<PcoPeopleSocialProfile>> getSocialProfiles({PlanningCenterApiQuery? query, bool includePerson = false,}) async {
    query ??= PlanningCenterApiQuery();
    
    if (includePerson) query.include.add('person');
    var url = '$apiEndpoint/social_profiles';
    return PcoCollection.fromApiCall<PcoPeopleSocialProfile>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleOrganizationStatistic] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/stats`
  Future<PcoCollection<PcoPeopleOrganizationStatistic>> getStats({PlanningCenterApiQuery? query, }) async {
    query ??= PlanningCenterApiQuery();
    
    
    var url = '$apiEndpoint/stats';
    return PcoCollection.fromApiCall<PcoPeopleOrganizationStatistic>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/tabs`
  /// 
  /// Available Query Filters:
  /// - `with_field_definitions`
  Future<PcoCollection<PcoPeopleTab>> getTabs({PlanningCenterApiQuery? query, bool includeAll = false, bool includeFieldDefinitions = false, bool includeFieldOptions = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleOrganization.canInclude);
    if (includeFieldDefinitions) query.include.add('field_definitions');
    if (includeFieldOptions) query.include.add('field_options');
    var url = '$apiEndpoint/tabs';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflow] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows`
  /// 
  /// Available Query Filters:
  /// - `only_deleted`
  /// - `with_deleted`
  /// - `with_recoverable`
  /// - `with_steps`
  Future<PcoCollection<PcoPeopleWorkflow>> getWorkflows({PlanningCenterApiQuery? query, bool includeAll = false, bool includeCategory = false, bool includeShares = false, bool includeSteps = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleOrganization.canInclude);
    if (includeCategory) query.include.add('category');
    if (includeShares) query.include.add('shares');
    if (includeSteps) query.include.add('steps');
    var url = '$apiEndpoint/workflows';
    return PcoCollection.fromApiCall<PcoPeopleWorkflow>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
