// ignore_for_file: slash_for_doc_comments

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

/// HELPER CLASS EXTENSIONS
extension MyStringExtensions on String {
  String get capitalized => length == 0 ? this : this[0].toUpperCase() + substring(1);
  String get titleCase => toLowerCase().split(" ").map((str) => str.capitalized).join(" ");
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

  String snakeToPascal() => replaceAll('-', '_').split('_').map((s) => s.capitalized).join();
  String snakeToCamel() {
    var s = snakeToPascal();
    return s[0].toLowerCase() + s.substring(1);
  }

  String cleanLines() => replaceAll('\r\n', '\n').replaceAll('\n\r', '\n').replaceAll('\r', '\n');

  String prefixLines(String linePrefix) {
    return linePrefix + split('\n').join('\n$linePrefix');
  }

  String decodeEncodeIndent() {
    try {
      var decoded = json.decode(this);
      return (JsonEncoder.withIndent('  ')).convert(decoded);
    } catch (_) {
      return this;
    }
  }
}

/// CLASSES REPRESENTING JSON-API DOCUMENTATION OBJECTS
///
/// generic JsonApiDoc
/// planning center employs the json-api standard
/// every response is formatted as {data: {response_data}}
/// JSON-API objects have a data field at the top level
class JsonApiDoc {
  String? id;
  String type = '';
  Map<String, dynamic> attributes = {}; // grabbed directly from the response JSON
  Map<String, dynamic> relationships = {}; // grabbed directly from the response JSON
  Map<String, dynamic> typedRelationships = {}; // will be parsed from the response JSON into typed objects
  List<JsonApiDoc> relatedDocs = []; // parsed from the relationships if we can do so

  JsonApiDoc();

