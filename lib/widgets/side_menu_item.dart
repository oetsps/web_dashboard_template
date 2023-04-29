import 'package:flutter/material.dart';
import 'package:web_dashboard_template/controllers/menu_controller.dart';
import 'package:web_dashboard_template/helpers/reponsiveness.dart';
import 'package:web_dashboard_template/widgets/horizontal_menu_item.dart';
import 'package:web_dashboard_template/widgets/vertical_menu_item.dart';
import 'package:get/get.dart';


class SideMenuItem extends StatelessWidget {
  final String itemName;
  // final Function onTap;
  final String itemRoute;

  const SideMenuItem({super.key, required this.itemName, /*required this.onTap,*/ required this.itemRoute});

  // const SideMenuItem({ Key key,@required this.itemName,@required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(ResponsiveWidget.isCustomSize(context)){
      // return VerticalMenuItem(itemName: itemName, onTap: onTap,);
      return VerticalMenuItem(itemName: itemName, itemRoute: itemRoute,);
    }else{
      // return HorizontalMenuItem(itemName: itemName, onTap: onTap,);
      return HorizontalMenuItem(itemName: itemName, itemRoute: itemRoute);
    }
    // return HorizontalMenuItem(itemName: itemName, /*onTap: onTap,*/ itemRoute: itemRoute);
  }
}