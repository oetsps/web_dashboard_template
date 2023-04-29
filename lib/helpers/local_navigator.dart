import 'package:flutter/cupertino.dart';
import 'package:web_dashboard_template/constants/controllers.dart';
import 'package:web_dashboard_template/routing/router.dart';
import 'package:web_dashboard_template/routing/routes.dart';

Navigator localNavigator() =>   Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: overviewPageRoute,
    );



