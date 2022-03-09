/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.322884
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services AttachmentType Object
/// 
/// - Application:        services
/// - Id:                 attachment_type
/// - Type:               AttachmentType
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/attachment_types
/// 
/// Description:
/// Create an Attachment Type for each type of file you might want only specific people to see. When you attach a file, you can specify an attachment type to then be able to link the file to a position.
/// 
/// Example:
/// ```json
/// {
///   "type": "AttachmentType",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "aliases": "string",
///     "capoed_chord_charts": true,
///     "chord_charts": true,
///     "exclusions": "string",
///     "lyrics": true,
///     "number_charts": true,
///     "numeral_charts": true,
///     "built_in": true
///   },
///   "relationships": {
///     "attachment_type_group": {
///       "data": {
///         "type": "AttachmentTypeGroup",
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
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `attachmenttype-organization-attachment_types`: https://api.planningcenteronline.com/services/v2/attachment_types
/// 
/// All Actions:
/// NONE
///
export class PcoServicesAttachmentType extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'AttachmentType';
  static kTypeId = 'attachment_type';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'attachmenttype-organization-attachment_types';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/attachment_types';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/attachment_types';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static get canOrderBy() { return ['name'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesAttachmentType.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesAttachmentType.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesAttachmentType.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kAliases() { return 'aliases' }
  static get kCapoedChordCharts() { return 'capoed_chord_charts' }
  static get kChordCharts() { return 'chord_charts' }
  static get kExclusions() { return 'exclusions' }
  static get kLyrics() { return 'lyrics' }
  static get kNumberCharts() { return 'number_charts' }
  static get kNumeralCharts() { return 'numeral_charts' }
  static get kBuiltIn() { return 'built_in' }


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
  get aliases() { return attributes[this.constructor.kAliases] ?? ''; }
  get isCapoedChordCharts() { return attributes[this.constructor.kCapoedChordCharts] == true; }
  get isChordCharts() { return attributes[this.constructor.kChordCharts] == true; }
  get exclusions() { return attributes[this.constructor.kExclusions] ?? ''; }
  get isLyrics() { return attributes[this.constructor.kLyrics] == true; }
  get isNumberCharts() { return attributes[this.constructor.kNumberCharts] == true; }
  get isNumeralCharts() { return attributes[this.constructor.kNumeralCharts] == true; }
  get isBuiltIn() { return attributes[this.constructor.kBuiltIn] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesAttachmentType._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesAttachmentType({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachmentType] objects (expecting many)
  /// using a path like this: `/services/v2/attachment_types`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachmentType.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/attachment_types`;
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
