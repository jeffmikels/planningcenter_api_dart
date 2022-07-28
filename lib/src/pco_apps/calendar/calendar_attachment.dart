/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.782547
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// This class represents a PCO Calendar Attachment Object
/// 
/// - Application:        calendar
/// - Id:                 attachment
/// - Type:               Attachment
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/attachments
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCalendarAttachment.fromJson()` constructor.
/// - Manually create an object using the `PcoCalendarAttachment.manual()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
/// 
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
///   
/// ## Description
/// An uploaded file attached to an event.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `contentType` (ro) -> PCO: `content_type`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `description` (ro) -> PCO: `description`
/// - `fileSize` (ro) -> PCO: `file_size`
/// - `name` (ro) -> PCO: `name`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `url` (ro) -> PCO: `url`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `event`: include associated event 
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// - `content_type`: (URLParameter), query on a specific content_type, example: ?where[content_type]=string
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `description`: (URLParameter), query on a specific description, example: ?where[description]=string
/// - `file_size`: (URLParameter), query on a specific file_size, example: ?where[file_size]=1
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// - `content_type`: (URLParameter), prefix with a hyphen (-content_type) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `description`: (URLParameter), prefix with a hyphen (-description) to reverse the order
/// - `file_size`: (URLParameter), prefix with a hyphen (-file_size) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `event-attachment-event`: https://api.planningcenteronline.com/calendar/v2/attachments/1/event
/// 
/// Inbound Edges:
/// - `attachment-event-attachments`: https://api.planningcenteronline.com/calendar/v2/events/1/attachments
/// - `attachment-organization-attachments`: https://api.planningcenteronline.com/calendar/v2/attachments
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Attachment",
///   "id": "1",
///   "attributes": {
///     "content_type": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "description": "string",
///     "file_size": 1,
///     "name": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "url": "string"
///   },
///   "relationships": {
///     "event": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCalendarAttachment extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Attachment';
  static const String kTypeId = 'attachment';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/attachments';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event 
  static List<String> get canInclude => ['event'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `content_type`: (URLParameter), query on a specific content_type, example: ?where[content_type]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `description`: (URLParameter), query on a specific description, example: ?where[description]=string
  /// - `file_size`: (URLParameter), query on a specific file_size, example: ?where[file_size]=1
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['content_type','created_at','description','file_size','name','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `content_type`: (URLParameter), prefix with a hyphen (-content_type) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `description`: (URLParameter), prefix with a hyphen (-description) to reverse the order
  /// - `file_size`: (URLParameter), prefix with a hyphen (-file_size) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['content_type','created_at','description','file_size','name','updated_at'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get createPathTemplate => kCreatePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kContentType = 'content_type';
  static const kCreatedAt = 'created_at';
  static const kDescription = 'description';
  static const kFileSize = 'file_size';
  static const kName = 'name';
  static const kUpdatedAt = 'updated_at';
  static const kUrl = 'url';


  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  String get contentType => _attributes[kContentType] ?? '';
  String get description => _attributes[kDescription] ?? '';
  int get fileSize => _attributes[kFileSize] ?? 0;
  String get name => _attributes[kName] ?? '';
  String get url => _attributes[kUrl] ?? '';
  
  // typed getters for each relationship
  
  PcoCalendarEvent? get includedEvent => _firstOrNull<PcoCalendarEvent>(relationships['event']);

  // Class Constructors
  PcoCalendarAttachment.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCalendarAttachment.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarAttachment] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoCalendarAttachment({String? id, String? contentType, DateTime? createdAt, String? description, int? fileSize, String? name, DateTime? updatedAt, String? url, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoCalendarAttachment.empty();
    obj._id = id;
    if (contentType != null) obj._attributes['content_type'] = contentType;
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();
    if (description != null) obj._attributes['description'] = description;
    if (fileSize != null) obj._attributes['file_size'] = fileSize;
    if (name != null) obj._attributes['name'] = name;
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (url != null) obj._attributes['url'] = url;
    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }
    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }
    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class



  /// Will get a collection of [PcoCalendarAttachment] objects (expecting many)
  /// using a path like this: `/calendar/v2/attachments`
  static Future<PcoCollection<PcoCalendarAttachment>> get( {String? id, PlanningCenterApiQuery? query, bool includeEvent = false,}) async {
    query ??= PlanningCenterApiQuery();
    
    if (includeEvent) query.include.add('event');
    var url = '/calendar/v2/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarAttachment>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarAttachment] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/$eventId/attachments`
  static Future<PcoCollection<PcoCalendarAttachment>> getFromEvent(String eventId, {String? id, PlanningCenterApiQuery? query, bool includeEvent = false,}) async {
    query ??= PlanningCenterApiQuery();
    
    if (includeEvent) query.include.add('event');
    var url = '/calendar/v2/events/$eventId/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarAttachment>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/attachments/1/event`
  Future<PcoCollection<PcoCalendarEvent>> getEvent({PlanningCenterApiQuery? query, bool includeAll = false, bool includeAttachments = false, bool includeOwner = false, bool includeTags = false,}) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarAttachment.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
