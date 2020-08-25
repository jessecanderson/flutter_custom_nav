// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigator_custom_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NavCustomState on _NavCustomState, Store {
  Computed<Map<TabItem, Widget>> _$tabScreensComputed;

  @override
  Map<TabItem, Widget> get tabScreens => (_$tabScreensComputed ??=
          Computed<Map<TabItem, Widget>>(() => super.tabScreens,
              name: '_NavCustomState.tabScreens'))
      .value;
  Computed<List<BottomNavigationBarItem>> _$bottomNavItemsComputed;

  @override
  List<BottomNavigationBarItem> get bottomNavItems =>
      (_$bottomNavItemsComputed ??= Computed<List<BottomNavigationBarItem>>(
              () => super.bottomNavItems,
              name: '_NavCustomState.bottomNavItems'))
          .value;

  final _$_isLoggedInAtom = Atom(name: '_NavCustomState._isLoggedIn');

  @override
  bool get _isLoggedIn {
    _$_isLoggedInAtom.reportRead();
    return super._isLoggedIn;
  }

  @override
  set _isLoggedIn(bool value) {
    _$_isLoggedInAtom.reportWrite(value, super._isLoggedIn, () {
      super._isLoggedIn = value;
    });
  }

  final _$indexAtom = Atom(name: '_NavCustomState.index');

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  final _$selectedTabAtom = Atom(name: '_NavCustomState.selectedTab');

  @override
  TabItem get selectedTab {
    _$selectedTabAtom.reportRead();
    return super.selectedTab;
  }

  @override
  set selectedTab(TabItem value) {
    _$selectedTabAtom.reportWrite(value, super.selectedTab, () {
      super.selectedTab = value;
    });
  }

  final _$_NavCustomStateActionController =
      ActionController(name: '_NavCustomState');

  @override
  GlobalKey<NavigatorState> getStateKeyFor(TabItem item) {
    final _$actionInfo = _$_NavCustomStateActionController.startAction(
        name: '_NavCustomState.getStateKeyFor');
    try {
      return super.getStateKeyFor(item);
    } finally {
      _$_NavCustomStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTabWith({int newIndex}) {
    final _$actionInfo = _$_NavCustomStateActionController.startAction(
        name: '_NavCustomState.setTabWith');
    try {
      return super.setTabWith(newIndex: newIndex);
    } finally {
      _$_NavCustomStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLogin() {
    final _$actionInfo = _$_NavCustomStateActionController.startAction(
        name: '_NavCustomState.setLogin');
    try {
      return super.setLogin();
    } finally {
      _$_NavCustomStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
index: ${index},
selectedTab: ${selectedTab},
tabScreens: ${tabScreens},
bottomNavItems: ${bottomNavItems}
    ''';
  }
}
