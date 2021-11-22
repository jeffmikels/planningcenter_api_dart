# Planning Center API for Dart

[Planning Center](https://www.planningcenter.com/) is an online platform for church management.

It provides multiple apps for things like check-ins, service planning, volunteer management, CRM, giving and more.
Plus, they provide a robust [API](https://developer.planning.center/docs/#/overview/) to access nearly
every aspect of their system remotely.

## Features

This package provides code to interact with every single Planning Center app through the most current API version available (see the changelog).

Currently, the package depends on an organization level developer key and secret that you can generate here:

[Planning Center Developer Console](https://api.planningcenteronline.com/oauth/applications).

TODO: In the future, this library will support an OAuth authentication flow.

## Getting started

Install the package:

```
dart pub add planningcenter_api
```

## Usage

Before you can access the Planning Center API, you need to initialize the library. There are three ways to initialize:

```dart
/// use a developer level authentication by specifying an `appId` and a `secret`.
PlanningCenter.init(appId, secret);

/// use a PlanningCenterCredentials object (perhaps loaded from a file)
PlanningCenter.initWithCredentials(credentials);

/// await the oAuth authorization flow
/// the [redirector] is a function returning a Future<String> that should resolve to an auth code
/// see the example for how to do this in a command line application
await PlanningCenter.authorize(clientId, clientSecret, redirectUrl, scopesList, redirector);
```

Once any of these initializers completes, then, you may access the API object directly with the static member `PlanningCenter.instance` from which you can make API calls through `PlanningCenter.instance.call(endpoint, HTTPverb, queryObject)`.

You can determine if the library is initialized through checking the `initialized` static member like so:

```dart
if (PlanningCenter.initialized) ...
```

Once initialized, you can access all the different applications by static methods on their classes directly or by calling methods on existing objects.

As a rule of thumb remember that if you want to grab some planning center data from scratch, call a static method on a class representing the data you want. If you already have some data and you want to get related data, call a method on the object itself. The code should be well documented. If you have questions, please create a github issue.

## Example

```dart
import 'dart:io'; // to exit the script faster
import 'dart:convert'; // for the pretty printing of json

import 'package:planningcenter_api/planningcenter_api.dart';

/// this is where I store my [appid], [secret], [oAuthClientId], and [oAuthClientSecret] constants
import '../secrets.dart';

/// This function might come in handy for you sometime :-)
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

Future<String> authRedirector(String url) async {
  var completer = Completer<String>();
  var server = await HttpServer.bind('0.0.0.0', 64738);
  server.listen((HttpRequest req) async {
    req.response.write('Thanks! You can close this window now.');
    req.response.close();
    server.close();
    print(req.requestedUri);
    print(req.requestedUri.queryParameters);
    completer.complete(req.requestedUri.queryParameters['code'] ?? '');
  });

  print('visit the following url in your browser');
  print(url);

  // Once the user is redirected to `redirectUrl`, pass the query parameters to
  // the AuthorizationCodeGrant. It will validate them and extract the
  // authorization code to create a new Client.
  return completer.future;
}

/// here's the real example code
void main() async {
  // begin by initializing the PlanningCenter api
  // this init will use a developer appid and secret giving you access to everything that developer can access
  // PlanningCenter.init(appid, secret);

  // this init will use oAuth
  var credentialsFile = File('credentials.json');
  if (await credentialsFile.exists()) {
    try {
      var credentials = json.decode(await credentialsFile.readAsString());
      var creds = PlanningCenterCredentials.fromJson(credentials);
      PlanningCenter.initWithCredentials(oAuthClientId, oAuthClientSecret, creds);
    } catch (e) {
      print(e);
      print('could not read credentials file');
    }
  }

  if (!PlanningCenter.initialized) {
    print('authorizing planning center with oauth');
    await PlanningCenter.authorize(
      oAuthClientId,
      oAuthClientSecret,
      'http://localhost:64738/pco_callback',
      PlanningCenter.oAuthScopes,
      authRedirector,
    );
    if (!PlanningCenter.initialized) {
      print('Planning Center authentication failed.');
      exit(1);
    }
  }

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

[x] OAuth authentication
[x] Support for the "include" query parameter
[] Support for API "actions"