  /// include the CONTENTS of the data field
  JsonApiDoc.fromJson(Map<String, dynamic> data) {
    type = data['type'];
    id = data['id'];
    attributes = data['attributes'];
    relationships = data['relationships'] ?? {};
    if (relationships.containsKey('data')) {
      for (Map<String, dynamic> rel in relationships['data']) {
        relatedDocs.add(JsonApiDoc.fromJson(rel));
      }
    }
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

/// represents a single "[Vertex]" from a JsonApiDoc specification document
/// a [Vertex] describes an endpoint where a single resource can be obtained from the API.
class Vertex extends JsonApiDoc {
  String application = '';
  String version = '';

  List<Attribute> vertexAttributes = [];
  List<Relationship> vertexRelationships = [];

  // List<Action> vertexActions;
  Map<String, Edge> edgeById = {};
  List<Edge> inboundEdges = []; // refers to the endpoints that lead to this item
  List<Edge> outboundEdges = []; // refers to the endpoints that come from this item
  Edge? createEdge;
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

  Vertex.fromJson(this.application, this.version, Map<String, dynamic> data) : super.fromJson(data) {
    if (relationships.isEmpty) return;

    perPage = URLParameter.fromJson(relationships['per_page']?['data']);
    offset = URLParameter.fromJson(relationships['offset']?['data']);
    vertexPermissions = Permission.fromJson(relationships['permissions']?['data']);
    vertexAttributes = [
      for (var item in relationships['attributes']?['data']) Attribute.fromJson(item),
    ];
    vertexRelationships = [
      for (var item in relationships['relationships']?['data']) Relationship.fromJson(item),
    ];
    canInclude = [
      for (var item in relationships['can_include']?['data']) URLParameter.fromJson(item),
    ];
    canOrderBy = [
      for (var item in relationships['can_order']?['data']) URLParameter.fromJson(item),
    ];
    canQuery = [
      for (var item in relationships['can_query']?['data']) URLParameter.fromJson(item),
    ];
    actions = [
      for (var item in relationships['actions']?['data']) Action.fromJson(application, version, item),
    ];
    inboundEdges = [
      for (var item in relationships['inbound_edges']?['data']) Edge.fromJson(application, version, item),
    ];
    outboundEdges = [
      for (var item in relationships['outbound_edges']?['data']) Edge.fromJson(application, version, item),
    ];

    for (var edge in [...inboundEdges, ...outboundEdges]) {
      edgeById[edge.id!] = edge;
    }

    if (vertexPermissions.canCreate && vertexPermissions.edgeIds.isNotEmpty) {
      createEdge = edgeById[vertexPermissions.edgeIds.first];
    }

    typedRelationships['per_page'] = perPage;
    typedRelationships['offset'] = offset;
    typedRelationships['permissions'] = vertexPermissions;
    typedRelationships['attributes'] = vertexAttributes;
    typedRelationships['relationships'] = vertexRelationships;
    typedRelationships['can_include'] = canInclude;
    typedRelationships['can_order'] = canOrderBy;
    typedRelationships['can_query'] = canQuery;
    typedRelationships['actions'] = actions;

    /// the [Edge]s that when traversed will lead to this [Vertex]
    typedRelationships['inbound_edges'] = inboundEdges;

    /// the [Edge]s that lead away from this [Vertex]
    typedRelationships['outbound_edges'] = outboundEdges;
  }
}

/// an "[Edge]" describes the paths linking two resources on the server
/// An [Edge] will have a [head] and a [tail] that may or may not
/// point to [Vertex] objects.
/// Also note, the [id] is constructed by the server like this:
/// [head.name]-[tail.name]-[name]
class Edge extends JsonApiDoc {
  String application = '';
  String version = '';
  List<EdgeFilter> availableFilters = [];

  String get name => attributes['name'];
  String get details => attributes['details'];
  String get path => attributes['path'];
  List<String> get filters => attributes['filters'] ?? [];
  List<dynamic> get scopes => attributes['scopes'] ?? [];
  bool get deprecated => attributes['deprecated'] == true;

  // found in the relationships field
  late Vertex head;
  late Vertex tail;

  Edge.fromJson(this.application, this.version, Map<String, dynamic> data) : super.fromJson(data) {
    head = Vertex.fromJson(application, version, relationships['head']?['data']);
    tail = Vertex.fromJson(application, version, relationships['tail']?['data']);

    // for every filter, there should be a corresponding scope with that filter string as its name
    // as a result, we only need to parse the scopes to get the filter information
    for (var scope in scopes) {
      if (scope['name'] == null) continue;
      availableFilters.add(EdgeFilter(scope['name'], scope['scope_help']));
    }
  }
}

class EdgeFilter {
  String name;
  String? help;
  EdgeFilter(this.name, this.help);
}

/// represents a "Relationship" from a JsonApiDoc specification document
class Relationship extends JsonApiDoc {
  String get name => attributes['name'];
  String get association => attributes['association'];
  String get authorizationLevel => attributes['authorization_level'];
  String get graphType => attributes['graph_type'] ?? '';
  String? get polymorphic => attributes['polymorphic'];
  String? get note => attributes['note'];

  bool get isMany => association == 'to_many';

  Relationship.fromJson(Map<String, dynamic> data) : super.fromJson(data);
}

/// represents an "Attribute" from a JsonApiDoc specification document
class Attribute extends JsonApiDoc {
  String get name => attributes['name'];
  String? get note => attributes['note'];
  String get permissionLevel => attributes['permission_level'];
  String get description => attributes['description'] ?? '';
  String get typeString => attributes['type_annotation']?['name'] ?? 'string';
  String get typeExample => attributes['type_annotation']?['example'] ?? typeString;

  String get dartTypeString {
    switch (typeString) {
      case 'boolean':
        return 'bool';
      case 'float':
        return 'double';
      case 'integer':
        return 'int';
      case 'date_time':
        return 'DateTime';
      case 'array':
        return 'List';
      default:
        return 'String';
    }
  }

  Attribute.nameOnly(String name) : super() {
    attributes['name'] = name;
  }

  Attribute.fromJson(Map<String, dynamic> data) : super.fromJson(data);
}

/// represents a "Permission" from a JsonApiDoc specification document
class Permission extends JsonApiDoc {
  bool get canCreate => attributes['can_create'] == true;
  bool get canUpdate => attributes['can_update'] == true;
  bool get canDestroy => attributes['can_destroy'] == true;
  List get edgeIds => attributes['edges'] ?? [];
  List get createAssignable => attributes['create_assignable'] ?? [];
  List get updateAssignable => attributes['update_assignable'] ?? [];
  // appear to be unused
  dynamic get read => attributes['read'] == true;
  dynamic get create => attributes['create'] == true;
  dynamic get update => attributes['update'] == true;
  dynamic get destroy => attributes['destroy'] == true;

  Permission.fromJson(Map<String, dynamic> data) : super.fromJson(data);
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

  URLParameter.fromJson(Map<String, dynamic> data) : super.fromJson(data);
}

/// an [Action] describes the methods allowed on a resource identified by [tail]
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
    tail = Vertex.fromJson(application, version, relationships['tail']?['data']);
  }
}

/// FUNCTIONS =================================

/// will get a resource from the cache or from the url
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

/// will generate a URL to a planningcenter api documentation page
Uri docUri(String appName, [String? version, String? vertexId]) {
  var url = 'https://api.planningcenteronline.com/$appName/v2/documentation';
  if (version != null) url += '/$version';
  if (vertexId != null) url += '/vertices/$vertexId';
  return Uri.parse(url);
}

