import 'package:flutter/material.dart';
import 'package:web_dashboard_template/constants/style.dart';
import 'package:web_dashboard_template/helpers/reponsiveness.dart';
import 'package:web_dashboard_template/routing/routes.dart';
import 'package:web_dashboard_template/widgets/custom_text.dart';
import 'package:web_dashboard_template/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  // const SideMenu({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
            color: light,
            child: ListView(
              children: [
                if(ResponsiveWidget.isSmallScreen(context))
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        SizedBox(width: _width / 48),
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Image.asset("assets/icons/logo.png"),
                        ),
                        Flexible(
                          child: CustomText(
                            text: "Dash",
                            size: 20,
                            weight: FontWeight.bold,
                            color: active,
                          ),
                        ),
                        SizedBox(width: _width / 48),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                Divider(color: lightGrey.withOpacity(.1), ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: sideMenuItemRoutes
                      .map((item) => SideMenuItem(
                          itemName: item.name,
                          itemRoute: item.route,
                          // onTap: () {
                          //     if (!menuController.isActive(item.name)) {
                          //       menuController.changeActiveItemTo(item.name);
                          //       navigationController.navigateTo(item.route);
                          //     }
                          //
                            // if (!menuController.isActive(item.name)) {
                            //   if(item.route == authenticationPageRoute){
                            //     Get.offAllNamed(authenticationPageRoute);
                            //   }
                            //   if (!menuController.isActive(item.name)) {
                            //     menuController.changeActiveItemTo(item.name);
                            //     if(ResponsiveWidget.isSmallScreen(context))
                            //       Get.back();
                            //     navigationController.navigateTo(item.route);
                            //   }
                            // }
                            // }
                          ))
                      .toList(),
                ),
              ],
            ),
          );
  }
}