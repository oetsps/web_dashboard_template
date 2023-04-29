import 'package:flutter/material.dart';
import 'package:web_dashboard_template/constants/style.dart';
import 'package:web_dashboard_template/helpers/reponsiveness.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context,  GlobalKey<ScaffoldState> key) =>
AppBar(
        leading: !ResponsiveWidget.isSmallScreen(context) ? Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              // child: Image.asset("assets/icons/logo.png", width: 28,),
              child: Image.asset("assets/images/profile.png", width: 28, fit: BoxFit.contain,),
            ),
          ],
        ) : IconButton(icon: const Icon(Icons.menu), onPressed: (){
          key.currentState!.openDrawer();
        }),
        title: Row(
          children: [
            Visibility(
              visible: !ResponsiveWidget.isSmallScreen(context),
              child: CustomText(text: "Dashboard", color: lightGrey, size: 20, weight: FontWeight.bold,)),
            Expanded(child: Container()),
            IconButton(icon: Icon(Icons.settings, color: dark,), onPressed: (){}),

            Stack(
              children: [
                IconButton(icon: Icon(Icons.notifications, color: dark.withOpacity(.7),), onPressed: (){}),
                Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: light, width: 2)
                    ),
                  ),
                )
              ],
            ),

          Container(
                    width: 1,
                    height: 22,
                    color: lightGrey,
                  ),
            const SizedBox(width: 24,),
            CustomText(text: "Bije Sibolonbolon", color: lightGrey, size: 18, weight: FontWeight.w600,),
            const SizedBox(width: 16,),
            Container(
                decoration: BoxDecoration(
                  color: active.withOpacity(.5),
                  borderRadius: BorderRadius.circular(30)
                ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundColor: light,
                  child: Icon(Icons.person_outline, color: dark,),
                  ),
              ),
            )
          ],
        ),
        iconTheme: IconThemeData(color: dark),
        elevation: 0,
        backgroundColor: Colors.transparent,
      );