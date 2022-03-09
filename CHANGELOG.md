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
