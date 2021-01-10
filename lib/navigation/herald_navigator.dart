import 'package:Herald/navigation/pages.dart';
import 'package:Herald/pages/behavior_settings_page.dart';
import 'package:Herald/pages/cached_page.dart';
import 'package:Herald/pages/home_page.dart';
import 'package:Herald/pages/interface_settings_page.dart';
import 'package:Herald/pages/settings_page.dart';
import 'package:Herald/pages/trains_page.dart';
import 'package:Herald/redux/actions.dart';
import 'package:Herald/redux/app_state.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

class HeraldNavigator
    extends StoreConnector<AppState, AppActions, BuiltList<Pages>> {
  HeraldNavigator({
    Key key,
  }) : super(key: key);

  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context, BuiltList<Pages> state,
      AppActions actions) {
    return WillPopScope(
      onWillPop: () async => !await _navigatorKey.currentState.maybePop(),
      child: Navigator(
        key: _navigatorKey,
        pages: state.map((page) {
          switch (page) {
            case Pages.trainsPage:
              return MaterialPage<TrainsPage>(
                child: TrainsPage(),
              );
              break;
            case Pages.settingsPage:
              return const MaterialPage<SettingsPage>(
                child: SettingsPage(),
              );
            case Pages.behaviorSettingsPage:
              return const MaterialPage<BehaviorSettingsPage>(
                child: BehaviorSettingsPage(),
              );
              break;
            case Pages.interfaceSettingsPage:
              return MaterialPage<InterfaceSettingsPage>(
                child: InterfaceSettingsPage(),
              );
              break;
            case Pages.cachedPage:
              return MaterialPage<CachedPage>(
                child: CachedPage(),
              );
              break;
            case Pages.homePage:
            default:
              return const MaterialPage<HomePage>(
                child: HomePage(),
              );
          }
        }).toList(),
        onPopPage: (route, result) {
          actions.goBack();
          if (route.didPop(result)) {
            return true;
          }
          return false;
        },
      ),
    );
  }

  @override
  BuiltList<Pages> connect(AppState state) => state.navigationStack;
}
