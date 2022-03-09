/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.503303
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services TagGroup Object
/// 
/// - Application:        services
/// - Id:                 tag_group
/// - Type:               TagGroup
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/tag_groups
/// 
/// Description:
/// A tag group contains tags
/// 
/// Example:
/// ```json
/// {
///   "type": "TagGroup",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "required": true,
///     "allow_multiple_selections": true,
///     "tags_for": "string",
///     "service_type_folder_name": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - folder: include associated folder 
/// - tags: include associated tags 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `tags_for`: (URLParameter), query on a specific tags_for, example: ?where[tags_for]=string
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `folder-taggroup-folder`: https://api.planningcenteronline.com/services/v2/tag_groups/1/folder
/// - `tag-taggroup-tags`: https://api.planningcenteronline.com/services/v2/tag_groups/1/tags
/// 
/// All Inbound Edges:
/// - `taggroup-organization-tag_groups`: https://api.planningcenteronline.com/services/v2/tag_groups
/// 
/// All Actions:
/// NONE
///
export class PcoServicesTagGroup extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'TagGroup';
  static kTypeId = 'tag_group';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'taggroup-organization-tag_groups';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/tag_groups';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/tag_groups';

  /// possible includes with parameter ?include=a,b
  /// - `folder`: include associated folder 
  /// - `tags`: include associated tags 
  static get canInclude() { return ['folder','tags'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `tags_for`: (URLParameter), query on a specific tags_for, example: ?where[tags_for]=string
  static get canQuery() { return ['name','tags_for'] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesTagGroup.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesTagGroup.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesTagGroup.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kRequired() { return 'required' }
  static get kAllowMultipleSelections() { return 'allow_multiple_selections' }
  static get kTagsFor() { return 'tags_for' }
  static get kServiceTypeFolderName() { return 'service_type_folder_name' }


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
  get isRequired() { return attributes[this.constructor.kRequired] == true; }
  get isAllowMultipleSelections() { return attributes[this.constructor.kAllowMultipleSelections] == true; }
  get tagsFor() { return attributes[this.constructor.kTagsFor] ?? ''; }
  get serviceTypeFolderName() { return attributes[this.constructor.kServiceTypeFolderName] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesTagGroup._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesTagGroup({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTagGroup] objects (expecting many)
  /// using a path like this: `/services/v2/tag_groups`
  /// 
  /// Available Query Filters:
  /// - `arrangement`
  /// - `media`
  /// - `person`
  /// - `song`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTagGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/tag_groups`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesFolder] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/tag_groups/1/folder`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFolder({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    let url = `${apiEndpoint}/folder`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/tag_groups/1/tags`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTags({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTag.canInclude;
    let url = `${apiEndpoint}/tags`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
