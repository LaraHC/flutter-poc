import 'package:admin/screens/dashboard/components/barChart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'lineChart.dart';

class RecentCharts extends StatelessWidget {
  const RecentCharts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: bgColor,
        //borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Charts",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: defaultPadding),
                LineChartWidget(),
                SizedBox(height: defaultPadding),
                BarChartWidget(),
                SizedBox(height: defaultPadding),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
