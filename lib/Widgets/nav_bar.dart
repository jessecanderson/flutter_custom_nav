import 'package:NavPractice/State/navigator_custom_state.dart';
import 'package:NavPractice/Widgets/tab_navigator.dart';
import "package:flutter/material.dart";
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class NavBarController extends StatelessWidget {
  NavCustomState navState;

  @override
  Widget build(BuildContext context) {
    navState = Provider.of<NavCustomState>(context);
    return WillPopScope(
      onWillPop: () async => !await navState.getStateKeyFor(navState.selectedTab).currentState.maybePop(),
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Testing Navigation"),
        // ),
        bottomNavigationBar: Observer(
          builder: (context) => BottomNavigationBar(
            items: navState.bottomNavItems,
            onTap: (index) => navState.setTabWith(newIndex: index),
            currentIndex: navState.index,
          ),
        ),
        body: Observer(
          builder: (context) => Stack(
            children: [
              _buildOffstageNavigator(TabItem.home),
              _buildOffstageNavigator(TabItem.first),
              _buildOffstageNavigator(TabItem.third),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem item) {
    return Offstage(
      offstage: item != navState.selectedTab,
      child: TabNavigator(
        navigatorKey: navState.getStateKeyFor(item),
        tabItem: item,
      ),
    );
  }
}
