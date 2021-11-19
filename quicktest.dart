import 'dart:io';
import './lib/planningcenter_api.dart';

import 'secrets.dart';

void main() async {
  PlanningCenter.init(appid, secret);
  var result = await PcoPeoplePerson.getSingle('29166364', allIncludes: false);
  if (result == null) return;

  // print(result.toJson());
  // print(result.attributes);
  // print(result.links);
  // print(result.relationshipsData);
  result.relationships.forEach((key, relationships) {
    print('$key - ${relationships.length} relationships');
    for (var relationship in relationships) {
      print(relationship.toJson());
    }
  });
  exit(0);
}
