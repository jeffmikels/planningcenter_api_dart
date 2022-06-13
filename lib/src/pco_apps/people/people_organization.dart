/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.744985
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


import '../../pco.dart';

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
  String get name => attributes[kName] ?? '';
  String get countryCode => attributes[kCountryCode] ?? '';
  int get dateFormat => attributes[kDateFormat] ?? 0;
  String get timeZone => attributes[kTimeZone] ?? '';
  String get contactWebsite => attributes[kContactWebsite] ?? '';
  String get avatarUrl => attributes[kAvatarUrl] ?? '';    


  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships
  
  




  // Class Constructors
  PcoPeopleOrganization.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoPeopleOrganization.empty() : super(kPcoApplication, kTypeString);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleOrganization] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/organization`
  static Future<PcoCollection<PcoPeopleOrganization>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleOrganization.canInclude;
    var url = '/people/v2/people/$peopleId/organization';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleOrganization>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleAddres] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/addresses`
  Future<PcoCollection<PcoPeopleAddres>> getAddresses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleAddres.canInclude;
    var url = '$apiEndpoint/addresses';
    return PcoCollection.fromApiCall<PcoPeopleAddres>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleAnniversaryCouple] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/anniversary_couples`
  Future<PcoCollection<PcoPeopleAnniversaryCouple>> getAnniversaryCouples({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleAnniversaryCouple.canInclude;
    var url = '$apiEndpoint/anniversary_couples';
    return PcoCollection.fromApiCall<PcoPeopleAnniversaryCouple>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/apps`
  Future<PcoCollection<PcoPeopleApp>> getApps({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    var url = '$apiEndpoint/apps';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleBirthdayPeople] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/birthday_people`
  Future<PcoCollection<PcoPeopleBirthdayPeople>> getBirthdayPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleBirthdayPeople.canInclude;
    var url = '$apiEndpoint/birthday_people';
    return PcoCollection.fromApiCall<PcoPeopleBirthdayPeople>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleCampus] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/campuses`
  Future<PcoCollection<PcoPeopleCampus>> getCampuses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    var url = '$apiEndpoint/campuses';
    return PcoCollection.fromApiCall<PcoPeopleCampus>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleCarrier] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/carriers`
  Future<PcoCollection<PcoPeopleCarrier>> getCarriers({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCarrier.canInclude;
    var url = '$apiEndpoint/carriers';
    return PcoCollection.fromApiCall<PcoPeopleCarrier>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleEmail] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/emails`
  Future<PcoCollection<PcoPeopleEmail>> getEmails({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleEmail.canInclude;
    var url = '$apiEndpoint/emails';
    return PcoCollection.fromApiCall<PcoPeopleEmail>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFieldDatum] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data`
  Future<PcoCollection<PcoPeopleFieldDatum>> getFieldData({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDatum.canInclude;
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
  Future<PcoCollection<PcoPeopleFieldDefinition>> getFieldDefinitions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
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
  Future<PcoCollection<PcoPeopleForm>> getForms({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleForm.canInclude;
    var url = '$apiEndpoint/forms';
    return PcoCollection.fromApiCall<PcoPeopleForm>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households`
  Future<PcoCollection<PcoPeopleHousehold>> getHouseholds({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    var url = '$apiEndpoint/households';
    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleInactiveReason] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/inactive_reasons`
  Future<PcoCollection<PcoPeopleInactiveReason>> getInactiveReasons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleInactiveReason.canInclude;
    var url = '$apiEndpoint/inactive_reasons';
    return PcoCollection.fromApiCall<PcoPeopleInactiveReason>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleListCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/list_categories`
  Future<PcoCollection<PcoPeopleListCategory>> getListCategories({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleListCategory.canInclude;
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
  Future<PcoCollection<PcoPeopleList>> getLists({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleList.canInclude;
    var url = '$apiEndpoint/lists';
    return PcoCollection.fromApiCall<PcoPeopleList>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleMaritalStatu] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/marital_statuses`
  Future<PcoCollection<PcoPeopleMaritalStatu>> getMaritalStatuses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMaritalStatu.canInclude;
    var url = '$apiEndpoint/marital_statuses';
    return PcoCollection.fromApiCall<PcoPeopleMaritalStatu>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/message_groups`
  Future<PcoCollection<PcoPeopleMessageGroup>> getMessageGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
    var url = '$apiEndpoint/message_groups';
    return PcoCollection.fromApiCall<PcoPeopleMessageGroup>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/messages`
  /// 
  /// Available Query Filters:
  /// - `created_after`
  Future<PcoCollection<PcoPeopleMessage>> getMessages({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleMessage.canInclude;
    var url = '$apiEndpoint/messages';
    return PcoCollection.fromApiCall<PcoPeopleMessage>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNamePrefix] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/name_prefixes`
  Future<PcoCollection<PcoPeopleNamePrefix>> getNamePrefixes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNamePrefix.canInclude;
    var url = '$apiEndpoint/name_prefixes';
    return PcoCollection.fromApiCall<PcoPeopleNamePrefix>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNameSuffix] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/name_suffixes`
  Future<PcoCollection<PcoPeopleNameSuffix>> getNameSuffixes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNameSuffix.canInclude;
    var url = '$apiEndpoint/name_suffixes';
    return PcoCollection.fromApiCall<PcoPeopleNameSuffix>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNoteCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_categories`
  Future<PcoCollection<PcoPeopleNoteCategory>> getNoteCategories({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategory.canInclude;
    var url = '$apiEndpoint/note_categories';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategory>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNoteCategorySubscription] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_category_subscriptions`
  Future<PcoCollection<PcoPeopleNoteCategorySubscription>> getNoteCategorySubscriptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategorySubscription.canInclude;
    var url = '$apiEndpoint/note_category_subscriptions';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategorySubscription>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/notes`
  Future<PcoCollection<PcoPeopleNote>> getNotes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNote.canInclude;
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
  Future<PcoCollection<PcoPeoplePerson>> getPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePeopleImport] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people_imports`
  Future<PcoCollection<PcoPeoplePeopleImport>> getPeopleImports({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePeopleImport.canInclude;
    var url = '$apiEndpoint/people_imports';
    return PcoCollection.fromApiCall<PcoPeoplePeopleImport>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePersonMerger] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/person_mergers`
  Future<PcoCollection<PcoPeoplePersonMerger>> getPersonMergers({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePersonMerger.canInclude;
    var url = '$apiEndpoint/person_mergers';
    return PcoCollection.fromApiCall<PcoPeoplePersonMerger>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleReport] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/reports`
  Future<PcoCollection<PcoPeopleReport>> getReports({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleReport.canInclude;
    var url = '$apiEndpoint/reports';
    return PcoCollection.fromApiCall<PcoPeopleReport>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/school_options`
  Future<PcoCollection<PcoPeopleSchoolOption>> getSchoolOptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    var url = '$apiEndpoint/school_options';
    return PcoCollection.fromApiCall<PcoPeopleSchoolOption>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleSocialProfile] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/social_profiles`
  Future<PcoCollection<PcoPeopleSocialProfile>> getSocialProfiles({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleSocialProfile.canInclude;
    var url = '$apiEndpoint/social_profiles';
    return PcoCollection.fromApiCall<PcoPeopleSocialProfile>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleOrganizationStatistic] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/stats`
  Future<PcoCollection<PcoPeopleOrganizationStatistic>> getStats({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleOrganizationStatistic.canInclude;
    var url = '$apiEndpoint/stats';
    return PcoCollection.fromApiCall<PcoPeopleOrganizationStatistic>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/tabs`
  /// 
  /// Available Query Filters:
  /// - `with_field_definitions`
  Future<PcoCollection<PcoPeopleTab>> getTabs({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleTab.canInclude;
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
  Future<PcoCollection<PcoPeopleWorkflow>> getWorkflows({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflow.canInclude;
    var url = '$apiEndpoint/workflows';
    return PcoCollection.fromApiCall<PcoPeopleWorkflow>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
