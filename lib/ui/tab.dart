import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarot/ui/numerology.dart';
import 'package:tarot/ui/personality_number.dart';
import 'package:tarot/ui/profile.dart';
import 'package:tarot/ui/registration.dart';
import 'package:tarot/ui/tapo.dart';
import 'package:tarot/ui/widgets/glassmorphism.dart';
import 'package:tarot/utils/extension.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xff493D5D), Color(0xff79517B)]),
      ),
      child: GlassMorphism(
        sigmaX: 10,
        sigmaY: 10,
        clip: Clip.antiAliasWithSaveLayer,
        child: PersistentTabView(
          context,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          controller: _controller,
          navBarHeight: 100,
          backgroundColor: Colors.transparent, 
          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset:
              true,
          stateManagement: true, 
          hideNavigationBarWhenKeyboardShows:
              true, 
          decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(10.0),
              colorBehindNavBar: Colors.transparent),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: ItemAnimationProperties(
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          navBarStyle: NavBarStyle.style6,
          screenTransitionAnimation: ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [Numerology(),Tapo(), Container(), Container()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings),
        title: ("Нумерология"),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings),
        title: ("Tapo"),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings),
        title: ("Календарь"),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings),
        title: ("Дашбоард"),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
