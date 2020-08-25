import 'package:NavPractice/Screens/home_screen.dart';
import 'package:NavPractice/Screens/test_screen_one.dart';
import 'package:NavPractice/Screens/test_screen_three.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'navigator_custom_state.g.dart';

// enum idea came from here
// https://medium.com/coding-with-flutter/flutter-case-study-multiple-navigators-with-bottomnavigationbar-90eb6caa6dbf
// Didn't end up using the whole thing, but built on it to come up with this. Not 100% sure if the enum is neeeded
// But it keeps things clean for sure
//
//
// Nav State may seem overloaded, but trying to keep all the navigation items together
// One place to edit if expansion of navigation was required
// Need to test if multiple nested navigation stacks are really supported fully
//

enum TabItem { home, first, second, third }

class NavCustomState = _NavCustomState with _$NavCustomState;

abstract class _NavCustomState with Store {
  @observable
  bool _isLoggedIn = false;

  @observable
  int index = 0;

  @observable
  TabItem selectedTab = TabItem.home;

  Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.first: GlobalKey<NavigatorState>(),
    TabItem.third: GlobalKey<NavigatorState>(),
  };

  @computed
  Map<TabItem, Widget> get tabScreens => _isLoggedIn
      ? {
          TabItem.home: HomeScreen(),
          TabItem.first: ScreenOne(),
          TabItem.third: ScreenThree(),
        }
      : {
          TabItem.home: HomeScreen(),
          TabItem.first: ScreenOne(),
        };

  @computed
  List<BottomNavigationBarItem> get bottomNavItems => _isLoggedIn
      ? [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text("First Page"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Third Page"),
          ),
        ]
      : [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text("First Page"),
          ),
        ];

  @action
  GlobalKey<NavigatorState> getStateKeyFor(TabItem item) {
    return navigatorKeys[item];
  }

  @action
  void setTabWith({int newIndex}) {
    index = newIndex;
    selectedTab = tabScreens.keys.toList()[newIndex];
  }

  @action
  void setLogin() {
    _isLoggedIn = !_isLoggedIn;
  }
}
