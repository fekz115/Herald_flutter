// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pages.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Pages _$homePage = const Pages._('homePage');
const Pages _$trainsPage = const Pages._('trainsPage');
const Pages _$settingsPage = const Pages._('settingsPage');
const Pages _$interfaceSettingsPage = const Pages._('interfaceSettingsPage');
const Pages _$behaviorSettingsPage = const Pages._('behaviorSettingsPage');
const Pages _$cachedPage = const Pages._('cachedPage');

Pages _$valueOf(String name) {
  switch (name) {
    case 'homePage':
      return _$homePage;
    case 'trainsPage':
      return _$trainsPage;
    case 'settingsPage':
      return _$settingsPage;
    case 'interfaceSettingsPage':
      return _$interfaceSettingsPage;
    case 'behaviorSettingsPage':
      return _$behaviorSettingsPage;
    case 'cachedPage':
      return _$cachedPage;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Pages> _$values = new BuiltSet<Pages>(const <Pages>[
  _$homePage,
  _$trainsPage,
  _$settingsPage,
  _$interfaceSettingsPage,
  _$behaviorSettingsPage,
  _$cachedPage,
]);

Serializer<Pages> _$pagesSerializer = new _$PagesSerializer();

class _$PagesSerializer implements PrimitiveSerializer<Pages> {
  @override
  final Iterable<Type> types = const <Type>[Pages];
  @override
  final String wireName = 'Pages';

  @override
  Object serialize(Serializers serializers, Pages object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Pages deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Pages.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
