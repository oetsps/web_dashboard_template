import 'package:flutter/material.dart';
import 'package:web_dashboard_template/constants/controllers.dart';
import 'package:web_dashboard_template/helpers/reponsiveness.dart';
import 'package:web_dashboard_template/pages/clients/widgets/clients_table.dart';
import 'package:web_dashboard_template/widgets/custom_text.dart';
import 'package:get/get.dart';

import '../../constants/style.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
         return Container(
                child: Column(
                children: [
                 Obx(() => Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top:
                        ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                        child: CustomText(
                          text: menuController.activeItem.value,
                          size: 24,
                          weight: FontWeight.bold,
                          color: active.withOpacity(.7),
                        )
                        ),
                    ],
                  ),),

                  Expanded(child: ListView(
                    children: [
                      Container(
                        height: 800,
                        child: Clientstable()
                      ),
                    ],
                  )),

                  ],
                ),
              );
  }
}