/// CODE GENERATION HELPER FUNCTIONS ================================

/// some edges will have names that don't correlate directly to a vertex
String edgeToVertexId(String s) {
  // remove next and last
  s = s.replaceAll('next_', '');
  s = s.replaceAll('last_', '');
  s = s.replaceAll('home_workflow', 'workflow');
  return s;
}

/// some vertex names don't maintain the other naming conventions or result in duplicate
/// class names, so we do a little modification of them here
String classNameFromVertex(String appName, String vertexName) {
  return ('Pco' + appName.snakeToPascal() + vertexName.singular)
      // .replaceAll('PcoPeopleField', 'PcoPeopleFormField')
      .replaceAll('PcoPeopleStep', 'PcoPeopleWorkflowStep')
      .replaceAll('PcoPeoplePersonImport', 'PcoPeoplePeopleImport');
}

/// CODE GENERATION FUNCTIONS ================================

/// this function helps to generate the "static" fields for the class
String fieldConstantTemplate(String pcoName) => '  static const k${pcoName.snakeToPascal()} = \'$pcoName\';\n';

/// this function generates a consistant getter/setter varname for an attribute
String fieldVarName(Attribute attribute) {
  var camelName = attribute.name.snakeToCamel();
  var pascalName = attribute.name.snakeToPascal();
  if (camelName == 'default') {
    camelName = attribute.typeString == 'boolean' ? 'default' : 'defaultValue';
  }
  if (attribute.typeString == 'boolean') return 'is$pascalName';
  return camelName;
}

/// this function helps to generate the getters for a specific [Vertex] - [Attribute]
/// [realMode] can be 'get' 'set' or 'both'
/// if 'both' it will do a get first and then call itself again with 'set'
String fieldSetterOrGetterLine(String mode, Attribute attribute, {bool useAttributeNameAsKey = false}) {
  var keyName = useAttributeNameAsKey ? "'${attribute.name}'" : 'k${attribute.name.snakeToPascal()}';
  var targetName = '_attributes[$keyName]';
  var varName = fieldVarName(attribute);
  var setterDoc = '\n/// pass `null` to remove key from attributes';
  var output = '';
  var realMode = mode == 'get' ? 'get' : 'set';
  if (realMode == 'set' && attribute.description.isNotEmpty) {
    output += '\n' + attribute.description.cleanLines().trim().prefixLines('/// ') + '\n';
  }
  switch (attribute.typeString) {
    case 'boolean':
      output += realMode == 'set'
          ? '$setterDoc\nset $varName(bool? x) => (x == null) ? attributes.remove($keyName) : $targetName = x;'
          : 'bool get $varName => $targetName == true;';
      break;
    case 'float':
      output += realMode == 'set'
          ? '$setterDoc\nset $varName(double? x) => (x == null) ? attributes.remove($keyName) : $targetName = x;'
          : 'double get $varName => $targetName ?? 0;';
      break;
    case 'integer':
      output += realMode == 'set'
          ? '$setterDoc\nset $varName(int? x) => (x == null) ? attributes.remove($keyName) : $targetName = x;'
          : 'int get $varName => $targetName ?? 0;';
      break;
    case 'date_time':
      output += realMode == 'set'
          ? '$setterDoc\nset $varName(DateTime? x) => (x == null) ? attributes.remove($keyName) : $targetName = x.toIso8601String();'
          : 'DateTime get $varName => DateTime.parse($targetName ?? \'\');';
      break;
    case 'array':
      output += realMode == 'set'
          ? '$setterDoc\nset $varName(List? x) => (x == null) ? attributes.remove($keyName) : $targetName = x;'
          : 'List get $varName => $targetName ?? [];';
      break;
    default:
      output += realMode == 'set'
          ? '$setterDoc\nset $varName(String? x) => (x == null) ? attributes.remove($keyName) : $targetName = x;'
          : 'String get $varName => $targetName ?? \'\';';
      break;
  }
  if (mode == 'both') {
    output += '\n' + fieldSetterOrGetterLine('get', attribute, useAttributeNameAsKey: useAttributeNameAsKey);
  }
  return output;
}

String queryFilterFormatter(EdgeFilter e) {
  var retval = '- `${e.name}`';
  if (e.help != null) {
    // add an extra newline to separate the filter help from subsequent filter items
    retval += '\n' + e.help!.trim() + '\n';
  }
  return retval;
}

