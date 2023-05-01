import 'package:flutter/material.dart';
import 'package:web_dashboard_template/helpers/local_navigator.dart';
import 'package:web_dashboard_template/helpers/reponsiveness.dart';
import 'package:web_dashboard_template/widgets/large_screen.dart';
import 'package:web_dashboard_template/widgets/side_menu.dart';

import 'widgets/top_nav.dart';


class SiteLayout extends StatelessWidget {
  final Widget child;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar:  topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        mediumScreen: LargeScreen(),
        customScreen: LargeScreen(),
        smallScreen: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          // child: localNavigator(),
          child: child,
        )
      ),
    );
  }
}
