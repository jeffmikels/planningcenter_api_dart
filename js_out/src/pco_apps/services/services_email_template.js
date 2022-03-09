/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.337303
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services EmailTemplate Object
/// 
/// - Application:        services
/// - Id:                 email_template
/// - Type:               EmailTemplate
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/email_templates
/// 
/// Description:
/// A EmailTemplate Resource
/// 
/// Example:
/// ```json
/// {
///   "type": "EmailTemplate",
///   "id": "1",
///   "attributes": {
///     "kind": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "html_body": "string",
///     "subject": "string"
///   },
///   "relationships": {
///     "template_owner": {
///       "data": {
///         "type": "Organization",
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
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `emailtemplate-organization-email_templates`: https://api.planningcenteronline.com/services/v2/email_templates
/// 
/// All Actions:
/// - `render`: https://api.planningcenteronline.com/services/v2/email_templates/1/render
///
export class PcoServicesEmailTemplate extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'EmailTemplate';
  static kTypeId = 'email_template';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'emailtemplate-organization-email_templates';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/email_templates';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/email_templates';

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
  get shortestEdgePath() { return PcoServicesEmailTemplate.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesEmailTemplate.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesEmailTemplate.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kKind() { return 'kind' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kHtmlBody() { return 'html_body' }
  static get kSubject() { return 'subject' }


  // getters and setters
  // @override
  get createAllowed() { return ['html_body','subject','kind']; }

  // @override
  get updateAllowed() { return ['html_body','subject']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get kind() { return attributes[this.constructor.kKind] ?? ''; }
  get htmlBody() { return attributes[this.constructor.kHtmlBody] ?? ''; }
  get subject() { return attributes[this.constructor.kSubject] ?? ''; }
  

  // setters for object attributes

  set kind(s) {attributes[this.constructor.kKind] = s;}
  set htmlBody(s) {attributes[this.constructor.kHtmlBody] = s;}
  set subject(s) {attributes[this.constructor.kSubject] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesEmailTemplate._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesEmailTemplate({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesEmailTemplate] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/email_templates`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoServicesEmailTemplate.kPcoApplication, PcoServicesEmailTemplate.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/email_templates`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesEmailTemplate] objects (expecting many)
  /// using a path like this: `/services/v2/email_templates`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesEmailTemplate.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/email_templates`;
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

  /// ACTION: `render`
  /// 
  /// Render an email template and fill in the persons details
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/email_templates/1/render`
  /// 
  /// Details:
  /// Render the template with information from the person.
  /// 
  /// ```json
  /// {
  ///   "data": {
  ///     "attributes": {
  ///       "format": "html|text"
  ///     },
  ///     "relationships": {
  ///       "person": {
  ///         "data": {
  ///           "type": "Person",
  ///           "id": "1"
  ///         }
  ///       }
  ///     }
  ///   }
  /// }
  /// ```
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  render(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/render`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
