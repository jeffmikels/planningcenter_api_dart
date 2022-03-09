/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.487411
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services ServiceType Object
/// 
/// - Application:        services
/// - Id:                 service_type
/// - Type:               ServiceType
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types
/// 
/// Description:
/// A Service Type is a container for plans.
/// 
/// Example:
/// ```json
/// {
///   "type": "ServiceType",
///   "id": "1",
///   "attributes": {
///     "archived_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z",
///     "deleted_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "sequence": 1,
///     "updated_at": "2000-01-01T12:00:00Z",
///     "attachment_types_enabled": true,
///     "background_check_permissions": "string",
///     "comment_permissions": "string",
///     "custom_item_types": "string",
///     "frequency": "string",
///     "last_plan_from": "string",
///     "permissions": "string",
///     "standard_item_types": "string"
///   },
///   "relationships": {
///     "parent": {
///       "data": {
///         "type": "Folder",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - time_preference_options: include associated time_preference_options 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// 
/// Possible orderings with parameter ?order=
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
///
/// All Outbound Edges:
/// - `attachment-servicetype-attachments`: https://api.planningcenteronline.com/services/v2/service_types/1/attachments
/// - `itemnotecategory-servicetype-item_note_categories`: https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories
/// - `layout-servicetype-layouts`: https://api.planningcenteronline.com/services/v2/service_types/1/layouts
/// - `livecontroller-servicetype-live_controllers`: https://api.planningcenteronline.com/services/v2/service_types/1/live_controllers
/// - `plannotecategory-servicetype-plan_note_categories`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories
/// - `plantemplate-servicetype-plan_templates`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates
/// - `plantime-servicetype-plan_times`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_times
/// - `plan-servicetype-plans`: https://api.planningcenteronline.com/services/v2/service_types/1/plans
/// - `publicview-servicetype-public_view`: https://api.planningcenteronline.com/services/v2/service_types/1/public_view
/// - `teamposition-servicetype-team_positions`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions
/// - `team-servicetype-teams`: https://api.planningcenteronline.com/services/v2/service_types/1/teams
/// - `timepreferenceoption-servicetype-time_preference_options`: https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options
/// - `plan-servicetype-unscoped_plans`: https://api.planningcenteronline.com/services/v2/service_types/1/unscoped_plans
/// 
/// All Inbound Edges:
/// - `servicetype-folder-service_types`: https://api.planningcenteronline.com/services/v2/folders/1/service_types
/// - `servicetype-live-service_type`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/service_type
/// - `servicetype-organization-service_types`: https://api.planningcenteronline.com/services/v2/service_types
/// - `servicetype-team-service_type`: https://api.planningcenteronline.com/services/v2/teams/1/service_type
/// 
/// All Actions:
/// - `create_plans`: https://api.planningcenteronline.com/services/v2/service_types/1/create_plans
///
export class PcoServicesServiceType extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'ServiceType';
  static kTypeId = 'service_type';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'servicetype-organization-service_types';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types';

  /// possible includes with parameter ?include=a,b
  /// - `time_preference_options`: include associated time_preference_options 
  static get canInclude() { return ['time_preference_options'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static get canQuery() { return ['id','name'] }

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  static get canOrderBy() { return ['name','sequence'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesServiceType.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesServiceType.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesServiceType.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kArchivedAt() { return 'archived_at' }
  static get kCreatedAt() { return 'created_at' }
  static get kDeletedAt() { return 'deleted_at' }
  static get kName() { return 'name' }
  static get kSequence() { return 'sequence' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kAttachmentTypesEnabled() { return 'attachment_types_enabled' }
  static get kBackgroundCheckPermissions() { return 'background_check_permissions' }
  static get kCommentPermissions() { return 'comment_permissions' }
  static get kCustomItemTypes() { return 'custom_item_types' }
  static get kFrequency() { return 'frequency' }
  static get kLastPlanFrom() { return 'last_plan_from' }
  static get kPermissions() { return 'permissions' }
  static get kStandardItemTypes() { return 'standard_item_types' }
  static get kParentId() { return 'parent_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['attachment_types_enabled','background_check_permissions','comment_permissions','custom_item_types','frequency','last_plan_from','name','parent_id','sequence','standard_item_types']; }

  // @override
  get updateAllowed() { return ['attachment_types_enabled','background_check_permissions','comment_permissions','custom_item_types','frequency','last_plan_from','name','parent_id','sequence','standard_item_types']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get archivedAt() { return Date.parse(attributes[this.constructor.kArchivedAt] ?? 0); }
  get deletedAt() { return Date.parse(attributes[this.constructor.kDeletedAt] ?? 0); }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get sequence() { return attributes[this.constructor.kSequence] ?? 0; }
  get isAttachmentTypesEnabled() { return attributes[this.constructor.kAttachmentTypesEnabled] == true; }
  get backgroundCheckPermissions() { return attributes[this.constructor.kBackgroundCheckPermissions] ?? ''; }
  get commentPermissions() { return attributes[this.constructor.kCommentPermissions] ?? ''; }
  get customItemTypes() { return attributes[this.constructor.kCustomItemTypes] ?? ''; }
  get frequency() { return attributes[this.constructor.kFrequency] ?? ''; }
  get lastPlanFrom() { return attributes[this.constructor.kLastPlanFrom] ?? ''; }
  get permissions() { return attributes[this.constructor.kPermissions] ?? ''; }
  get standardItemTypes() { return attributes[this.constructor.kStandardItemTypes] ?? ''; }
  

  // setters for object attributes

  set name(s) {attributes[this.constructor.kName] = s;}
  set sequence(n) { attributes[this.constructor.kSequence] = n; }
  set isAttachmentTypesEnabled(b) { attributes[this.constructor.kAttachmentTypesEnabled] = b; }
  set backgroundCheckPermissions(s) {attributes[this.constructor.kBackgroundCheckPermissions] = s;}
  set commentPermissions(s) {attributes[this.constructor.kCommentPermissions] = s;}
  
  /// A array of hashes that maps an item title substring matcher to a color:
  /// 
  /// [{ name: "Announcements", color: "#FFFFFF" }]
  /// 
  /// Valid substring matchers are any string that could be used as an item title.
  /// 
  /// A color is the hexadecimal value of a valid color e.g. #FFFFFF
  /// Valid colors values are #e8f6df, #e0f7ff, #e6e2fd, #ffe0e8, #ffedd1, #cfcfcf, #eaebeb, and #ffffff
  set customItemTypes(s) {attributes[this.constructor.kCustomItemTypes] = s;}
  set frequency(s) {attributes[this.constructor.kFrequency] = s;}
  set lastPlanFrom(s) {attributes[this.constructor.kLastPlanFrom] = s;}
  
  /// An array of hashes that maps an item type to a color:
  /// 
  /// [{ name: "Header", color: "#FFFFFF" }]
  /// 
  /// Valid names are Header, Song, and Media.
  /// 
  /// A color is the hexadecimal value of a valid color e.g. #FFFFFF
  /// Valid colors values are #e8f6df, #e0f7ff, #e6e2fd, #ffe0e8, #ffedd1, #cfcfcf, #eaebeb, and #ffffff
  set standardItemTypes(s) {attributes[this.constructor.kStandardItemTypes] = s;}
  

  // additional setters and getters for assignable values

  get parentId() { return attributes[this.constructor.kParentId] ?? ''; }
  set parentId(s) {attributes[this.constructor.kParentId] = s;}
  



  // Class Constructors
  // PcoServicesServiceType._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesServiceType({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesServiceType] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/service_types`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoServicesServiceType.kPcoApplication, PcoServicesServiceType.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/service_types`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesServiceType] objects (expecting many)
  /// using a path like this: `/services/v2/service_types`
  /// 
  /// Available Query Filters:
  /// - `no_parent`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesServiceType] objects (expecting many)
  /// using a path like this: `/services/v2/folders/${folderId}/service_types`
  static getFromFolder(folderId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/folders/${folderId}/service_types`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesServiceType] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/recent_plans/${recentPlanId}/live/${liveId}/service_type`
  static getFromPeopleAndRecentPlanAndLive(peopleId, recentPlanId, liveId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/recent_plans/${recentPlanId}/live/${liveId}/service_type`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesServiceType] objects (expecting one)
  /// using a path like this: `/services/v2/teams/${teamId}/service_type`
  static getFromTeam(teamId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/teams/${teamId}/service_type`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/attachments`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAttachments({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let url = `${apiEndpoint}/attachments`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItemNoteCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getItemNoteCategories({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItemNoteCategory.canInclude;
    let url = `${apiEndpoint}/item_note_categories`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesLayout] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/layouts`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLayouts({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesLayout.canInclude;
    let url = `${apiEndpoint}/layouts`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesLiveController] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/live_controllers`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLiveControllers({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesLiveController.canInclude;
    let url = `${apiEndpoint}/live_controllers`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanNoteCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPlanNoteCategories({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanNoteCategory.canInclude;
    let url = `${apiEndpoint}/plan_note_categories`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanTemplate] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPlanTemplates({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanTemplate.canInclude;
    let url = `${apiEndpoint}/plan_templates`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_times`
  /// 
  /// Available Query Filters:
  /// - `future`
  /// - `named`
  /// - `past`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPlanTimes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    let url = `${apiEndpoint}/plan_times`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlan] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans`
  /// 
  /// Available Query Filters:
  /// - `after`
  /// filter to plans with a time beginning after the `after` parameter
  /// 
  /// - `before`
  /// filter to plans with a time beginning before the `before` parameter
  /// 
  /// - `future`
  /// - `no_dates`
  /// - `past`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPlans({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    let url = `${apiEndpoint}/plans`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPublicView] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/public_view`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPublicView({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPublicView.canInclude;
    let url = `${apiEndpoint}/public_view`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeamPosition] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/team_positions`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTeamPositions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    let url = `${apiEndpoint}/team_positions`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/teams`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTeams({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    let url = `${apiEndpoint}/teams`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTimePreferenceOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTimePreferenceOptions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTimePreferenceOption.canInclude;
    let url = `${apiEndpoint}/time_preference_options`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlan] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/unscoped_plans`
  /// 
  /// Available Query Filters:
  /// - `deleted`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getUnscopedPlans({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    let url = `${apiEndpoint}/unscoped_plans`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `create_plans`
  /// 
  /// Create multiple plans
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/create_plans`
  /// 
  /// Details:
  /// This action provides the abillity to create multiple plans with a single API request.
  /// 
  /// Accepted attributes:
  /// 
  /// - `count` (Integer) The number of plans to create. (max 12, default 1)
  /// 
  /// - `copy_items` (Boolean) Copy Items from another plan. (default false)
  /// 
  /// - `copy_people` (Boolean) Copy People from another plan. (default false)
  /// 
  /// - `team_ids` (Array[Integer]) IDs of teams to copy people from when `copy_people` is set to true.
  ///   If nil, `copy_people` copies from all teams. (default nil)
  /// 
  /// - `copy_notes` (Boolean) Copy Notes from another plan. (default false)
  /// 
  /// - `as_template` (Boolean) Create the new plans as templates (default false)
  /// 
  /// - `base_date` (ISO 8601 Date) The date from which to start building the plans. (default false)
  /// 
  /// Accepted Relationships
  /// 
  /// - `plan` (optional) The plan from which to copy times, items, people, and notes
  /// 
  /// - `template` (optional) Collection of templates from which to copy items, people, and notes (not times) for each new plan.
  ///   Order dependant. Takes precedence over `plan`.
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  createPlans(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/create_plans`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
