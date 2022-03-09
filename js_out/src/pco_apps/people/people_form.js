/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.829837
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People Form Object
/// 
/// - Application:        people
/// - Id:                 form
/// - Type:               Form
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/forms
/// 
/// Description:
/// A custom form for people to fill out.
/// 
/// Example:
/// ```json
/// {
///   "type": "Form",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "description": "string",
///     "active": true,
///     "archived_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "deleted_at": "2000-01-01T12:00:00Z",
///     "submission_count": 1,
///     "public_url": "string",
///     "recently_viewed": true,
///     "archived": true
///   },
///   "relationships": {
///     "campus": {
///       "data": {
///         "type": "Campus",
///         "id": "1"
///       }
///     },
///     "form_category": {
///       "data": {
///         "type": "FormCategory",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - campus: include associated campus 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `active`: (URLParameter), query on a specific active, example: ?where[active]=true
/// 
/// Possible orderings with parameter ?order=
/// - `active`: (URLParameter), prefix with a hyphen (-active) to reverse the order
/// - `archived_at`: (URLParameter), prefix with a hyphen (-archived_at) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `deleted_at`: (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
/// - `description`: (URLParameter), prefix with a hyphen (-description) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `campus-form-campus`: https://api.planningcenteronline.com/people/v2/forms/1/campus
/// - `formfield-form-fields`: https://api.planningcenteronline.com/people/v2/forms/1/fields
/// - `formsubmission-form-form_submissions`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions
/// 
/// All Inbound Edges:
/// - `form-organization-forms`: https://api.planningcenteronline.com/people/v2/forms
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleForm extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'Form';
  static kTypeId = 'form';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'form-organization-forms';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/forms';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/forms';

  /// possible includes with parameter ?include=a,b
  /// - `campus`: include associated campus 
  static get canInclude() { return ['campus'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `active`: (URLParameter), query on a specific active, example: ?where[active]=true
  static get canQuery() { return ['active'] }

  /// possible orderings with parameter ?order=
  /// - `active`: (URLParameter), prefix with a hyphen (-active) to reverse the order
  /// - `archived_at`: (URLParameter), prefix with a hyphen (-archived_at) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `deleted_at`: (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
  /// - `description`: (URLParameter), prefix with a hyphen (-description) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['active','archived_at','created_at','deleted_at','description','name','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleForm.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleForm.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleForm.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kDescription() { return 'description' }
  static get kActive() { return 'active' }
  static get kArchivedAt() { return 'archived_at' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kDeletedAt() { return 'deleted_at' }
  static get kSubmissionCount() { return 'submission_count' }
  static get kPublicUrl() { return 'public_url' }
  static get kRecentlyViewed() { return 'recently_viewed' }
  static get kArchived() { return 'archived' }


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
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get isActive() { return attributes[this.constructor.kActive] == true; }
  get archivedAt() { return Date.parse(attributes[this.constructor.kArchivedAt] ?? 0); }
  get deletedAt() { return Date.parse(attributes[this.constructor.kDeletedAt] ?? 0); }
  get submissionCount() { return attributes[this.constructor.kSubmissionCount] ?? 0; }
  get publicUrl() { return attributes[this.constructor.kPublicUrl] ?? ''; }
  get isRecentlyViewed() { return attributes[this.constructor.kRecentlyViewed] == true; }
  get isArchived() { return attributes[this.constructor.kArchived] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleForm._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleForm({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleForm] objects (expecting many)
  /// using a path like this: `/people/v2/forms`
  /// 
  /// Available Query Filters:
  /// - `archived`
  /// - `closed`
  /// - `not_archived`
  /// - `open`
  /// - `recently_viewed`
  /// - `with_recoverable`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleForm.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/forms`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleCampus] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/campus`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCampus({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    let url = `${apiEndpoint}/campus`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFormField] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/fields`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFields({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFormField.canInclude;
    let url = `${apiEndpoint}/fields`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFormSubmission] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/form_submissions`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFormSubmissions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFormSubmission.canInclude;
    let url = `${apiEndpoint}/form_submissions`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
