import 'package:flutter/material.dart';
import 'package:web_dashboard_template/pages/overview/widgets/info_card.dart';


class OverviewCardsMediumScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   double _width = MediaQuery.of(context).size.width;

    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
                  children: [
                    InfoCard(
                      isActive: true,
                      title: "Rides in progress",
                      value: "7",
                      onTap: () {},
                  topColor: Colors.orange,

                    ),
                    SizedBox(
                      width: _width / 64,
                    ),
                    InfoCard(
                      isActive: true,
                      title: "Packages delivered",
                      value: "17",
                  topColor: Colors.lightGreen,

                      onTap: () {},
                    ),
                  
                  ],
                ),
            SizedBox(
                      height: _width / 64,
                    ),
                  Row(
                  children: [
             
                    InfoCard(
                      isActive: true,
                      title: "Cancelled delivery",
                      value: "3",
                  topColor: Colors.redAccent,

                      onTap: () {},
                    ),
                    SizedBox(
                      width: _width / 64,
                    ),
                    InfoCard(
                      isActive: true,
                      title: "Scheduled deliveries",
                      value: "32",
                      topColor: Colors.blueGrey,
                      onTap: () {},
                    ),
                
                  ],
                ),
      ],
    );
  }
}