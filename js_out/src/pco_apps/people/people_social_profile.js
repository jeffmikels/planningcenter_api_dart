/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.044380
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People SocialProfile Object
/// 
/// - Application:        people
/// - Id:                 social_profile
/// - Type:               SocialProfile
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/social_profiles
/// 
/// Description:
/// A social profile represents a members's Twitter, Facebook, or other social media account.
/// 
/// Example:
/// ```json
/// {
///   "type": "SocialProfile",
///   "id": "1",
///   "attributes": {
///     "site": "string",
///     "url": "string",
///     "verified": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `site`: (URLParameter), query on a specific site, example: ?where[site]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// - `url`: (URLParameter), query on a specific url, example: ?where[url]=string
/// - `verified`: (URLParameter), query on a specific verified, example: ?where[verified]=true
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `site`: (URLParameter), prefix with a hyphen (-site) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
/// - `url`: (URLParameter), prefix with a hyphen (-url) to reverse the order
/// - `verified`: (URLParameter), prefix with a hyphen (-verified) to reverse the order
///
/// All Outbound Edges:
/// - `person-socialprofile-person`: https://api.planningcenteronline.com/people/v2/social_profiles/1/person
/// 
/// All Inbound Edges:
/// - `socialprofile-organization-social_profiles`: https://api.planningcenteronline.com/people/v2/social_profiles
/// - `socialprofile-person-social_profiles`: https://api.planningcenteronline.com/people/v2/people/1/social_profiles
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleSocialProfile extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'SocialProfile';
  static kTypeId = 'social_profile';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'socialprofile-organization-social_profiles';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/social_profiles';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/social_profiles';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person 
  static get canInclude() { return ['person'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `site`: (URLParameter), query on a specific site, example: ?where[site]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  /// - `url`: (URLParameter), query on a specific url, example: ?where[url]=string
  /// - `verified`: (URLParameter), query on a specific verified, example: ?where[verified]=true
  static get canQuery() { return ['created_at','site','updated_at','url','verified'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `site`: (URLParameter), prefix with a hyphen (-site) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  /// - `url`: (URLParameter), prefix with a hyphen (-url) to reverse the order
  /// - `verified`: (URLParameter), prefix with a hyphen (-verified) to reverse the order
  static get canOrderBy() { return ['created_at','site','updated_at','url','verified'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleSocialProfile.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleSocialProfile.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleSocialProfile.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kSite() { return 'site' }
  static get kUrl() { return 'url' }
  static get kVerified() { return 'verified' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }


  // getters and setters
  // @override
  get createAllowed() { return ['site','url','verified']; }

  // @override
  get updateAllowed() { return ['site','url','verified']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get site() { return attributes[this.constructor.kSite] ?? ''; }
  get url() { return attributes[this.constructor.kUrl] ?? ''; }
  get isVerified() { return attributes[this.constructor.kVerified] == true; }
  

  // setters for object attributes

  set site(s) {attributes[this.constructor.kSite] = s;}
  set url(s) {attributes[this.constructor.kUrl] = s;}
  set isVerified(b) { attributes[this.constructor.kVerified] = b; }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleSocialProfile._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleSocialProfile({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleSocialProfile] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/social_profiles`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeopleSocialProfile.kPcoApplication, PcoPeopleSocialProfile.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/social_profiles`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleSocialProfile] objects (expecting many)
  /// using a path like this: `/people/v2/social_profiles`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleSocialProfile.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/social_profiles`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleSocialProfile] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/social_profiles`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleSocialProfile.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/social_profiles`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/social_profiles/1/person`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPerson({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/person`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
