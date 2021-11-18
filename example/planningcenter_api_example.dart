import 'dart:io';

import 'package:planningcenter_api/planningcenter_api.dart';
import '../secrets.dart';

void main() async {
  var pc = PlanningCenter.init(appid, secret);
  var serviceTypes = await PcoServicesServiceType.getMany();
  if (serviceTypes.isNotEmpty) {
    var service = serviceTypes.first;
    print('Found Service Type: ${service.name}');
    var plans = await service.getPlans(query: PlanningCenterApiQuery(order: '-created_at'));
    if (plans.isNotEmpty) {
      var plan = plans.first;
      print('Found Plan: ${plan.seriesTitle} - ${plan.title} - ${plan.lastTimeAt}');
      var items = await plans.first.getItems();
      for (var item in items) {
        print('Plan Item: ${item.title}\n${item.description}\n');
      }
    }
  }
  exit(0);
}
