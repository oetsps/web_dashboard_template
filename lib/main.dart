import 'package:flutter/material.dart';
import 'package:web_dashboard_template/constants/style.dart';
import 'package:web_dashboard_template/controllers/init_dependency.dart';
import 'package:web_dashboard_template/controllers/menu_controller.dart';
import 'package:web_dashboard_template/controllers/navigation_controller.dart';
import 'package:web_dashboard_template/layout.dart';
import 'package:web_dashboard_template/pages/404/error.dart';
import 'package:web_dashboard_template/pages/authentication/authentication.dart';
import 'package:web_dashboard_template/pages/overview/overview.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard_template/routing/router.dart';

import 'constants/controllers.dart';
import 'routing/routes.dart';

void main() {
  // Get.put(MyMenuController());
  Get.lazyPut(() => MyMenuController());
  Get.put(NavigationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitDependency(),
      builder: (context, child) => SiteLayout(child: child!,),
      navigatorKey: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: authenticationPageRoute,
      // initialRoute: overviewPageRoute,
      // unknownRoute: GetPage(name: '/not-found', page: () => PageNotFound(), transition: Transition.fadeIn),
      // getPages: [
      //   GetPage(name: rootRoute, page: () {
      //     return SiteLayout();
      //   }),
      //   GetPage(name: authenticationPageRoute, page: () => AuthenticationPage()),
      //   GetPage(name: overviewPageRoute, page: () => OverviewPage()),
      // ],
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: Colors.black
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          }
        ),
        primarySwatch: Colors.blue,
      ),
      // home: AuthenticationPage(),
    );
  }
}
