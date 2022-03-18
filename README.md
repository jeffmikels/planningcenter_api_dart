# Planning Center API for Dart

[Planning Center](https://www.planningcenter.com/) is an online platform for church management.

It provides multiple apps for things like check-ins, service planning, volunteer management, CRM, giving and more. Plus, they provide a robust [API](https://developer.planning.center/docs/#/overview/) to access nearly every aspect of their system remotely.

## Features

This package provides full coverage of the entire API as described in the JSON:API specification docs exposed here:

`https://api.planningcenteronline.com/[APPLICATION_NAME]/v2/documentation`

Most of the code has been automatically generated to create Dart abstractions around the PlanningCenter API and to thoroughly document each and every API call. This library implements the most current PlanningCenter API versions as of 2022-03-01.

This package supports authentication by developer key and secret:

[Planning Center Developer Console](https://api.planningcenteronline.com/oauth/applications).

... or by OAuth2 authentication credentials (see the example for details).

## Getting started

Install the package:

```
dart pub add planningcenter_api
```

## Usage

Before you can access the Planning Center API, you need to initialize the library. There are three ways to initialize:

```dart
/// OPTION 1: use a developer level authentication by specifying an `appId` and a `secret`.
PlanningCenter.init(appId, secret);

/// OPTION 2: use a [PlanningCenterCredentials] object (perhaps loaded from a file)
PlanningCenter.initWithCredentials(credentials);

/// OPTION 3: await the oAuth authorization flow
/// the [redirector] is a function returning a Future<String> that should resolve to an auth code
/// see the example for how to do this in a command-line application
await PlanningCenter.authorize(clientId, clientSecret, redirectUrl, scopesList, redirector);
```

You can determine if the library is initialized through checking the `initialized` static member like so:

```dart
if (PlanningCenter.initialized) {
  // YOUR CODE HERE
}
```

Once the library is initialized, then, you may access the API object directly with the static member `PlanningCenter.instance` from which you can make API calls through `PlanningCenter.instance.call` like this:

```dart
  /// The [data] object should be a JSON string or a JSON serializable object that will be
  /// sent to the endpoint. The [call] function also supports query variables through a
  /// [PlanningCenterApiQuery] wrapper.
  ///
  /// This example will attach a home email address of [personEmail] to the person with id [personId]
  PlanningCenterApiResponse res = await PlanningCenter.instance.call(
    '/people/v2/people/${personId}/emails', {
    verb: 'post',
    data: {
      'data': {
        'attributes': {
          'address': personEmail,
          'location': 'Home',
          'primary': true
        }
      }
    },
    apiVersion: '2022-01-28',
  });
```

`PlanningCenter.instance.call` works almost exactly the same as an `http` client does, but it provides a helpful wrapper around the query variables and manages authentication behind the scenes. Specifically, if an authorization token needs to be refreshed, it will handle that first before continuing with the rest of the API call.

Although you can issue calls to the API directly using `PlanningCenter.instance` the preferred mechanism is to use the methods associated with the classes provided in the library. This way, you will get access to code suggestions (Intellisense) and documentation in your IDE.

The earlier example of adding an email address to a person should be re-written this way:

```dart
var email = PcoPeopleEmail('1', address: 'email@example.com', location: 'Home', isPrimary: true);
email.save();
```

### Static Methods

Each PlanningCenter resource that can be retrieved is available to you through static methods on the relevant class itself.

Static methods always return a `Future<PcoCollection<T>>`

```dart
PcoCollection<PcoPeopleEmail> emails = await PcoPeopleEmail.getFromPeople('1');
print(emails.data);
```

### Instance Relationship Methods

Once you have a PlanningCenter resource, you can get related resources through instance methods.

Instance methods always return a `Future<PcoCollection<T>>`

```dart
PcoCollection<PcoPeopleEmail> emails = await PcoPeopleEmail.getFromPeople('1');
var myEmail = emails.data.first;
PcoCollection<PcoPeoplePerson> myProfile = await myEmail.getPerson();
print(myProfile.data.first);
```

### Instance Action Methods

Each PlanningCenter resource can have different actions associated with it, and these are accessible through instance methods.

-   Resources that can be created or updated expose the `save` method.
-   Resources that can be deleted, expose the `delete` method.
-   Other actions may or may not be exposed as instance methods on the relevant classes.

NOTE: Actions should be documented, but they do not have helper code. You'll need to post the exact data specified in the documentation. Posted data should follow JSON:API specifications. A `PcoData` class has been provided for that purpose.

```dart
var res = await PcoServicesPlan.getFromServiceType('1234567');
if (!res.isError) {
  var plan = res.data.first;
  var r2 = await plan.itemReorder(PcoData('PlanItemReorder', attributes: {
    'sequence': ['5', '1', '3']
  }));
  if (r2.isError) {
    print(r2.errorMessage);
  } else {
    print('success');
  }
} else {
  print(res.errorMessage);
}

```

### Tips

You can always see the errors of an API request by printing `res.errorMessage`.

If you want to grab some PlanningCenter data from scratch, you probably want to call a static method on a class representing the data you want. If you already have some data and you want to get related data, call a method on the object itself.

The code should be well documented. If you have questions, please create a github issue.

## Example

```dart
import 'dart:async';
import 'dart:io'; // to exit the script faster
import 'dart:convert'; // for the pretty printing of json

import 'package:planningcenter_api/planningcenter_api.dart';

/// this is where I store my [appid], [secret], [oAuthClientId], and [oAuthClientSecret] constants
import '../secrets.dart';

void debug(Object o) {
  try {
    print(JsonEncoder.withIndent('  ').convert(o));
  } on JsonUnsupportedObjectError catch (e) {
    print('DEBUG AS STRING BECAUSE: $e');
    print(o);
  }
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
  }

  if (!PlanningCenter.initialized) {
    print('Planning Center authentication failed.');
    exit(1);
  }

  // Now, all classes beginning with Pco are available for use

  /// Get the service types on the default organization (defaults to grabbing 25)
  /// will return List<PcoServicesServiceType>
  var collection = await PcoServicesServiceType.get();
  debug(collection.response);
  if (!collection.isError) {
    var service = collection.data.first;
    print('Found Service Type: ${service.name}');

    /// most class instances have methods allowing you to fetch related items
    /// this time, we also are using a query object to request plans in descending order
    /// of their sort date
    var plans = await service.getPlans(query: PlanningCenterApiQuery(order: '-sort_date'));
    if (!plans.isError) {
      var plan = plans.data.first;
      print('Found Plan: ${plan.seriesTitle} - ${plan.title} - ${plan.lastTimeAt}');
      var items = await plan.getItems();
      for (var item in items.data) {
        print('Plan Item: ${item.title}\n${item.description}\n');
        if (item.title == 'CHANGE ME') {
          print('attempting to update this item');
          item.title = 'CHANGED';
          var result = await item.save();
          print(result.isError ? 'failed' : 'successful');
        }
      }
    }
  }

  // to call the API directly, you can do this, but it will not return
  // typed data... just a moderately parsed PlanningCenterApiResponse object
  var res = await PlanningCenter.instance.call('/services/v2/songs');
  if (res is PlanningCenterApiError) {
    debug(res.errorMessage);
    debug(res.responseBody);
  }
  debug(res.toJson());

  // Once we're done with the client, save the credentials file. This ensures
  // that if the credentials were automatically refreshed while using the
  // client, the new credentials are available for the next run of the
  // program.
  if (PlanningCenter.instance.oAuthCredentials != null) {
    await credentialsFile.create(recursive: true);
    await credentialsFile.writeAsString(json.encode(PlanningCenter.instance.oAuthCredentials));
  }

  exit(0);
}

```
