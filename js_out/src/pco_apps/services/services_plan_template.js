/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.467259
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services PlanTemplate Object
/// 
/// - Application:        services
/// - Id:                 plan_template
/// - Type:               PlanTemplate
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates
/// 
/// Description:
/// A PlanTemplate Resource
/// 
/// Example:
/// ```json
/// {
///   "type": "PlanTemplate",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "item_count": 1,
///     "team_count": 1,
///     "note_count": 1,
///     "can_view_order": true,
///     "multi_day": true,
///     "prefers_order_view": true,
///     "rehearsable": true
///   },
///   "relationships": {
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     },
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "updated_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
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
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `item_count`: (URLParameter), prefix with a hyphen (-item_count) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `note_count`: (URLParameter), prefix with a hyphen (-note_count) to reverse the order
/// - `team_count`: (URLParameter), prefix with a hyphen (-team_count) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `item-plantemplate-items`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/items
/// - `plannote-plantemplate-notes`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes
/// 
/// All Inbound Edges:
/// - `plantemplate-servicetype-plan_templates`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates
/// 
/// All Actions:
/// - `item_reorder`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/item_reorder
///
export class PcoServicesPlanTemplate extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'PlanTemplate';
  static kTypeId = 'plan_template';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'plantemplate-servicetype-plan_templates';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `item_count`: (URLParameter), prefix with a hyphen (-item_count) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `note_count`: (URLParameter), prefix with a hyphen (-note_count) to reverse the order
  /// - `team_count`: (URLParameter), prefix with a hyphen (-team_count) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','item_count','name','note_count','team_count','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesPlanTemplate.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesPlanTemplate.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesPlanTemplate.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kItemCount() { return 'item_count' }
  static get kTeamCount() { return 'team_count' }
  static get kNoteCount() { return 'note_count' }
  static get kCanViewOrder() { return 'can_view_order' }
  static get kMultiDay() { return 'multi_day' }
  static get kPrefersOrderView() { return 'prefers_order_view' }
  static get kRehearsable() { return 'rehearsable' }


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
  get itemCount() { return attributes[this.constructor.kItemCount] ?? 0; }
  get teamCount() { return attributes[this.constructor.kTeamCount] ?? 0; }
  get noteCount() { return attributes[this.constructor.kNoteCount] ?? 0; }
  get isCanViewOrder() { return attributes[this.constructor.kCanViewOrder] == true; }
  get isMultiDay() { return attributes[this.constructor.kMultiDay] == true; }
  get isPrefersOrderView() { return attributes[this.constructor.kPrefersOrderView] == true; }
  get isRehearsable() { return attributes[this.constructor.kRehearsable] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesPlanTemplate._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesPlanTemplate({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanTemplate] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plan_templates`
  static getFromServiceType(serviceTypeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanTemplate.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plan_templates`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/items`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getItems({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    let url = `${apiEndpoint}/items`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getNotes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanNote.canInclude;
    let url = `${apiEndpoint}/notes`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `item_reorder`
  /// 
  /// Reorder plan template items in one request.
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/item_reorder`
  /// 
  /// Details:
  /// This can be used to reorder all items in a plan template in one request.
  /// 
  /// It expects a `POST` body with a `sequence` of `Item` ids in order.  E.G.
  /// 
  /// ```json
  /// {
  ///   "data": {
  ///     "type": "PlanItemReorder",
  ///     "attributes": {
  ///       "sequence": [
  ///         "5",
  ///         "1",
  ///         "3"
  ///       ]
  ///     }
  ///   }
  /// }
  /// ```
  /// 
  /// On success you will get back a `204 No Content`.
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  itemReorder(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/item_reorder`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
