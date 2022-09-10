import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_cut/features/home/home.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class TabWidget extends StatelessWidget {
  TabWidget({Key? key}) : super(key: key);

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const Home(),
      Container(),
      Container(),
      Container(),
      Container(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          title: "Hot",
          opacity: 0.6,
          icon: Transform.scale(
              scale: 2.5,
              child: SvgPicture.asset(
                'assets/tab1.svg',
              )),
          activeColorPrimary: const Color(0xFFF2BC3D),
          inactiveColorPrimary: const Color(0xFF504C57),
          contentPadding: 1),
      PersistentBottomNavBarItem(
          title: "2",
          opacity: 0.6,
          icon: Transform.scale(
              scale: 2.5,
              child: SvgPicture.asset(
                'assets/tab2.svg',
              )),
          activeColorPrimary: const Color(0xFFF2BC3D),
          inactiveColorPrimary: Colors.transparent,
          onPressed: (context) {}),
      PersistentBottomNavBarItem(
          title: "3",
          opacity: 0.6,
          icon: Transform.scale(
              scale: 2.5,
              child: SvgPicture.asset(
                'assets/tab3.svg',
              )),
          activeColorPrimary: const Color(0xFFF2BC3D),
          inactiveColorPrimary: Colors.transparent,
          onPressed: (context) {}),
      PersistentBottomNavBarItem(
          title: "4",
          opacity: 0.6,
          icon: Transform.scale(
              scale: 2.5,
              child: SvgPicture.asset(
                'assets/tab4.svg',
              )),
          activeColorPrimary: const Color(0xFFF2BC3D),
          inactiveColorPrimary: Colors.transparent,
          onPressed: (context) {}),
      PersistentBottomNavBarItem(
          title: "5",
          opacity: 0.6,
          icon: Transform.scale(
              scale: 2.5,
              child: SvgPicture.asset(
                'assets/tab5.svg',
              )),
          activeColorPrimary: const Color(0xFFF2BC3D),
          inactiveColorPrimary: Colors.transparent,
          onPressed: (context) {}),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: false,
      backgroundColor: Colors.black.withOpacity(0.9),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      popAllScreensOnTapOfSelectedTab: false,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
    );
  }
}
