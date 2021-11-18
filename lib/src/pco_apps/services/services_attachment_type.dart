/// This file was generated on 2021-11-18T15:28:01.680822


import '../../pco.dart';

/// This class represents a PCO Services AttachmentType Object
/// 
/// Application: services
/// Id:          attachment_type
/// Type:        AttachmentType
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// Create an Attachment Type for each type of file you might want only specific people to see. When you attach a file, you can specify an attachment type to then be able to link the file to a position.
/// 
/// Example:
/// 
/// {"type":"AttachmentType","id":"1","attributes":{"name":"string","aliases":"string","capoed_chord_charts":true,"chord_charts":true,"exclusions":"string","lyrics":true,"number_charts":true,"numeral_charts":true,"built_in":true},"relationships":{"attachment_type_group":{"data":{"type":"AttachmentTypeGroup","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/attachment_types
/// 
class PcoServicesAttachmentType extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'AttachmentType';
  static const String kTypeId = 'attachment_type';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'attachmenttype-organization-attachment_types';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/attachment_types';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kName = 'name';
  static const kAliases = 'aliases';
  static const kCapoedChordCharts = 'capoed_chord_charts';
  static const kChordCharts = 'chord_charts';
  static const kExclusions = 'exclusions';
  static const kLyrics = 'lyrics';
  static const kNumberCharts = 'number_charts';
  static const kNumeralCharts = 'numeral_charts';
  static const kBuiltIn = 'built_in';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';
  String get aliases => attributes[kAliases] ?? '';
  bool get isCapoedChordCharts => attributes[kCapoedChordCharts] == true;
  bool get isChordCharts => attributes[kChordCharts] == true;
  String get exclusions => attributes[kExclusions] ?? '';
  bool get isLyrics => attributes[kLyrics] == true;
  bool get isNumberCharts => attributes[kNumberCharts] == true;
  bool get isNumeralCharts => attributes[kNumeralCharts] == true;
  bool get isBuiltIn => attributes[kBuiltIn] == true;




  PcoServicesAttachmentType() : super(kPcoApplication, kTypeString);
  PcoServicesAttachmentType.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoServicesAttachmentType Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/attachment_types;
  static Future<List<PcoServicesAttachmentType>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoServicesAttachmentType> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/attachment_types';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesAttachmentType.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesAttachmentType Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/attachment_types;
  static Future<PcoServicesAttachmentType?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesAttachmentType?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/attachment_types' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesAttachmentType.fromJson(res.data);
    }
    return retval;
  }




}
