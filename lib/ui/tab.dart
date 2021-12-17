import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    _controller.addListener(() {
      setState(() {});
    });
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
      child: PersistentTabView(
        context,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        controller: _controller,
        backgroundColor: Colors.transparent,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
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
    );
  }

  List<Widget> _buildScreens() {
    return [Numerology(), Tapo(), Container(), Container()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Center(
            child: SvgPicture.asset(
          'assets/ph_poker-chip-light (1).svg',
          fit: BoxFit.fill,
          color: (_controller.index == 0)
              ? CupertinoColors.white
              : CupertinoColors.systemGrey,
        )),
        title: ("Нумерология"),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset('assets/tapo.svg',
          fit: BoxFit.fill,
          color: (_controller.index == 1)
              ? CupertinoColors.white
              : CupertinoColors.systemGrey,),
        title: ("Tapo"),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset('assets/Group (3).svg',
          fit: BoxFit.fill,
          color: (_controller.index == 2)
              ? CupertinoColors.white
              : CupertinoColors.systemGrey,),
        title: ("Календарь"),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset('assets/ic_round-space-dashboard (3).svg',
          fit: BoxFit.fill,
          color: (_controller.index == 3)
              ? CupertinoColors.white
              : CupertinoColors.systemGrey,),
        title: ("Дашбоард"),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
