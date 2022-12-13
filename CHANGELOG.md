## 1.1.4

-   `PcoPeopleFieldDatum` can be queried according to `field_definition_id` (according to the API explorer) but it's not in the API Reference, so previous versions did not include this as a possible where query. This one does.

## 1.1.3

-   removed the `PcoServicesCcliReporting` class since the Api has changed.

## 1.1.2

-   The PCO JSON files mislabel the "time_type" attribute of the `PlanTime` object as `integer` when it really is a `string` and will be one of the following values 'rehearsal', 'service', 'other'
-   Updating all applications to use the most recent API versions.

## 1.1.1

-   Minor documentation update to the static `ClassName.get` functions.

## 1.1.0

-   All previous `PlanningCenterApiQuery` options have now been replaced with class specific query objects.

## 1.0.0

-   revised the architecture of class constructors so that you can now add any attribute exposed by the api in the constructor
-   `relationships` and `includes` can be added to objects directly through the use of the class constructors
-   all class constructor arguments are named parameters now
-   extension methods are now being used to customize code beyond what is automatically generated, this is especially useful when creating and saving donation items since the api requires specific `relationships` and `included` values
-   modified the OAuth2 workflow to include a built-in default http server to make authentication callbacks work more easily.
-   The entire Planning Center API should now be accessible through type-safe Dart code, and there should never be a need to call `PlanningCenter.instance.call()` directly.
-   TODO... there should be different `PlanningCenterApiQuery` options for each class... will work on that.

## 0.9.9

-   all possible `include` items are now implemented as typed getters!
-   `include` getters now handle plural/singular includes for you, returning either Lists or nullable objects.

## 0.9.8

-   `include` items for known objects are now implemented as typed getters and no longer as instance functions;
-   `include` items for unknown objects are still implemented as instance functions with type parameters;

## 0.9.7

-   Any iterable may be used to populate the `include` and `filter` fields of a `PlanningCenterApiQuery`

## 0.9.6

-   Changed relationships, links, and attributes from `Map.unmodifiable` to my own `ReadOnlyMapView` for compile-time warnings instead of runtime exceptions.
-   Changed `include` and `filter` to `Set<String>` to avoid api errors
-   Added individual boolean `include` flags to each method that can return an object:

```dart
var collection = await PcoPeoplePerson.get(id: '000000001', includeEmails: true);
```

## 0.9.5

-   Made relationships, links, and attributes private and expose them as unmodifiable Maps.

## 0.9.4

-   Fixed typed relationship getters for each class

## 0.9.3

-   Adding a note discouraging users from accessing resource attributes directly.
-   Added typed relationship getters for each class
-   deprecated the `data` field on PcoCollection objects, use `items` moving forward.

## 0.9.2

-   Actually including the file upload code into the repo.

## 0.9.1

-   Bug fix

## 0.9.0

-   PlanningCenterApiResponse now includes `data` as `List<PlanningCenterApiData>` instead of a `List<Map<String, dynamic>>`.
-   `PlanningCenterApiData` objects can also be used directly in api calls.
-   File uploads are now supported with the `PlanningCenterApiFile` class.

## 0.8.3

-   Supports greater-than-or-equal and less-than-or-equal in where queries now.

## 0.8.2

-   Fixing some dart analyze warnings.

## 0.8.1

-   Replaced private class constructors (many were unused) with named `empty` constructors.

## 0.8.0

-   Added named parameters to class factory constructors to make it easier to create new objects that can be immediately posted to PlanningCenter.
-   Allow setters to take `null` to remove attributes from classes.

## 0.7.2

-   Updated the `description` in `pubspec.yaml`

## 0.7.1

-   Improved documentation for the `PlanningCenterApiQuery` class and all the classes that use it.

## 0.7.0

-   Added an `extraParams` field to the `PlanningCenterApiQuery` class so that some filters can properly be utilized. For example, `PcoServicesPlan` can be filtered with an `after` filter, but to use the `after` filter, the API must also include an `after` url parameter. These additional parameters cannot be automatically generated from the API documentation, and so it is up to the end user to include them in the `extraParams` field of the `PlanningCenterApiQuery` object.

## 0.6.2

-   Added an `error` getter to both `PcoCollection` and to `PlanningCenterApiResponse` classes to more easily access the error values.

```dart
PcoCollection items = await plan.getItems();
if (items.isError) print(items.error!.errorMessage);
```

## 0.6.1

-   Improved documentation by adding class attributes to the docstrings.

## 0.6.0

-   Added `next` and `getMore` methods on the `PcoCollection` class.
-   Removed `create` factory constructors. Now, the default constructors for each class operate
    the way those `create` constructors did, and only exist if an object can be created through the API on the server.

## 0.5.0

-   Added `create` factory constructors to classes that represent assets that can be created
    through the API. NOTE: Creating an object does not create it on the server until `save` is called.

## 0.4.1

-   Removing old references to `DataClass` and `PlanningCenterResource` classes

## 0.4.0

-   Massive refactoring of the code generation methods and therefore massive changes to the function definitions all around.
-   Much better documentation for each class and function
-   Special attributes used only for create / update functions are now supported (i.e. setting a `songId` attribute on a `PcoServicesItem` object)
-   `PcoResource` objects now have a `delete` method.

## 0.3.0

-   Most class methods return a PcoCollection<T> object now
-   PcoCollection<T> data items are coerced into lists even when the JSON:API data was just a map

## 0.2.1

-   fixed the readme

## 0.1.5

-   added 'actions' exposed by the API. Actions exist as methods on class instances. Each is documented.

## 0.1.4

-   added 'include' functionality

## 0.1.3

-   basic oauth2 implemented without any dependencies, see the readme for how to use.

## 0.1.2

-   Now handles "included" items in API results
-   Added flags to easily get all includable items
-   added static class getters to expose `canInclude`, `canOrderBy`, and `canQuery` fields
-   preliminary work under the hood for oauth2 authentication

## 0.1.1

-   Fixed readme bug

## 0.1.0

-   Initial version... supports the latest non-beta Planning Center APIs as of 2021-11-18
