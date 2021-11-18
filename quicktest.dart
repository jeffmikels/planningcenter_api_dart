import 'dart:io';
import './lib/planningcenter_api.dart';

import 'secrets.dart';

void main() async {
  PlanningCenter.init(appid, secret);
  var result = await PcoServicesPlan.getSingleFromServiceTypeAndPlanIds('1169425', '54817185');
  if (result == null) return;

  // print(result.toJson());
  // print(result.attributes);
  // print(result.links);
  // print(result.relationshipsData);
  result.relationships.forEach((key, value) {
    print('RELATIONSHIP: $key');
    print(value);
    print(value.toJson());
  });
  exit(0);
}
