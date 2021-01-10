import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pages.g.dart';

class Pages extends EnumClass {
  const Pages._(String name) : super(name);

  static const Pages homePage = _$homePage;
  static const Pages trainsPage = _$trainsPage;
  static const Pages settingsPage = _$settingsPage;
  static const Pages interfaceSettingsPage = _$interfaceSettingsPage;
  static const Pages behaviorSettingsPage = _$behaviorSettingsPage;
  static const Pages cachedPage = _$cachedPage;

  static BuiltSet<Pages> get values => _$values;
  static Pages valueOf(String name) => _$valueOf(name);
  static Serializer<Pages> get serializer => _$pagesSerializer;
}