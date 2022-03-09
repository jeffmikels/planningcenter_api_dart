/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.508761
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services TextSetting Object
/// 
/// - Application:        services
/// - Id:                 text_setting
/// - Type:               TextSetting
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/text_settings
/// 
/// Description:
/// 
/// 
/// Example:
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
/// NONE
/// 
/// All Inbound Edges:
/// - `textsetting-person-text_settings`: https://api.planningcenteronline.com/services/v2/people/1/text_settings
/// 
/// All Actions:
/// NONE
///
export class PcoServicesTextSetting extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'TextSetting';
  static kTypeId = 'text_setting';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'textsetting-person-text_settings';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/text_settings';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/text_settings';

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
  get shortestEdgePath() { return PcoServicesTextSetting.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesTextSetting.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesTextSetting.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kSchedulingRequestsEnabled() { return 'scheduling_requests_enabled' }
  static get kGeneralEmailsEnabled() { return 'general_emails_enabled' }
  static get kSchedulingRepliesEnabled() { return 'scheduling_replies_enabled' }
  static get kRemindersEnabled() { return 'reminders_enabled' }
  static get kCarrier() { return 'carrier' }
  static get kDisplayNumber() { return 'display_number' }
  static get kNormalizedNumber() { return 'normalized_number' }


  // getters and setters
  // @override
  get createAllowed() { return []; }

  // @override
  get updateAllowed() { return ['general_emails_enabled','reminders_enabled','scheduling_replies_enabled','scheduling_requests_enabled']; }

  // @override
  get canCreate() { return false; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get isSchedulingRequestsEnabled() { return attributes[this.constructor.kSchedulingRequestsEnabled] == true; }
  get isGeneralEmailsEnabled() { return attributes[this.constructor.kGeneralEmailsEnabled] == true; }
  get isSchedulingRepliesEnabled() { return attributes[this.constructor.kSchedulingRepliesEnabled] == true; }
  get isRemindersEnabled() { return attributes[this.constructor.kRemindersEnabled] == true; }
  get carrier() { return attributes[this.constructor.kCarrier] ?? ''; }
  get displayNumber() { return attributes[this.constructor.kDisplayNumber] ?? ''; }
  get normalizedNumber() { return attributes[this.constructor.kNormalizedNumber] ?? ''; }
  

  // setters for object attributes

  set isSchedulingRequestsEnabled(b) { attributes[this.constructor.kSchedulingRequestsEnabled] = b; }
  set isGeneralEmailsEnabled(b) { attributes[this.constructor.kGeneralEmailsEnabled] = b; }
  set isSchedulingRepliesEnabled(b) { attributes[this.constructor.kSchedulingRepliesEnabled] = b; }
  set isRemindersEnabled(b) { attributes[this.constructor.kRemindersEnabled] = b; }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesTextSetting._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesTextSetting({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTextSetting] objects (expecting many)
  /// using a path like this: `/services/v2/people/${peopleId}/text_settings`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTextSetting.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/text_settings`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
