import 'package:flutter/material.dart';
import 'package:web_dashboard_template/constants/controllers.dart';
import 'package:web_dashboard_template/controllers/menu_controller.dart';
import 'package:get/get.dart';
import 'package:web_dashboard_template/constants/style.dart';

import 'custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  // final Function onTap;
  final String itemRoute;

  const VerticalMenuItem({super.key, required this.itemName, /*required this.onTap*/ required this.itemRoute});
  // const VerticalMenuItem({Key key, this.itemName, this.onTap})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MyMenuController menuController = Get.find<MyMenuController>();
    return InkWell(
        // onTap: onTap(),
        onTap: () {
          if (!menuController.isActive(itemName)) {
            menuController.changeActiveItemTo(itemName);
            navigationController.navigateTo(itemRoute);
          }
        },
        onHover: (value) {
          value
              ? menuController.onHover(itemName)
              : menuController.onHover("not hovering");
        },
        child: Obx( () => Container(
              color: menuController.isHovering(itemName)
                  ? lightGrey.withOpacity(.1)
                  : Colors.transparent,
              child: Row(
                children: [
                  Visibility(
                    visible: menuController.isHovering(itemName) ||
                        menuController.isActive(itemName),
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: Container(
                      width: 3,
                      height: 72,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: menuController.returnIconFor(itemName),
                          ),
                          if (!menuController.isActive(itemName))
                            Flexible(
                                child: CustomText(
                              text: itemName,
                              color: menuController.isHovering(itemName)
                                  ? Colors.white
                                  : lightGrey,
                              size: 18,
                              weight: FontWeight.w600,
                            ))
                          else
                            Flexible(
                                child: CustomText(
                              text: itemName,
                              color: Colors.white,
                              size: 18,
                              weight: FontWeight.bold,
                            ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
    );
  }
}
