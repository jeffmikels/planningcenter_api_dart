/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.845830
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People MailchimpSyncStatus Object
/// 
/// - Application:        people
/// - Id:                 mailchimp_sync_status
/// - Type:               MailchimpSyncStatus
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status
/// 
/// Description:
/// The status of syncing a List with Mailchimp.
/// 
/// Example:
/// ```json
/// {
///   "type": "MailchimpSyncStatus",
///   "id": "1",
///   "attributes": {
///     "status": "string",
///     "error": "string",
///     "progress": 1,
///     "completed_at": "2000-01-01T12:00:00Z",
///     "segment_id": 1
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
/// - `mailchimpsyncstatus-list-mailchimp_sync_status`: https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleMailchimpSyncStatu extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'MailchimpSyncStatus';
  static kTypeId = 'mailchimp_sync_status';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'mailchimpsyncstatus-list-mailchimp_sync_status';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status';

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
  get shortestEdgePath() { return PcoPeopleMailchimpSyncStatu.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleMailchimpSyncStatu.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleMailchimpSyncStatu.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kStatus() { return 'status' }
  static get kError() { return 'error' }
  static get kProgress() { return 'progress' }
  static get kCompletedAt() { return 'completed_at' }
  static get kSegmentId() { return 'segment_id' }


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

  get status() { return attributes[this.constructor.kStatus] ?? ''; }
  get error() { return attributes[this.constructor.kError] ?? ''; }
  get progress() { return attributes[this.constructor.kProgress] ?? 0; }
  get completedAt() { return Date.parse(attributes[this.constructor.kCompletedAt] ?? 0); }
  get segmentId() { return attributes[this.constructor.kSegmentId] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleMailchimpSyncStatu._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleMailchimpSyncStatu({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleMailchimpSyncStatu] objects (expecting many)
  /// using a path like this: `/people/v2/lists/${listId}/mailchimp_sync_status`
  static getMailchimpSyncStatusFromList(listId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleMailchimpSyncStatu.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/lists/${listId}/mailchimp_sync_status`;
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
