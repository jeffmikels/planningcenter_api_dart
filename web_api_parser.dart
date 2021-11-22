// ignore_for_file: slash_for_doc_comments

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

/// CLASSES ======================
extension CapExtension on String {
  String get capitalize => length == 0 ? this : this[0].toUpperCase() + substring(1);
  String get titleCase => toLowerCase().split(" ").map((str) => str.capitalize).join(" ");
  String get singular {
    if (endsWith('eries')) return this;
    if (endsWith('ampus')) return this;
    if (endsWith('ies')) return substring(0, length - 3) + 'y';
    if (endsWith('sses')) return substring(0, length - 3);
    if (endsWith('ses')) return substring(0, length - 2);
    if (endsWith('xes')) return substring(0, length - 2);
    return endsWith('s') ? substring(0, length - 1) : this;
  }

  String get plural {
    if (endsWith('es')) return this; // covers ies, ses, sses, xes
    if (endsWith('ey')) return this + 's';
    if (endsWith('ay')) return this + 's';
    if (endsWith('oy')) return this + 's';
    if (endsWith('y')) return substring(0, length - 1) + 'ies';
    if (endsWith('s') || endsWith('x')) return this + 'es';
    return this + 's';
  }

  String get singularWithPeople => singular.replaceAll('people', 'person').replaceAll('People', 'Person');

  String snakeToPascal() => replaceAll('-', '_').split('_').map((s) => s.capitalize).join();
  String snakeToCamel() {
    var s = snakeToPascal();
    return s[0].toLowerCase() + s.substring(1);
  }
}

// generic JsonApiDoc
// planning center employs the json-api standard
// every response is formatted as {data: {response_data}}
// JSON-API objects have a data field at the top level
class JsonApiDoc {
  String? id;
  String type = '';
  Map<String, dynamic> attributes = {};
  Map<String, dynamic>? relationships = {};
  Map<String, dynamic> typedRelationships = {};

  /// include the CONTENTS of the data field
  JsonApiDoc.fromJson(Map<String, dynamic> data) {
    type = data['type'];
    id = data['id'];
    attributes = data['attributes'];
    relationships = data['relationships'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> retval = {
      'type': type,
      'attributes': attributes,
    };
    if (id != null) retval['id'] = id;
    retval['relationships'] = relationships;
    if (typedRelationships.isNotEmpty) retval['relationships'] = typedRelationships;
    return retval;
  }
}

class Vertex extends JsonApiDoc {
  String application = '';
  String version = '';

  List<Attribute> vertexAttributes = [];
  // List<Relationship> vertexRelationships = []; // allow for filters
  // List<Action> vertexActions;
  List<Edge> inboundEdges = []; // refers to the endpoints that lead to this item
  List<Edge> outboundEdges = []; // refers to the endpoints that come from this item
  List<Action> actions = [];

  List<URLParameter> canInclude = [];
  List<URLParameter> canOrderBy = [];
  List<URLParameter> canQuery = [];
  late URLParameter perPage;
  late URLParameter offset;
  late Permission vertexPermissions;

  String get name => attributes['name'] ?? '';
  String get description => attributes['description'] ?? '';
  String get example => attributes['example'] ?? '';
  String get path => attributes['path'] ?? '';
  bool get collectionOnly => attributes['collection_only'] == true;
  bool get deprecated => attributes['deprecated'] == true;

  String? _inboundPath;
  String get inboundPath => _inboundPath ??= path;
  set path(String s) => _inboundPath = s;

  Edge? get shortestInboundEdge {
    if (inboundEdges.isEmpty) return null;

    var shortest = inboundEdges.first;
    for (var e in inboundEdges) {
      if (e.path.split('/').length <= shortest.path.split('/').length && e.path.length <= shortest.path.length) {
        shortest = e;
      }
    }
    if (shortest.path.length > path.length) return null;
    return shortest;
  }