String makeMetaDoc(Edge edge, String linePrefix) {
  var metaDoc = '';
  if (edge.availableFilters.isNotEmpty) {
    metaDoc = '''\nAvailable Query Filters:
${edge.availableFilters.map(queryFilterFormatter).join('\n')}''';
    if (edge.deprecated) metaDoc += '\n\n';
  }
  if (edge.deprecated) metaDoc += '@DEPRECATED';
  if (metaDoc.isNotEmpty) metaDoc = '\n' + metaDoc.prefixLines(linePrefix);
  return metaDoc;
}

/// this function generates a Dart class from a given [Vertex]
String classTemplate(Vertex vertex) {
  var className = classNameFromVertex(vertex.application, vertex.name);

  Set<String> setterNeeded = {
    ...vertex.vertexPermissions.createAssignable,
    ...vertex.vertexPermissions.updateAssignable
  };

  // do not make getters for items handled by the parent [PcoResource] class
  var getterIgnore = ['created_at', 'updated_at', 'id'];

  // walk through the attributes and generate constants, getters and setters for attributes
  // NOTE: sometimes the documentation has attribute duplicates, so keep track of what's been seen
  Set<String> seen = {};

  var attributesByName = <String, Attribute>{};
  var fieldConstantLines = <String>[];
  var fieldGetterLines = <String>['// getters for object attributes'];
  var fieldSetterLines = <String>['// setters for object attributes'];
  var additionalAssignableLines = <String>['// additional setters / getters for create/update attributes'];
  var relationshipGetterLines = <String>['// lines to access typed relationships'];
  var attributeDocLines = <String>[];

  print('  handling attributes: ${vertex.vertexAttributes.map((e) => e.name).join(', ')}');
  for (var attribute in vertex.vertexAttributes) {
    if (seen.add(attribute.name) == false) continue; // true when it was added, false when already there
    attributesByName[attribute.name] = attribute;

    var canwrite = false;

    // add this attribute to the lines defining static field consants
    fieldConstantLines.add(fieldConstantTemplate(attribute.name));

    // make a getter line
    if (!getterIgnore.contains(attribute.name)) {
      fieldGetterLines.add(fieldSetterOrGetterLine('get', attribute));
    }

    // maybe make a setter line
    if (setterNeeded.contains(attribute.name)) {
      fieldSetterLines.add(fieldSetterOrGetterLine('set', attribute));
      setterNeeded.remove(attribute.name);
      canwrite = true;
    }
    var perm = canwrite ? 'rw' : 'ro';
    attributeDocLines.add('- `${fieldVarName(attribute)}` ($perm) -> PCO: `${attribute.name}`');
  }

  // for fields that can be set in the api, but don't exist as attributes in the object
  if (setterNeeded.isNotEmpty) {
    print('  handling additional assignables: ${setterNeeded.join(', ')}');
  }
  for (var item in setterNeeded) {
    fieldConstantLines.add(fieldConstantTemplate(item));
    var attribute = Attribute.nameOnly(item);
    additionalAssignableLines.add(fieldSetterOrGetterLine('both', attribute));
    attributeDocLines.add('- `${fieldVarName(attribute)}` (wo) -> PCO: `${attribute.name}`');
  }

  // for related items that can be included, we want to create typed getters
  // but the api documentation doesn't map between the `can_include` field and the real edges
  // we will need to create our own mapping. :-(
  for (var rel in vertex.vertexRelationships) {
    var relationshipClass = classNameFromVertex(vertex.application, rel.name);
  }

  /// HANDLING EDGES...
  /// the documentation describes edges leading to and from this [Vertex]
  /// we want to create a function to traverse each [Edge]

  Set<String> existingFunctions = {};

  /// OUTBOUND EDGES:
  /// from outbound_edges, create instance functions to get other items from this one
  List<String> targetGetters = [];
  for (var edge in vertex.outboundEdges) {
    print('  handling outbound edge: ${edge.path}');
    if (edge.path.endsWith('/')) {
      print(' -- skipping, unknown edge format');
      continue;
    }

    /// from a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/all_attachments
    /// we want to construct an instance function named `getAllAttachments()`
    var pathSuffix = edge.path.split('/').last;
    var functionSuffix = pathSuffix.snakeToPascal();
    var targetVertexName = edge.head.name; // with outbound edges, tail is where we are, head is where we are going
    var targetClass = classNameFromVertex(vertex.application, targetVertexName);
    var targetDescription = targetVertexName.singular.plural.capitalized;

    /// is this edge a to_one edge or a to_many edge?
    var toMany = true;
    for (var r in vertex.vertexRelationships) {
      if ((r.name == edge.name) && !r.isMany) toMany = false;
    }

    var functionName = 'get$functionSuffix';
    if (existingFunctions.contains(functionName)) {
      functionName = 'get$targetDescription$functionSuffix';
    }
    existingFunctions.add(functionName);

    targetGetters.add('''
  /// Will get a collection of [$targetClass] objects (expecting ${toMany ? 'many' : 'one'})
  /// using a path like this: `${edge.path}`${makeMetaDoc(edge, '  /// ')}
  Future<PcoCollection<$targetClass>> $functionName({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = $targetClass.canInclude;
    var url = '\$apiEndpoint/$pathSuffix';
    return PcoCollection.fromApiCall<$targetClass>(url, query: query, apiVersion: apiVersion);
  }
''');
  }

  /// INBOUND EDGES:
  /// from inbound_edges, create static constructors to return objects of this type from various arguments
  var staticInboundFunctions = [];
  var ignoreInboundFromSameType = false;
  for (var edge in vertex.inboundEdges) {
    print('  handling inbound edge: ${edge.path}');
    if (edge.path.endsWith('/')) {
      print(' -- skipping, unknown edge format');
      continue;
    }

    /// Consider ignoring inbound edges that come from an existing item of this type
    /// If we have one item of this type, just use an outbound edge to get the next desired item
    if (ignoreInboundFromSameType && edge.head.type == edge.tail.type) {
      print('  ignoring inbound edge from item of same type');
      continue;
    }

    /// is this edge a to_one edge or a to_many edge?
    /// only really useful for the documentation strings
    var toMany = false;
    bool foundRelationship = false;
    for (var r in vertex.vertexRelationships) {
      if (r.name == edge.name && r.isMany) toMany = true;
      foundRelationship = true;
    }
    if (!foundRelationship) toMany = true;

    /// split the path into parts that will be descriptive names or id values
    /// for a url like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/all_attachments
    /// ignore https://api.planningcenteronline.com/services/v2/
    /// all_attachments -> parsed for quantifier 'all', then discarded
    /// service_types -> arg name
    /// plans -> arg name
    ///
    /// for a url like this: https://api.planningcenteronline.com/calendar/v2/event_instances
    /// ignore https://api.planningcenteronline.com/calendar/v2/
    /// event_instances -> parsed for quantifier (none) then discarded
    /// no args to parse
    /// final function should be getAllFromServiceTypeAndPlan
    /// NOTE: as a static function, the resource type is already mentioned in the name of the class
    ///       so it is redundant in the function name and we don't want to mention it again
    var pathParts = edge.path.split('/').sublist(3);

    // compute the function "target" name and the quantifier
    // based on the final part of the path
    var pathEnd = pathParts.last;

    var functionTarget = pathEnd.snakeToPascal();

    // should we remove a redundant class name from this function target?
    if (pathEnd == edge.head.id!.plural) {
      functionTarget = '';
      toMany = true;
    } else if (pathEnd == edge.head.id!.singular) {
      functionTarget = '';
    }

    // should the function signature allow for an optional id field?
    bool allowIdQueries = foundRelationship ? toMany : true;

    // parse the remaining path parts for function argument variables
    var idArgs = [];
    var inboundArgumentNames = <String>[];
    var inboundFunctionNames = <String>[];

    // start at 2 to ignore /appname/v2, end at length - 1 to ignore last string too
    for (var i = 2; i < pathParts.length - 1; i++) {
      if (pathParts[i] == '1') {
        var varname = inboundArgumentNames.last + 'Id';
        pathParts[i] = '\$$varname'; // modify the pathParts for the template string
        idArgs.add('String $varname');
      } else {
        var camelName = edgeToVertexId(pathParts[i]).snakeToCamel().singular;
        inboundArgumentNames.add(camelName);
        inboundFunctionNames.add(camelName.capitalized);
      }
    }
    // reassemble path template to include `$varname` modifications
    var edgePathTemplate = '/' + pathParts.join('/');

    // -- I don't think this ever worked the way I wanted it to --
    // // if the final part of the path is a special endpoint (path doesn't match object)
    // if (pathParts.last != edge.head.id) {
    //   inboundFunctionNames.add(finalName);
    // }

    var functionParts = ['get', functionTarget];
    if (inboundFunctionNames.isNotEmpty) functionParts.add('From');
    functionParts.add(inboundFunctionNames.join('And'));
    var functionName = functionParts.join();

    // special case of the organizational inbound edge that shows up
    // for some reason as `/services/v2/plans` (with edge id: `organization-organization-plans`)
    // and should be at `/services/v2`
    if (edge.head.id == 'organization' && edge.tail.id == 'organization') {
      toMany = false;
      functionName = 'getSelf';
      idArgs = [];
      edgePathTemplate = '/' + pathParts.sublist(0, 2).join('/');
    }

    // special consideration for root level edges that come right from the organization
    if (edge.tail.id == 'organization') {
      functionName = 'get';
      toMany = true;
      allowIdQueries = true;
      idArgs = [];
    }

    // if (functionName == 'getMany' || functionName == 'getSingle') functionName = 'get';

    var toAdd = '''\n
  /// Will get a collection of [$className] objects (expecting ${toMany ? 'many' : 'one'})
  /// using a path like this: `$edgePathTemplate`${makeMetaDoc(edge, '  /// ')}
  static Future<PcoCollection<$className>> $functionName(${idArgs.map((e) => '$e,').join()} {${allowIdQueries ? 'String? id, ' : ''}PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = $className.canInclude;
    var url = '$edgePathTemplate';
    ${allowIdQueries ? 'if (id != null) url += \'/\$id\';' : ''}
    return PcoCollection.fromApiCall<$className>(url, query: query, apiVersion:kApiVersion);
  }
''';
    if (functionName == 'get') {
      staticInboundFunctions.insert(0, toAdd);
    } else {
      staticInboundFunctions.add(toAdd);
    }
  }

  /// PROCESS VERTEX ACTIONS:
  /// see https://api.planningcenteronline.com/services/v2/documentation/2018-11-01/vertices/song
  /// see https://developer.planning.center/docs/#/apps/services/2018-11-01/vertices/song for an example
  /// `actions` should manifest as *instance* methods
  /// also, since each action is only documented in the `details` field
  /// we can't automatically generate code for them, so we simplify.
  var actionsLines = <String>[];
  for (var action in vertex.actions) {
    print('  handling action for: ${action.path}');
    if (action.path.endsWith('/')) {
      print(' -- skipping, unknown action format');
      continue;
    }

    var pathSuffix = action.path.split('/').last;

    var functionName = action.name.snakeToCamel();
    var description = action.description.cleanLines().trim().prefixLines('  /// ');
    var details = action.details.cleanLines().trim().prefixLines('  /// ');
    if (action.details.isEmpty) details = '  /// *PlanningCenter API docs do not have a description for this action.*';
    actionsLines.add('''
  /// ACTION: `${action.name}`
  /// 
$description
  /// using a path like this: `${action.path}`
  /// 
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  /// 
  /// Details:
$details
  Future<PlanningCenterApiResponse> $functionName(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '\$apiEndpoint/$pathSuffix';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }
''');
  }

  /// NOW ASSEMBLE FACTORY CONSTRUCTORS
  var additionalConstructors = [];

  if (vertex.createEdge != null) {
    // first, parse the createPath so we know where to post on create
    // and also so we know what variables we need in the constructor

    // ignore everything up through /appname/v2
    var pathParts = vertex.createEdge!.path.split('/');
    var idArgs = <String>[];
    var pathNames = [];
    var varNames = [];

    for (var i = 5; i < pathParts.length - 1; i++) {
      if (pathParts[i] == '1') {
        var varname = pathNames.last + 'Id';
        varNames.add(varname);
        pathParts[i] = '\$$varname'; // modify the pathParts for the template string
        idArgs.add('String $varname');
      } else {
        var camelName = edgeToVertexId(pathParts[i]).snakeToCamel().singular;
        pathNames.add(camelName);
      }
    }
    var createPath = pathParts.join('/');

    // now pay attention to the assignable parameters
    var assignLines = <String>[];
    assignLines.add('obj._apiPathOverride = \'$createPath\';');

    var factoryAttributes = <Attribute>[];
    for (var attribName in vertex.vertexPermissions.createAssignable) {
      var attrib = attributesByName[attribName];
      if (attrib == null) continue;
      factoryAttributes.add(attrib);
    }
    var namedParams = <String>[];
    for (var fa in factoryAttributes) {
      var typeString = fa.dartTypeString;
      var varName = fieldVarName(fa);
      namedParams.add('$typeString? $varName');
      assignLines.add('if ($varName != null) obj.$varName = $varName;');
    }
    var extras = '';
    if (namedParams.isNotEmpty) {
      extras = '{ ${namedParams.join(', ')} }';
    }
    if (idArgs.isNotEmpty) extras = ', ' + extras;

    additionalConstructors.add('''
  /// Create a new [$className] object based on this request endpoint:
  /// `$createPath`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory $className(${idArgs.join(', ')}$extras) {
    var obj = $className.empty();
${assignLines.join('\n').prefixLines('    ')}
    return obj;
  }
''');
  }

  // do some cleanup
  // the first line for these is a comment, so empty out if it's the only line
  if (fieldGetterLines.length == 1) fieldGetterLines = [];
  if (fieldSetterLines.length == 1) fieldSetterLines = [];
  if (additionalAssignableLines.length == 1) additionalAssignableLines = [];
  if (relationshipGetterLines.length == 1) relationshipGetterLines = [];

  // add extra empty line between getter and setter and additional assignable lines
  if (fieldGetterLines.isNotEmpty && fieldSetterLines.isNotEmpty) fieldSetterLines.insert(0, '\n');
  if ((fieldGetterLines.isNotEmpty || fieldSetterLines.isNotEmpty) && additionalAssignableLines.isNotEmpty) {
    additionalAssignableLines.insert(0, '\n');
  }

  /// HERE'S THE ACTUAL TEMPLATE ========================
  return '''${autoGeneratedHeader()}
// import '../../pco.dart';
part of pco;

/// This class represents a PCO ${vertex.application.snakeToPascal()} ${vertex.name} Object
/// 
/// - Application:        ${vertex.application}
/// - Id:                 ${vertex.id}
/// - Type:               ${vertex.name}
/// - ApiVersion:         ${vertex.version}
/// - Is Deprecated:      ${vertex.deprecated}
/// - Is Collection Only: ${vertex.collectionOnly}
/// - Default Endpoint:   ${vertex.path}
/// - Create Endpoint:    ${vertex.createEdge?.path ?? 'NONE'}
/// 
/// ## Description
${vertex.description.cleanLines().trim().prefixLines('/// ')}
/// 
/// ## Attributes (and permissions)
${attributeDocLines.join('\n').prefixLines('/// ')}
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// ${vertex.canInclude.isEmpty ? 'NONE' : vertex.canInclude.map((e) => '- `${e.value}`: ${e.description} ').join('\n/// ')}
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// ${vertex.canQuery.isEmpty ? 'NONE' : vertex.canQuery.map((e) => '- `${e.name}`: (${e.type}), ${e.description}, example: ${e.example}').join('\n/// ')}
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// ${vertex.canOrderBy.isEmpty ? 'NONE' : vertex.canOrderBy.map((e) => '- `${e.value}`: (${e.type}), ${e.description}').join('\n/// ')}
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// ${vertex.outboundEdges.isEmpty ? 'NONE' : vertex.outboundEdges.map((e) => '- `${e.id}`: ${e.path}').join('\n/// ')}
/// 
/// Inbound Edges:
/// ${vertex.inboundEdges.isEmpty ? 'NONE' : vertex.inboundEdges.map((e) => '- `${e.id}`: ${e.path}').join('\n/// ')}
/// 
/// Actions:
/// ${vertex.actions.isEmpty ? 'NONE' : vertex.actions.map((e) => '- `${e.name}`: ${e.path}').join('\n/// ')}
///
/// ## Raw Data Object Example
/// ```json
${vertex.example.decodeEncodeIndent().trim().prefixLines('/// ')}
/// ```
class $className extends PcoResource {
  static const String kPcoApplication = '${vertex.application}';
  static const String kTypeString = '${vertex.name}';
  static const String kTypeId = '${vertex.id}';
  static const String kApiVersion = '${vertex.version}';
  static const String kDefaultPathTemplate = '${vertex.path}';
  static const String kCreatePathTemplate = '${vertex.createEdge?.path}';

  /// possible includes with parameter ?include=a,b
  /// ${vertex.canInclude.map((e) => '- `${e.value}`: ${e.description} ').join('\n  /// ')}
  static List<String> get canInclude => [${vertex.canInclude.map((e) => '\'${e.name}\'').join(',')}];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// ${vertex.canQuery.map((e) => '- `${e.name}`: (${e.type}), ${e.description}, example: ${e.example}').join('\n  /// ')}
  static List<String> get canQuery => [${vertex.canQuery.map((e) => '\'${e.name}\'').join(',')}];

  /// possible orderings with parameter ?order=
  /// ${vertex.canOrderBy.map((e) => '- `${e.value}`: (${e.type}), ${e.description}').join('\n  /// ')}
  static List<String> get canOrderBy => [${vertex.canOrderBy.map((e) => '\'${e.name}\'').join(',')}];

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
${fieldConstantLines.join()}

  // getters and setters
  @override
  List<String> get createAllowed => [${vertex.vertexPermissions.createAssignable.map((e) => '\'$e\'').join(', ')}];

  @override
  List<String> get updateAllowed => [${vertex.vertexPermissions.updateAssignable.map((e) => '\'$e\'').join(', ')}];

  @override
  bool get canCreate => ${vertex.vertexPermissions.canCreate};

  @override
  bool get canUpdate => ${vertex.vertexPermissions.canUpdate};

  @override
  bool get canDestroy => ${vertex.vertexPermissions.canDestroy};

${fieldGetterLines.join('\n').prefixLines('  ')}${fieldSetterLines.join('\n').prefixLines('  ')}${additionalAssignableLines.join('\n').prefixLines('  ')}


  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships
  
${vertex.canInclude.map((e) => 'List<T> included${e.name.snakeToPascal()}<T extends PcoResource>() => relationships[\'${e.name}\']?.cast<T>() ?? [];').join('\n').prefixLines('  ')}




  // Class Constructors
  $className.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  $className.empty() : super(kPcoApplication, kTypeString);

${additionalConstructors.join()}

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

${staticInboundFunctions.join()}

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

${targetGetters.join('\n')}

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

${actionsLines.join('\n')}

}
''';
}

