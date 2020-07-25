# Herald

Herald is a simple application that can download and show trains schedule of Belarus (schedule provided by https://rasp.rw.by).

## Used techonologies:
 - Redux architecture([built_redux](https://pub.dev/packages/built_redux), [flutter_built_redux](https://pub.dev/packages/flutter_built_redux))
 - [auto_route](https://pub.dev/packages/auto_route) - for navigation and page transitions
 - [http](https://pub.dev/packages/http) and [html](https://pub.dev/packages/html) - for loading and parsing schedule
 - [intl](https://pub.dev/packages/intl) - for dates
 - [built_value](https://pub.dev/packages/built_value) and [built_collection](https://pub.dev/packages/built_collection) - for data classes and immutable collections
 - [sealed_class](https://pub.dev/packages/sealed_class) - for service responses and states

## Coming soon:
 - i18n
 - android shortcuts
 - stations autocomplete
 - caching
 - train tracking