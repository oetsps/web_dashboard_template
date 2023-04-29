import 'package:flutter/material.dart';
import 'package:web_dashboard_template/constants/style.dart';
import 'package:web_dashboard_template/controllers/menu_controller.dart';
import 'package:web_dashboard_template/helpers/reponsiveness.dart';
import 'package:web_dashboard_template/pages/overview/widgets/available_drivers_table.dart';
import 'package:web_dashboard_template/pages/overview/widgets/overview_cards_large.dart';
import 'package:web_dashboard_template/pages/overview/widgets/overview_cards_medium.dart';
import 'package:web_dashboard_template/pages/overview/widgets/overview_cards_small.dart';
import 'package:web_dashboard_template/pages/overview/widgets/revenue_section_large.dart';
import 'package:web_dashboard_template/widgets/custom_text.dart';
import 'package:get/get.dart';

import '../../constants/controllers.dart';
import 'widgets/revenue_section_small.dart';

class OverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Obx(
            () => Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                    child: CustomText(
                      text: menuController.activeItem.value,
                      color: lightGrey,
                      size: 24,
                      weight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          // Expanded(
          //   child: ListView(
          //     children: [
          //       OverviewCardsLargeScreen(),
          //       RevenueSectionSmall(),
          //       AvailableDriversTable(),
          //     ],
          //   ),
          // ),
          Expanded(
            child: ListView(
              children: [
                if (ResponsiveWidget.isLargeScreen(context) ||
                    ResponsiveWidget.isMediumScreen(context))
                  if (ResponsiveWidget.isCustomSize(context))
                    OverviewCardsMediumScreen()
                    // OverviewCardsLargeScreen()
                  else
                    OverviewCardsLargeScreen()
                else
                  OverviewCardsSmallScreen(),
                if (!ResponsiveWidget.isSmallScreen(context))
                  RevenueSectionLarge()
                else
                  RevenueSectionSmall(),

                  AvailableDriversTable(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