String autoGeneratedHeader() {
  return '''
/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON ${DateTime.now().toIso8601String()}
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================\n
''';
}

String constructorsTemplate(Map<String, String> map) {
  var lines = [];
  map.forEach((key, value) {
    lines.add(
        '''    '$key': (Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const[]}) => $value.fromJson(data, withIncludes: withIncludes),''');
  });

  return '''${autoGeneratedHeader()}
part of pco;

Map<String, PcoResource Function(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes})> _constructors = {
${lines.join('\n')}
};

PcoResource? buildResource<T extends PcoResource>(String application, Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const[]}) {
  var key = application + '-' + (data['type'] ?? 'null');
  if (_constructors.containsKey(key)) {
    return _constructors[key]!(data, withIncludes: withIncludes);
  }
  return null;
}
  ''';
}

String libraryTemplate(List<String> filePaths) {
  return '''${autoGeneratedHeader()}
  library pco;

  import 'dart:async';
  import 'dart:convert';
  import 'dart:io';
  import 'package:http/http.dart' as http;
 
${filePaths.map((e) => 'part ')}

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
 * [x] Support for API "actions"
 * [] Support for the "include" query parameter
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
  var libraryFiles = <String, List<String>>{};

  for (var app in applications) {
    libraryFiles[app] = [];

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
    print('Loading Data for $app Version: ${version.id}');
    for (var v in version.relationships['vertices']?['data']) {
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
      var className = classNameFromVertex(app, vertex.name);
      var constructorKey = '${vertex.application}-${vertex.name}';
      constructorMap[constructorKey] = className;
      print('\nGenerating code for $app -> ${vertex.name}: ' + className);

      // this file will be stored as pco_apps/$app/$basename.dart
      // and will be mentioned in    pco_apps/$app/$app.dart
      var basename = '${app}_${vertex.id}.dart'.replaceAll('-', '_');
      var codeFilename = 'lib/src/$dirName/$basename';

      libraryFiles[app]!.add('../$dirName/$basename');
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

    // print('\nWriting exports file for $app');
    // filesToExport.add('$app/$app.dart'.replaceAll('-', '_'));
    // var f = File('./lib/src/$exportsFile');
    // if (!f.existsSync()) f.createSync(recursive: true);
    // var output = autoGeneratedHeader();
    // for (var e in appExports) {
    //   output += 'export "./$e";\n';
    // }
    // print('  saving: $f');
    // f.writeAsStringSync(output);
  }

  // // all apps are done, write the exports
  // var exportsFile = 'pco_apps/apps.dart';
  // var f = File('./lib/src/$exportsFile');
  // if (!f.existsSync()) f.createSync(recursive: true);
  // var output = autoGeneratedHeader();
  // for (var e in filesToExport) {
  //   output += 'export "./$e";\n';
  // }
  // f.writeAsStringSync(output);

  // all apps are done, write the library file
  var libraryFile = 'pco_base/pco_lib.dart';
  var f = File('./lib/src/$libraryFile');
  if (!f.existsSync()) f.createSync(recursive: true);
  var output = autoGeneratedHeader();
  output += '''
library pco;

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

// base parts
part 'pco_api_base.dart';
part 'pco_constructors.dart';
part 'pco_file.dart';
part 'pco_resource_base.dart';

''';
  for (var key in libraryFiles.keys) {
    output += '\n\n// parts for $key\n';
    for (var value in libraryFiles[key]!) {
      output += "part './$value';\n";
    }
  }
  f.writeAsStringSync(output);

  // write the constructors file
  var constructorsFile = './lib/src/pco_base/pco_constructors.dart';
  f = File(constructorsFile);
  f.createSync(recursive: true);
  f.writeAsStringSync(constructorsTemplate(constructorMap));
}
