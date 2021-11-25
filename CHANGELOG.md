## 0.3.0

-   Most class methods return a PcoCollection<T> object now
-   PcoCollection<T> data items are coerced into lists even when the JSON:AP data was just a map

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
