import 'package:NavPractice/Screens/home_screen.dart';
import 'package:NavPractice/State/navigator_custom_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Inspired by https://stackoverflow.com/questions/49681415/flutter-persistent-navigation-bar-with-named-routes

class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  @override
  Widget build(BuildContext context) {
    final navState = Provider.of<NavCustomState>(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: '/',
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => navState.tabScreens[tabItem],
        );
      },
    );
  }
}
