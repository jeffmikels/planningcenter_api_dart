/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.802766
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

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
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/attachments';
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
  static List<String> get canQuery => [
        'content_type',
        'created_at',
        'description',
        'file_size',
        'name',
        'updated_at'
      ];

  /// possible orderings with parameter ?order=
  /// - `content_type`: (URLParameter), prefix with a hyphen (-content_type) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `description`: (URLParameter), prefix with a hyphen (-description) to reverse the order
  /// - `file_size`: (URLParameter), prefix with a hyphen (-file_size) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => [
        'content_type',
        'created_at',
        'description',
        'file_size',
        'name',
        'updated_at'
      ];

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
  String get contentType => attributes[kContentType] ?? '';
  String get description => attributes[kDescription] ?? '';
  int get fileSize => attributes[kFileSize] ?? 0;
  String get name => attributes[kName] ?? '';
  String get url => attributes[kUrl] ?? '';

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  List<T> includedEvent<T extends PcoResource>() =>
      relationships['event']?.cast<T>() ?? [];

  // Class Constructors
  PcoCalendarAttachment.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoCalendarAttachment.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoCalendarAttachment] objects (expecting many)
  /// using a path like this: `/calendar/v2/attachments`
  static Future<PcoCollection<PcoCalendarAttachment>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarAttachment.canInclude;
    var url = '/calendar/v2/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarAttachment] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/$eventId/attachments`
  static Future<PcoCollection<PcoCalendarAttachment>> getFromEvent(
      String eventId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarAttachment.canInclude;
    var url = '/calendar/v2/events/$eventId/attachments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarAttachment>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/attachments/1/event`
  Future<PcoCollection<PcoCalendarEvent>> getEvent(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
