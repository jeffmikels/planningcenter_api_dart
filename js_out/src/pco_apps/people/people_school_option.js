/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.019041
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People SchoolOption Object
/// 
/// - Application:        people
/// - Id:                 school_option
/// - Type:               SchoolOption
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/school_options
/// 
/// Description:
/// A school option represents a school name, school type, grades, etc. and can be selected for a person.
/// 
/// Example:
/// ```json
/// {
///   "type": "SchoolOption",
///   "id": "1",
///   "attributes": {
///     "value": "string",
///     "sequence": 1,
///     "beginning_grade": "string",
///     "ending_grade": "string",
///     "school_types": []
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `beginning_grade`: (URLParameter), query on a specific beginning_grade, example: ?where[beginning_grade]=string
/// - `ending_grade`: (URLParameter), query on a specific ending_grade, example: ?where[ending_grade]=string
/// - `school_types`: (URLParameter), query on a specific school_types, example: ?where[school_types]=[]
/// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
/// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
/// 
/// Possible orderings with parameter ?order=
/// - `beginning_grade`: (URLParameter), prefix with a hyphen (-beginning_grade) to reverse the order
/// - `ending_grade`: (URLParameter), prefix with a hyphen (-ending_grade) to reverse the order
/// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
///
/// All Outbound Edges:
/// - `schooloption-schooloption-promotes_to_school`: https://api.planningcenteronline.com/people/v2/school_options/1/promotes_to_school
/// 
/// All Inbound Edges:
/// - `schooloption-organization-school_options`: https://api.planningcenteronline.com/people/v2/school_options
/// - `schooloption-person-school`: https://api.planningcenteronline.com/people/v2/people/1/school
/// - `schooloption-schooloption-promotes_to_school`: https://api.planningcenteronline.com/people/v2/school_options/1/promotes_to_school
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleSchoolOption extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'SchoolOption';
  static kTypeId = 'school_option';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'schooloption-organization-school_options';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/school_options';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/school_options';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `beginning_grade`: (URLParameter), query on a specific beginning_grade, example: ?where[beginning_grade]=string
  /// - `ending_grade`: (URLParameter), query on a specific ending_grade, example: ?where[ending_grade]=string
  /// - `school_types`: (URLParameter), query on a specific school_types, example: ?where[school_types]=[]
  /// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
  /// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
  static get canQuery() { return ['beginning_grade','ending_grade','school_types','sequence','value'] }

  /// possible orderings with parameter ?order=
  /// - `beginning_grade`: (URLParameter), prefix with a hyphen (-beginning_grade) to reverse the order
  /// - `ending_grade`: (URLParameter), prefix with a hyphen (-ending_grade) to reverse the order
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
  static get canOrderBy() { return ['beginning_grade','ending_grade','sequence','value'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleSchoolOption.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleSchoolOption.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleSchoolOption.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kValue() { return 'value' }
  static get kSequence() { return 'sequence' }
  static get kBeginningGrade() { return 'beginning_grade' }
  static get kEndingGrade() { return 'ending_grade' }
  static get kSchoolTypes() { return 'school_types' }


  // getters and setters
  // @override
  get createAllowed() { return ['value','sequence','beginning_grade','ending_grade','school_types']; }

  // @override
  get updateAllowed() { return ['value','sequence','beginning_grade','ending_grade','school_types']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get value() { return attributes[this.constructor.kValue] ?? ''; }
  get sequence() { return attributes[this.constructor.kSequence] ?? 0; }
  get beginningGrade() { return attributes[this.constructor.kBeginningGrade] ?? ''; }
  get endingGrade() { return attributes[this.constructor.kEndingGrade] ?? ''; }
  get schoolTypes() { return attributes[this.constructor.kSchoolTypes] ?? []; }
  

  // setters for object attributes

  set value(s) {attributes[this.constructor.kValue] = s;}
  set sequence(n) { attributes[this.constructor.kSequence] = n; }
  set beginningGrade(s) {attributes[this.constructor.kBeginningGrade] = s;}
  set endingGrade(s) {attributes[this.constructor.kEndingGrade] = s;}
  set schoolTypes(a) { attributes[this.constructor.kSchoolTypes] = a; }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleSchoolOption._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleSchoolOption({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleSchoolOption] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/school_options`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeopleSchoolOption.kPcoApplication, PcoPeopleSchoolOption.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/school_options`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `/people/v2/school_options`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/school_options`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/school`
  static getSchoolFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/school`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `/people/v2/school_options/${schoolOptionId}/promotes_to_school`
  static getPromotesToSchoolFromSchoolOption(schoolOptionId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/school_options/${schoolOptionId}/promotes_to_school`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleSchoolOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/school_options/1/promotes_to_school`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPromotesToSchool({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleSchoolOption.canInclude;
    let url = `${apiEndpoint}/promotes_to_school`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
