import 'package:flutter/material.dart';
import 'package:web_dashboard_template/pages/overview/widgets/info_card.dart';


class OverviewCardsLargeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   double _width = MediaQuery.of(context).size.width;

    return  Row(
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
                SizedBox(
                  width: _width / 64,
                ),
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
                  onTap: () {},
                  topColor: Colors.blueGrey,
                ),
              ],
            );
  }
}