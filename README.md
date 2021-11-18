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

Then, you can access the different applications by static methods on their classes directly. Here's an example:

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
