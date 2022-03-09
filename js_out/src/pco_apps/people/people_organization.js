/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.867456
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People Organization Object
/// 
/// - Application:        people
/// - Id:                 organization
/// - Type:               Organization
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2
/// 
/// Description:
/// The organization represents a single church. Every other resource is scoped to this record.
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
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
/// All Inbound Edges:
/// - `organization-person-organization`: https://api.planningcenteronline.com/people/v2/people/1/organization
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleOrganization extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'Organization';
  static kTypeId = 'organization';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleOrganization.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleOrganization.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleOrganization.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kCountryCode() { return 'country_code' }
  static get kDateFormat() { return 'date_format' }
  static get kTimeZone() { return 'time_zone' }
  static get kContactWebsite() { return 'contact_website' }
  static get kAvatarUrl() { return 'avatar_url' }


  // getters and setters
  // @override
  get createAllowed() { return []; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return false; }

  // @override
  get canUpdate() { return false; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get countryCode() { return attributes[this.constructor.kCountryCode] ?? ''; }
  get dateFormat() { return attributes[this.constructor.kDateFormat] ?? 0; }
  get timeZone() { return attributes[this.constructor.kTimeZone] ?? ''; }
  get contactWebsite() { return attributes[this.constructor.kContactWebsite] ?? ''; }
  get avatarUrl() { return attributes[this.constructor.kAvatarUrl] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleOrganization._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleOrganization({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleOrganization] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/organization`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleOrganization.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/organization`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleAddres] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/addresses`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAddresses({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleAddres.canInclude;
    let url = `${apiEndpoint}/addresses`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleAnniversaryCouple] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/anniversary_couples`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAnniversaryCouples({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleAnniversaryCouple.canInclude;
    let url = `${apiEndpoint}/anniversary_couples`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/apps`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getApps({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    let url = `${apiEndpoint}/apps`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleBirthdayPeople] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/birthday_people`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getBirthdayPeople({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleBirthdayPeople.canInclude;
    let url = `${apiEndpoint}/birthday_people`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleCampus] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/campuses`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCampuses({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    let url = `${apiEndpoint}/campuses`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleCarrier] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/carriers`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCarriers({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleCarrier.canInclude;
    let url = `${apiEndpoint}/carriers`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleEmail] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/emails`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEmails({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleEmail.canInclude;
    let url = `${apiEndpoint}/emails`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFieldDatum] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFieldData({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFieldDatum.canInclude;
    let url = `${apiEndpoint}/field_data`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFieldDefinition] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_definitions`
  /// 
  /// Available Query Filters:
  /// - `include_deleted`
  /// By default, deleted fields are not included. Pass filter=include_deleted to include them.
  /// 
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFieldDefinitions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
    let url = `${apiEndpoint}/field_definitions`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleForm] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms`
  /// 
  /// Available Query Filters:
  /// - `archived`
  /// - `closed`
  /// - `not_archived`
  /// - `open`
  /// - `recently_viewed`
  /// - `with_recoverable`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getForms({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleForm.canInclude;
    let url = `${apiEndpoint}/forms`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getHouseholds({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    let url = `${apiEndpoint}/households`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleInactiveReason] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/inactive_reasons`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getInactiveReasons({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleInactiveReason.canInclude;
    let url = `${apiEndpoint}/inactive_reasons`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleListCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/list_categories`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getListCategories({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleListCategory.canInclude;
    let url = `${apiEndpoint}/list_categories`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleList] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists`
  /// 
  /// Available Query Filters:
  /// - `can_manage`
  /// - `recently_viewed`
  /// - `starred`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLists({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleList.canInclude;
    let url = `${apiEndpoint}/lists`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleMaritalStatu] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/marital_statuses`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getMaritalStatuses({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleMaritalStatu.canInclude;
    let url = `${apiEndpoint}/marital_statuses`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleMessageGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/message_groups`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getMessageGroups({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleMessageGroup.canInclude;
    let url = `${apiEndpoint}/message_groups`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleMessage] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/messages`
  /// 
  /// Available Query Filters:
  /// - `created_after`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getMessages({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleMessage.canInclude;
    let url = `${apiEndpoint}/messages`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNamePrefix] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/name_prefixes`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getNamePrefixes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNamePrefix.canInclude;
    let url = `${apiEndpoint}/name_prefixes`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNameSuffix] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/name_suffixes`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getNameSuffixes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNameSuffix.canInclude;
    let url = `${apiEndpoint}/name_suffixes`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNoteCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_categories`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getNoteCategories({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNoteCategory.canInclude;
    let url = `${apiEndpoint}/note_categories`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNoteCategorySubscription] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_category_subscriptions`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getNoteCategorySubscriptions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNoteCategorySubscription.canInclude;
    let url = `${apiEndpoint}/note_category_subscriptions`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/notes`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getNotes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNote.canInclude;
    let url = `${apiEndpoint}/notes`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people`
  /// 
  /// Available Query Filters:
  /// - `admins`
  /// - `created_since`
  /// filter people created in the last 24 hours; pass an additional `time` parameter in ISO 8601 format to specify your own timeframe
  /// 
  /// - `organization_admins`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPeople({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/people`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePeopleImport] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people_imports`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPeopleImports({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePeopleImport.canInclude;
    let url = `${apiEndpoint}/people_imports`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePersonMerger] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/person_mergers`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPersonMergers({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePersonMerger.canInclude;
    let url = `${apiEndpoint}/person_mergers`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleReport] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/reports`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getReports({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleReport.canInclude;
    let url = `${apiEndpoint}/reports`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/school_options`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSchoolOptions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    let url = `${apiEndpoint}/school_options`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleSocialProfile] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/social_profiles`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSocialProfiles({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleSocialProfile.canInclude;
    let url = `${apiEndpoint}/social_profiles`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleOrganizationStatistic] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/stats`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getStats({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleOrganizationStatistic.canInclude;
    let url = `${apiEndpoint}/stats`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/tabs`
  /// 
  /// Available Query Filters:
  /// - `with_field_definitions`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTabs({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleTab.canInclude;
    let url = `${apiEndpoint}/tabs`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflow] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows`
  /// 
  /// Available Query Filters:
  /// - `only_deleted`
  /// - `with_deleted`
  /// - `with_recoverable`
  /// - `with_steps`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getWorkflows({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflow.canInclude;
    let url = `${apiEndpoint}/workflows`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