  Vertex.fromJson(this.application, this.version, Map<String, dynamic> data) : super.fromJson(data) {
    if (relationships == null) return;

    perPage = URLParameter.fromJson(relationships!['per_page']['data']);
    offset = URLParameter.fromJson(relationships!['offset']['data']);
    vertexPermissions = Permission.fromJson(relationships!['permissions']['data']);
    vertexAttributes = [
      for (var item in relationships!['attributes']['data']) Attribute.fromJson(item),
    ];
    canInclude = [
      for (var item in relationships!['can_include']['data']) URLParameter.fromJson(item),
    ];
    canOrderBy = [
      for (var item in relationships!['can_order']['data']) URLParameter.fromJson(item),
    ];
    canQuery = [
      for (var item in relationships!['can_query']['data']) URLParameter.fromJson(item),
    ];
    inboundEdges = [
      for (var item in relationships!['inbound_edges']['data']) Edge.fromJson(application, version, item),
    ];
    outboundEdges = [
      for (var item in relationships!['outbound_edges']['data']) Edge.fromJson(application, version, item),
    ];
    actions = [
      for (var item in relationships!['actions']['data']) Action.fromJson(application, version, item),
    ];

    typedRelationships['per_page'] = perPage;
    typedRelationships['offset'] = offset;
    typedRelationships['permissions'] = vertexPermissions;
    typedRelationships['attributes'] = vertexAttributes;
    typedRelationships['can_include'] = canInclude;
    typedRelationships['can_order'] = canOrderBy;
    typedRelationships['can_query'] = canQuery;
    typedRelationships['inbound_edges'] = inboundEdges;
    typedRelationships['outbound_edges'] = outboundEdges;
    typedRelationships['actions'] = actions;
  }
}

class Attribute extends JsonApiDoc {
  String get name => attributes['name'];
  String get note => attributes['note'];
  String get permissionLevel => attributes['permission_level'];
  String get description => attributes['description'] ?? '';
  String get typeString => attributes['type_annotation']!['name'];
  String get typeExample => attributes['type_annotation']!['example'];

  Attribute.fromJson(Map<String, dynamic> data) : super.fromJson(data) {}
}

class Permission extends JsonApiDoc {
  bool get canCreate => attributes['can_create'] == true;
  bool get canUpdate => attributes['can_update'] == true;
  bool get canDestroy => attributes['can_destroy'] == true;
  List get edges => attributes['edges'];
  List get createAssignable => attributes['create_assignable'] ?? [];
  List get updateAssignable => attributes['update_assignable'] ?? [];
  // appear to be unused
  dynamic get read => attributes['read'] == true;
  dynamic get create => attributes['create'] == true;
  dynamic get update => attributes['update'] == true;
  dynamic get destroy => attributes['destroy'] == true;

  Permission.fromJson(Map<String, dynamic> data) : super.fromJson(data) {}
}

class URLParameter extends JsonApiDoc {
  String get name => attributes['name'];
  String get parameter => attributes['parameter'];
  String get parameterType => attributes['type'];
  String get description => attributes['description'];
  dynamic get value => attributes['value'];

  set value(dynamic s) => attributes['value'] = s;

  /// will have example, or value, or min,max,default
  String? get example => attributes['example'];
  int? get minimumValue => attributes['minimum'];
  int? get maximumValue => attributes['maximum'];
  int? get defaultValue => attributes['default'];

  @override
  String toString() => '$parameter=${value ?? defaultValue}}';

  URLParameter.fromJson(Map<String, dynamic> data) : super.fromJson(data) {}
}

class Edge extends JsonApiDoc {
  String application = '';
  String version = '';

  String get name => attributes['name'];
  String get details => attributes['details'];
  String get path => attributes['path'];
  List<String> get filters => attributes['filters'] ?? [];
  List<String> get scopes => attributes['scopes'] ?? [];
  bool get deprecated => attributes['deprecated'] == true;

  late Vertex head;
  late Vertex tail;

  Edge.fromJson(this.application, this.version, Map<String, dynamic> data) : super.fromJson(data) {
    head = Vertex.fromJson(application, version, relationships!['head']['data']);
    tail = Vertex.fromJson(application, version, relationships!['tail']['data']);
  }
}

class Action extends JsonApiDoc {
  String application = '';
  String version = '';

  String get name => attributes['name'];
  String get details => attributes['details'] ?? '';
  String get description => attributes['description'] ?? '';
  String get path => attributes['path'];
  String get exampleBody => attributes['example_body'] ?? '';
  String get returnType => attributes['return_type'] ?? '';
  bool get deprecated => attributes['deprecated'] == true;
  bool get canRun => attributes['can_run'] == true;

