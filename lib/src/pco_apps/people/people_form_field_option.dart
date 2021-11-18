/// This file was generated on 2021-11-18T15:28:02.038105


import '../../pco.dart';

/// This class represents a PCO People FormFieldOption Object
/// 
/// Application: people
/// Id:          form_field_option
/// Type:        FormFieldOption
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A field option on a custom form field.
/// 
/// Example:
/// 
/// {"type":"FormFieldOption","id":"1","attributes":{"label":"string","sequence":1,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{"form_field":{"data":{"type":"FormField","id":"1"}},"optionable":{"data":{"type":"Optionable","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/forms/1/fields/1/options
/// 
class PcoPeopleFormFieldOption extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FormFieldOption';
  static const String kTypeId = 'form_field_option';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'formfieldoption-formfield-options';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/fields/1/options';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kLabel = 'label';
  static const kSequence = 'sequence';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get label => attributes[kLabel] ?? '';
  int get sequence => attributes[kSequence] ?? 0;




  PcoPeopleFormFieldOption() : super(kPcoApplication, kTypeString);
  PcoPeopleFormFieldOption.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleFormFieldOption Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/fields/1/options;
  static Future<List<PcoPeopleFormFieldOption>> getManyFromFormAndFieldAndOptionIds(String formId,String fieldId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleFormFieldOption> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/forms/$formId/fields/$fieldId/options';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleFormFieldOption.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleFormFieldOption Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/fields/1/options;
  static Future<PcoPeopleFormFieldOption?> getSingleFromFormAndFieldAndOptionIds(String formId,String fieldId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleFormFieldOption?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/forms/$formId/fields/$fieldId/options' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleFormFieldOption.fromJson(res.data);
    }
    return retval;
  }




}
