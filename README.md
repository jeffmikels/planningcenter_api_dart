# Planning Center API for Dart

[Planning Center](https://www.planningcenter.com/) is an online platform for church management.

It provides multiple apps for things like check-ins, service planning, volunteer management, CRM, giving and more.
Plus, they provide a robust [API](https://developer.planning.center/docs/#/overview/) to access nearly
every aspect of their system remotely.

## Features

This package provides code to interact with every single Planning Center app through the most current API version available (see the changelog).

Currently, the package depends on an organization level developer key and secret that you can generate here:

(Planning Center Developer Console)[https://api.planningcenteronline.com/oauth/applications].

TODO: In the future, this library will support an OAuth authentication flow.

## Getting started

Install the package:

```
dart pub add planningcenter_api
```

## Usage

Before you can access the Planning Center API, you need to initialize the library with an `appId` and a `secret`. Then, you may access the API object directly with the static member `PlanningCenter.instance` from which you can make API calls through `PlanningCenter.instance.call(endpoint, HTTPverb, queryObject)`.

However, once the library has been initialized

```dart
if (PlanningCenter.initialized) ...
```

Then, you can access the different applications by static methods on their classes directly or by calling methods on existing objects.

```dart
import 'dart:io'; // to exit the script faster
import 'dart:convert'; // for the pretty printing of json

import 'package:planningcenter_api/planningcenter_api.dart';

/// this is where I store my [appid] and [secret] constants
import '../secrets.dart';

/// This funciton might come in handy for you sometime :-)
String pretty(Object obj) {
  JsonEncoder encoder = JsonEncoder.withIndent('  ', (obj) {
    try {
      return obj.toJson();
    } catch (_) {
      return obj.toString();
    }
  });
  return encoder.convert(obj);
}

/// here's the real example code
void main() async {
  // begin by initializing the PlanningCenter api
  PlanningCenter.init(appid, secret);

  // Now, all classes beginning with Pco are available for use

  /// Get the service types on the default organization (defaults to grabbing 25)
  /// will return List<PcoServicesServiceType>
  var serviceTypes = await PcoServicesServiceType.getMany();
  if (serviceTypes.isNotEmpty) {
    var service = serviceTypes.first;
    print('Found Service Type: ${service.name}');

    /// most class instances have methods allowing you to fetch related items
    /// this time, we also are using a query object to request plands in descending order
    /// of their sort date
    var plans = await service.getPlans(query: PlanningCenterApiQuery(order: '-sort_date'));
    if (plans.isNotEmpty) {
      var plan = plans.first;
      print('Found Plan: ${plan.seriesTitle} - ${plan.title} - ${plan.lastTimeAt}');
      var items = await plans.first.getItems();
      for (var item in items) {
        print('Plan Item: ${item.title}\n${item.description}\n');
        if (item.title == 'CHANGE ME') {
          print('attempting to update this item');
          item.title = 'CHANGED';
          var result = await item.save();
          print(result ? 'successful' : 'not successful');
        }
      }
    }
  }

  // to call the API directly, you can do this.
  var res = await PlanningCenter.instance.call('/services/v2/songs');
  print(pretty(res));
  exit(0);
}

```

## Unimplemented So Far

-   OAuth authentication
-   Support for API "actions"
-   Support for the "include" query parameter