  late Vertex tail;

  Action.fromJson(this.application, this.version, Map<String, dynamic> data) : super.fromJson(data) {
    tail = Vertex.fromJson(application, version, relationships!['tail']['data']);
  }
}

/// FUNCTIONS =================================

Future<String> get(Uri uri, {recache = false, throttle = true}) async {
  var cacheDir = './docCache';
  var cachefile = cacheDir + uri.path + '.json';
  var f = File(cachefile);
  if (await f.exists() && recache == false) {
    print('Cache: ${f.path}');
    return f.readAsString();
  } else {
    await f.create(recursive: true);
    var res = await http.get(uri);
    if (res.statusCode > 199 && res.statusCode < 300) {
      f.writeAsString(res.body);
    }
    if (throttle) {
      await Future.delayed(Duration(milliseconds: 300));
    }
    return res.body;
  }
}

Uri docUri(String application, [String? version, String? vertexId]) {
  var url = 'https://api.planningcenteronline.com/${application}/v2/documentation';
  if (version != null) url += '/$version';
  if (vertexId != null) url += '/vertices/$vertexId';
  return Uri.parse(url);
}

String edgeToVertexId(String s) {
  // remove next and last
  s = s.replaceAll('next_', '');
  s = s.replaceAll('last_', '');
  s = s.replaceAll('home_workflow', 'workflow');
  return s;
}

String classNameFromVertex(String appName, String vertexName) {
  return ('Pco' + appName.snakeToPascal() + vertexName.singular)
      // .replaceAll('PcoPeopleField', 'PcoPeopleFormField')
      .replaceAll('PcoPeopleStep', 'PcoPeopleWorkflowStep')
      .replaceAll('PcoPeoplePersonImport', 'PcoPeoplePeopleImport');
}

/// CODE GENERATION FUNCTIONS ================================

String fieldConstantTemplate(String pcoName) => '  static const k${pcoName.snakeToPascal()} = \'$pcoName\';\n';
String fieldGetterLine(Attribute attribute) {
  var camelName = attribute.name.snakeToCamel();
  var pascalName = attribute.name.snakeToPascal();
  var targetName = 'attributes[k$pascalName]';
  switch (camelName) {
    case 'default':
      camelName = attribute.typeString == 'boolean' ? 'default' : 'defaultValue';
      break;
  }

  var output = '';
  if (attribute.description.isNotEmpty) {
    var description =
        attribute.description.replaceAll('\r', '\n').replaceAll('\n\n', '\n').trim().split('\n').join('\n  ///');
    output += '\n  /// $description\n';
  }
  switch (attribute.typeString) {
    case 'boolean':
      output += '  bool get is$pascalName => $targetName == true;\n';
      break;
    case 'float':
      output += '  double get $camelName => $targetName ?? 0;\n';
      break;
    case 'integer':
      output += '  int get $camelName => $targetName ?? 0;\n';
      break;
    case 'date_time':
      output += '  DateTime get $camelName => DateTime.parse($targetName ?? \'\');\n';
      break;
    case 'array':
      output += '  List get $camelName => $targetName ?? [];\n';
      break;
    default:
      output += '  String get $camelName => $targetName ?? \'\';\n';
      break;
  }
  return output;
}

String fieldSetterLine(Attribute attribute) {
  var camelName = attribute.name.snakeToCamel();
  var pascalName = attribute.name.snakeToPascal();
  var targetName = 'attributes[k$pascalName]';
  switch (camelName) {
    case 'default':
      camelName = attribute.typeString == 'boolean' ? 'default' : 'defaultValue';
      break;
  }

  var output = '';
  if (attribute.description.isNotEmpty) {
    var description =
        attribute.description.replaceAll('\r', '\n').replaceAll('\n\n', '\n').trim().split('\n').join('\n  ///');
    output += '\n  /// $description\n';
  }
  switch (attribute.typeString) {
    case 'boolean':
      output += '  set is$pascalName(bool b) => $targetName = b;\n';
      break;
    case 'float':
      output += '  set $camelName(double n) => $targetName = n;\n';
      break;
    case 'integer':
      output += '  set $camelName(int n) => $targetName = n;\n';
      break;
    case 'date_time':
      output += '  set $camelName(DateTime d) => $targetName = d.toIso8601String();\n';
      break;
    case 'array':
      output += '  set $camelName(List a) => $targetName = a;\n';
      break;
    default:
      output += '  set $camelName(String s) => $targetName = s;\n';
      break;
  }
  return output;
}

String classTemplate(Vertex vertex) {
  var className = classNameFromVertex(vertex.application, vertex.name);

  // ignore attributes that are always present
  var ignore = ['created_at', 'updated_at', 'id'];

  Set<String> setterAllowed = {
    ...vertex.vertexPermissions.createAssignable,
    ...vertex.vertexPermissions.updateAssignable
  };

  // walk through the attributes and generate constants, getters and setters for attributes
  // NOTE: sometimes the documentation has attribute duplicates
  Set<String> seen = {};

  var fieldConstantLines = <String>[];
  var fieldGetterLines = <String>[];
  var fieldSetterLines = <String>[];

  print('  handling attributes: ${vertex.vertexAttributes.map((e) => e.name).join(',')}');
  for (var attribute in vertex.vertexAttributes) {
    if (ignore.contains(attribute.name)) continue;
    if (seen.add(attribute.name) == false) continue; // true when we added, false when already there

    fieldConstantLines.add(fieldConstantTemplate(attribute.name));

    // make a getter line
    fieldGetterLines.add(fieldGetterLine(attribute));

    // maybe make a setter line
    if (setterAllowed.contains(attribute.name)) {
      fieldSetterLines.add(fieldSetterLine(attribute));
    }
  }

  // let's ignore the concept of a parent
  // in favor of the concept of relationships (based on edges)

  // from outbound_edges, create instance functions to get other items from this one
  List<String> childGetters = [];
  for (var edge in vertex.outboundEdges) {
    print('  handling outbound edge: ${edge.path}');
    if (edge.path.endsWith('/')) {
      print(' -- skipping, unknown edge format');
      continue;
    }

    // TODO: Can the outbound path have a different structure from the apiPath?

    // the same vertices are returned from different requests
    var pathSuffix = edge.path.split('/').last;
    var functionSuffix = pathSuffix.snakeToPascal();
    var childVertexName = edge.head.name;
    var childClass = classNameFromVertex(vertex.application, childVertexName);
    var childDescription = childVertexName.singular.plural.capitalize;
    if (pathSuffix == edge.head.id || functionSuffix == childDescription) functionSuffix = '';
    var functionName = 'get$childDescription$functionSuffix';

    childGetters.add('''
/// will get many $childClass objects
/// using a path like this: ${edge.path}
Future<List<$childClass>> $functionName({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = $childClass.canInclude;
  List<$childClass> retval = [];
  var url = '\$apiEndpoint/$pathSuffix';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add($childClass.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    ''');
  }

  // from inbound_edges, create static constructors to return objects of this type
  // static constructors that only require id values
  var staticSingleConstructors = [];
  var staticCollectionConstructors = [];
  for (var edge in vertex.inboundEdges) {
    print('  handling inbound edge: ${edge.path}');
    if (edge.path.endsWith('/')) {
      print(' -- skipping, unknown edge format');
      continue;
    }

    // create static constructors from the edge path
    var pathParts = edge.path.split('/').sublist(3); // ignore https://api.planningcenteronline.com/
    var idArgs = [];
    var edgeCamelNames = <String>[];
    var edgePascalNames = <String>[];
    // ignore the first two items because they come from /appname/v2
    for (var i = 2; i < pathParts.length; i++) {
      if (pathParts[i] == '1') {
        var varname = edgeCamelNames.last + 'Id';
        pathParts[i] = '\$$varname';
        idArgs.add('String $varname');
      } else {
        var camelName = edgeToVertexId(pathParts[i]).snakeToCamel().singular;
        edgeCamelNames.add(camelName);
        edgePascalNames.add(camelName.capitalize);
      }
    }
    var edgePathTemplate = '/' + pathParts.join('/');
    var functionPrefix = 'From';
    var functionSuffix = 'Ids';

    // special consideration for root level edges
    if (edge.tail.id == 'organization') {
      edgePascalNames = [];
      idArgs = [];
      functionPrefix = functionSuffix = '';
    }

    // constructors for collections
    staticCollectionConstructors.add('''
  /// will get many $className Objects
  /// using a path like this: ${edge.path};
  static Future<List<$className>> getMany$functionPrefix${edgePascalNames.join('And')}$functionSuffix(${idArgs.map((e) => '$e,').join()} {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<$className> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = $className.canInclude;
    var url = '$edgePathTemplate';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add($className.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
''');

    // constructors for individual items
    staticSingleConstructors.add('''
  /// will get a single $className Object
  /// using a path like this: ${edge.path};
  static Future<$className?> getSingle$functionPrefix${edgePascalNames.join('And')}$functionSuffix(${idArgs.map((e) => '$e,').join()} String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    $className?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = $className.canInclude;
    var url = '$edgePathTemplate' + '/\$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = $className.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
''');
  }

  // TODO: handle "actions" from vertex.relationships['actions'];
  // see https://api.planningcenteronline.com/services/v2/documentation/2018-11-01/vertices/song
  // see https://developer.planning.center/docs/#/apps/services/2018-11-01/vertices/song for an example

  // from `actions` create methods
  var actionsLines = <String>[];
  for (var action in vertex.actions) {
    print('  handling action for: ${action.path}');
    if (action.path.endsWith('/')) {
      print(' -- skipping, unknown action format');
      continue;
    }

    // the same vertices are returned from different requests
    var pathSuffix = action.path.split('/').last;

    var functionName = action.name.snakeToCamel();
    var description =
        action.description.replaceAll('\r', '\n').replaceAll('\n\n', '\n').split('\n').map((e) => '/// $e').join('\n');
    var details =
        action.details.replaceAll('\r', '\n').replaceAll('\n\n', '\n').split('\n').map((e) => '/// $e').join('\n');
    if (action.details.isEmpty) details = '/// *PlanningCenter API Docs don\'t cover this action very well*';
    actionsLines.add('''
/// ACTION: ${action.name}
$description
/// using a path like this: ${action.path}
/// 
/// Details:
$details
Future<PlanningCenterApiResponse> $functionName(Map<String, dynamic> data) async {
  var url = '\$apiEndpoint/$pathSuffix';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    ''');
  }

  /// HERE'S THE ACTUAL TEMPLATE ========================
  return '''/// This file was generated on ${DateTime.now().toIso8601String()}


import '../../pco.dart';

/// This class represents a PCO ${vertex.application.snakeToPascal()} ${vertex.name} Object
/// 
/// Application: ${vertex.application}
/// Id:          ${vertex.id}
/// Type:        ${vertex.name}
/// ApiVersion:  ${vertex.version}
/// 
/// Description:
/// ${vertex.description.replaceAll(RegExp(r'[\r\n]'), r'\n').split('\n').join('\n/// ')}
/// 
/// Example:
/// 
/// ${vertex.example}
/// 
/// Collection Only: ${vertex.collectionOnly}
/// 
/// Deprecated: ${vertex.deprecated}
/// 
/// Default Endpoint: ${vertex.path}
/// 
/// possible includes with parameter ?include=a,b
${vertex.canInclude.map((e) => '/// @${e.value}: ${e.description} ').join('\n')}
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
${vertex.canQuery.map((e) => '/// @${e.name} (${e.type}), ${e.description}, example: ${e.example}').join('\n')}
/// possible orderings with parameter ?order=
${vertex.canOrderBy.map((e) => '/// @${e.value} (${e.type}), ${e.description}').join('\n')}
///
class $className extends PcoResource {
  static const String kPcoApplication = '${vertex.application}';
  static const String kTypeString = '${vertex.name}';
  static const String kTypeId = '${vertex.id}';
  static const String kApiVersion = '${vertex.version}';
  static const String kShortestEdgeId = '${vertex.shortestInboundEdge?.id ?? ""}';
  static const String kShortestEdgePathTemplate = '${vertex.shortestInboundEdge?.path ?? vertex.path}';

  /// possible includes with parameter ?include=a,b
${vertex.canInclude.map((e) => '  /// @${e.value}: ${e.description} ').join('\n')}
  static List<String> get canInclude => [${vertex.canInclude.map((e) => '\'${e.name}\'').join(',')}];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
${vertex.canQuery.map((e) => '  /// @${e.name} (${e.type}), ${e.description}, example: ${e.example}').join('\n')}
  static List<String> get canQuery => [${vertex.canQuery.map((e) => '\'${e.name}\'').join(',')}];

  /// possible orderings with parameter ?order=
${vertex.canOrderBy.map((e) => '  /// @${e.value} (${e.type}), ${e.description}').join('\n')}
  static List<String> get canOrderBy => [${vertex.canOrderBy.map((e) => '\'${e.name}\'').join(',')}];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
${fieldConstantLines.join()}

  // getters and setters
  @override
  List<String> get createAllowed => [${vertex.vertexPermissions.createAssignable.map((e) => '\'$e\'').join(',')}];
  @override
  List<String> get updateAllowed => [${vertex.vertexPermissions.updateAssignable.map((e) => '\'$e\'').join(',')}];

${fieldGetterLines.join()}

${fieldSetterLines.join()}

  $className() : super(kPcoApplication, kTypeString);
  $className.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

${staticCollectionConstructors.join()}

${staticSingleConstructors.join()}

${childGetters.join('\n')}

${actionsLines.join('\n')}
}
''';
}

String constructorsTemplate(Map<String, String> map) {
  var lines = [];
  map.forEach((key, value) {
    lines.add('''    '$key': (Map<String, dynamic> data) => $value.fromJson(data),''');
  });

  return '''
import 'pco_resource_base.dart';
import "../pco_apps/apps.dart";

Map<String, PcoResource Function(Map<String, dynamic>)> _constructors = {
${lines.join('\n')}
};

PcoResource? buildResource(String application, String pcoType, Map<String, dynamic> data) {
  var key = application + '-' + pcoType;
  if (_constructors.containsKey(key)) {
    return _constructors[key]!(data);
  }
}
  ''';
}

// global values

// // some vertices use a bothersome path in their attributes, so we override it here
// List<String> verticesPreferFirstEdge = [
//   'ccli_reporting',
//   'custom_slide',
//   'live',
//   'item_note',
//   'item_time',
//   'needed_position',
//   'plan_person_time',
//   'report_template',
//   'split_team_rehearsal_assignment',
// ];

// Map<String, String> vertexPreferredEdge = {
//   'ccli_reporting': 'cclireporting-item-ccli_reporting',
//   'custom_slide': 'customslide-item-custom_slides',
//   'live': 'live-plan-live',
//   'item_note': 'itemnote-item-item_notes',
//   'item_time': 'itemtime-item-item_times',
// };

var filesToExport = [];
var applications = ['services', 'check-ins', 'people', 'calendar', 'giving', 'groups', 'webhooks'];

var constructorMap = <String, String>{};

/**
 * TODO:
 * - Support for API "actions"
 * - Support for the "include" query parameter
 * 
 * What about this?
 * 
 * - Adding app-level classes with getters for each edge?
 *   so that edge 'item-plan-items'
 *   will map to https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items
 *   through something like this: pco.services.service_types[id].plans[id].items.get()
 *   or like:                     pco.services.getItemsFromServiceTypeAndPlan(serviceTypeId, planId)
 *   To do the former, we need two classses like this (but it will only get us one level deep)
 * 
 * ```dart
 * class PcoEdge<T> {
 *  String _itemName = '';
 *  PcoEdge? _parent;
 *  List<String> get parts => [if (parent != null) ...parent!.parts, itemName];
 *  String toString() => '/' + parts.join('/')
 * 
 *  operator [](int index) => PcoIdentifiedEdge(index, _parent);
 * 
 *  PcoEdge<T>(this.itemName, {this.parent})
 * 
 *  Future<List<T>> get({PlanningCenterApiQuery query}) {/*do the call, parse the results, return the correct object*/}
 * }
 * 
 * class PcoIdentifiedEdge<T> {
 *  String _id;
 *  PcoEdge? _parent;
 *  List<String> get parts => [if (parent != null) ...parent!.parts, itemName, id];
 *  String toString() => '/' + parts.join('/')
 * 
 *  const PcoEdge<T>(id, parent):_id = id, _parent = parent;
 * 
 *  Future<T> get() {/*do the call, parse the results, return the correct object*/}
 *  Future<T> post() {/*do the call, parse the results, return the correct object*/}
 *  Future<T> patch() {/*do the call, parse the results, return the correct object*/}
 *  Future<T> delete() {/*do the call, parse the results, return the correct object*/}
 * }
 * ```
 * 
 * Then, a PcoServices class can do something like this:
 * 
 *  PcoEdge get song => PcoEdge<PcoServicesSong>('songs');
 *  PcoEdge get serviceTypes => PcoEdge<PcoServicesServiceType>('service_types');
 * 
 */
void main(List<String> arguments) async {
  var reload = arguments.contains('reload');
  for (var app in applications) {
    var vertices = <String, Vertex>{};
    var edges = <String, Edge>{};

    var appExports = [];
    var uri = docUri(app);
    var body = await get(uri, recache: reload);
    var data = json.decode(body)['data'];
    var version = JsonApiDoc.fromJson(data['relationships']['versions']['data'].first);

    // if there is a non-beta version, use the newest non-beta version instead
    for (var v in data['relationships']['versions']['data']) {
      if (v['attributes']['beta'] == false) {
        version = JsonApiDoc.fromJson(v);
        break;
      }
    }

    // create vertices and edges for this app
    print('Loading Data for ${app} Version: ${version.id}');
    for (var v in version.relationships?['vertices']['data']) {
      var vertex = Vertex.fromJson(app, version.id!, v);
      print('\n\nLoading Vertex and Edge data for Vertex: ${vertex.name} (${vertex.id})');
      uri = docUri(app, version.id, vertex.id!);
      print('From: $uri');

      body = await get(uri);
      data = json.decode(body)['data'];
      vertex = Vertex.fromJson(app, version.id!, data);
      vertices[vertex.id!] = vertex;
      for (var e in [...vertex.inboundEdges, ...vertex.outboundEdges]) {
        edges[e.id!] = e; // might overwrite, but that's okay
      }
    }
    print('Vertices and Edges have been processed');

    var dirName = 'pco_apps/$app'.replaceAll('-', '_');
    var exportsFile = '$dirName/$app.dart'.replaceAll('-', '_');

    for (var vertex in vertices.values) {
      // determine the inbound path to use for fetch
      // based on the shortest inbound edge path to this vertex
      for (var ie in vertex.inboundEdges) {
        if (ie.path.length < vertex.path.length) vertex.path = ie.path;
      }

      var className = classNameFromVertex(app, vertex.name);
      var constructorKey = '${vertex.application}-${vertex.name}';
      constructorMap[constructorKey] = className;
      print('\nGenerating code for $app -> ${vertex.name}: ' + className);

      // this file will be stored as pco_apps/$app/$basename.dart
      // and will be mentioned in    pco_apps/$app/$app.dart
      var basename = '${app}_${vertex.id}.dart'.replaceAll('-', '_');
      var codeFilename = 'lib/src/$dirName/$basename';

      appExports.add(basename);

      var f = File(codeFilename);
      var code = classTemplate(vertex);
      if (!f.existsSync()) {
        f.createSync(recursive: true);
      }
      print('  saving: $f');
      f.writeAsStringSync(code);
    }
    // all vertices for this app are done, write the app level exports file

    print('\nWriting exports file for $app');
    filesToExport.add('$app/$app.dart'.replaceAll('-', '_'));
    var f = File('./lib/src/$exportsFile');
    if (!f.existsSync()) f.createSync(recursive: true);
    var output = '';
    for (var e in appExports) {
      output += 'export "./$e";\n';
    }
    print('  saving: $f');
    f.writeAsStringSync(output);
  }

  // all apps are done, write the exports
  var exportsFile = 'pco_apps/apps.dart';
  var f = File('./lib/src/$exportsFile');
  if (!f.existsSync()) f.createSync(recursive: true);
  var output = '';
  for (var e in filesToExport) {
    output += 'export "./$e";\n';
  }
  f.writeAsStringSync(output);

  // write the constructors file
  var constructorsFile = './lib/src/pco_base/pco_constructors.dart';
  f = File(constructorsFile);
  f.createSync(recursive: true);
  f.writeAsStringSync(constructorsTemplate(constructorMap));
}
