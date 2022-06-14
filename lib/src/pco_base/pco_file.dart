part of pco;

// import 'pco_api_base.dart';

/// This class represents a PCO File Object
///
/// - Application:        NONE
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/note_categories
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `sourceIp` (ro) -> PCO: `source_ip`
/// - `md5` (ro) -> PCO: `md5`
/// - `contentType` (ro) -> PCO: `content_type`
/// - `fileSize` (ro) -> PCO: `file_size`
/// - `name` (ro) -> PCO: `name`
/// - `expiresAt` (ro) -> PCO: `expires_at`
///
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "data": [
///     {
///       "type": "File",
///       "id": "us1-16207df7-b6cc-4abe-ca1a-306c6f7e423d",
///       "attributes": {
///         "source_ip": "70.128.100.145",
///         "md5": "e178604e5083cc23782f34650a49b025",
///         "content_type": "image/png",
///         "file_size": 48341,
///         "name": "file.png",
///         "expires_at": "2016-05-23T23:13:32Z"
///       }
///     }
///   ]
/// }
/// ```
class PlanningCenterApiFile extends PlanningCenterApiData {
  static const String kTypeString = 'File';
  static const String kTypeId = 'file';
  static const String kDefaultPathTemplate =
      'https://upload.planningcenteronline.com/v2/files';
  static const String kCreatePathTemplate =
      'https://upload.planningcenteronline.com/v2/files';

  // field mapping constants
  static const kName = 'name';
  static const kSourceIp = 'source_ip';
  static const kMd5 = 'md5';
  static const kContentType = 'content_type';
  static const kFileSize = 'file_size';
  static const kExpiresAt = 'expires_at';

  // getters for object attributes
  String get name => attributes[kName] ?? '';
  String get sourceIp => attributes[kSourceIp] ?? '';
  String get md5 => attributes[kMd5] ?? '';
  String get contentType => attributes[kContentType] ?? '';
  int get fileSize => attributes[kFileSize] ?? 0;
  DateTime get expiresAt => DateTime.parse(attributes[kExpiresAt] ?? '0');

  // setters for object attributes
  set name(String x) => attributes[kName] = x;
  set sourceIp(String x) => attributes[kSourceIp] = x;
  set md5(String x) => attributes[kMd5] = x;
  set contentType(String x) => attributes[kContentType] = x;
  set fileSize(int x) => attributes[kFileSize] = x;
  set expiresAt(DateTime x) => attributes[kExpiresAt] = x.toIso8601String();

  /// Create a new [PlanningCenterApiFile] object from a local file:
  /// It will not be uploaded until `upload` is called;
  PlanningCenterApiFile._() : super('File');
  PlanningCenterApiFile.fromJson(Map data) : super('File') {
    fromJson(data);
  }

  /// Will attempt to upload a file.
  /// If the upload is successful, the [items] in the `PlanningCenterApiResponse`
  /// will contain a `PlanningCenterApiFile` with its fields (like `id`) set.
  static Future<PlanningCenterApiResponse<PlanningCenterApiFile>> upload(
      String filename) async {
    var res = await PlanningCenter.instance.upload(filename);
    if (res.isError)
      return res.withData<PlanningCenterApiFile>([PlanningCenterApiFile._()]);
    var data = PlanningCenterApiFile.fromJson(res.data.first.asMap);
    return res.withData<PlanningCenterApiFile>([data]);
  }

  void fromJson(Map data) {
    id = data['id'];
    name = data['attributes']?[kName] ?? '';
    sourceIp = data['attributes']?[kSourceIp] ?? '';
    md5 = data['attributes']?[kMd5] ?? '';
    contentType = data['attributes']?[kContentType] ?? '';
    fileSize = data['attributes']?[kFileSize] ?? '';
    expiresAt = data['attributes']?[kExpiresAt] ?? '';
  }
}
