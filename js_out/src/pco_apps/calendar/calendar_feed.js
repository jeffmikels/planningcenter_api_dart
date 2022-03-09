/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.168912
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar Feed Object
/// 
/// - Application:        calendar
/// - Id:                 feed
/// - Type:               Feed
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/feeds
/// 
/// Description:
/// A feed belonging to an organization.
/// 
/// Example:
/// ```json
/// {
///   "type": "Feed",
///   "id": "1",
///   "attributes": {
///     "default_church_center_visibility": "value",
///     "feed_type": "value",
///     "name": "string",
///     "imported_at": "2000-01-01T12:00:00Z",
///     "can_delete": true
///   },
///   "relationships": {
///     "event_owner": {
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
/// - `feed_type`: (URLParameter), query on a specific feed_type, example: ?where[feed_type]=value
/// 
/// Possible orderings with parameter ?order=
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `feed-event-feed`: https://api.planningcenteronline.com/calendar/v2/events/1/feed
/// - `feed-organization-feeds`: https://api.planningcenteronline.com/calendar/v2/feeds
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarFeed extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'Feed';
  static kTypeId = 'feed';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'feed-organization-feeds';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/feeds';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/feeds';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `feed_type`: (URLParameter), query on a specific feed_type, example: ?where[feed_type]=value
  static get canQuery() { return ['feed_type'] }

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static get canOrderBy() { return ['name'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarFeed.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarFeed.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarFeed.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kDefaultChurchCenterVisibility() { return 'default_church_center_visibility' }
  static get kFeedType() { return 'feed_type' }
  static get kName() { return 'name' }
  static get kImportedAt() { return 'imported_at' }
  static get kCanDelete() { return 'can_delete' }
  static get kEventOwnerId() { return 'event_owner_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['feed_type','event_owner_id','default_church_center_visibility']; }

  // @override
  get updateAllowed() { return ['event_owner_id','default_church_center_visibility']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get defaultChurchCenterVisibility() { return attributes[this.constructor.kDefaultChurchCenterVisibility] ?? ''; }
  get feedType() { return attributes[this.constructor.kFeedType] ?? ''; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get importedAt() { return Date.parse(attributes[this.constructor.kImportedAt] ?? 0); }
  get isCanDelete() { return attributes[this.constructor.kCanDelete] == true; }
  

  // setters for object attributes

  
  /// Possible values: `hidden` or `published`
  set defaultChurchCenterVisibility(s) {attributes[this.constructor.kDefaultChurchCenterVisibility] = s;}
  
  /// Possible values: `registrations`, `groups`, or `ical`
  set feedType(s) {attributes[this.constructor.kFeedType] = s;}
  

  // additional setters and getters for assignable values

  get eventOwnerId() { return attributes[this.constructor.kEventOwnerId] ?? ''; }
  set eventOwnerId(s) {attributes[this.constructor.kEventOwnerId] = s;}
  



  // Class Constructors
  // PcoCalendarFeed._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarFeed({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoCalendarFeed] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/calendar/v2/feeds`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoCalendarFeed.kPcoApplication, PcoCalendarFeed.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/calendar/v2/feeds`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarFeed] objects (expecting many)
  /// using a path like this: `/calendar/v2/feeds`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarFeed.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/feeds`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarFeed] objects (expecting one)
  /// using a path like this: `/calendar/v2/events/${eventId}/feed`
  static getFromEvent(eventId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarFeed.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/events/${eventId}/feed`;
    
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
