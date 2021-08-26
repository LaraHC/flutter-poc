import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/components/recent_charts.dart';
import 'package:admin/screens/dashboard/components/recent_files.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_fields.dart';

/// This is the main application widget.
class DashboardTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: SizedBox.fromSize(
        child: MaterialApp(
          home: Tabs(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<Tabs> {
  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Align(
        alignment: Alignment.center,
        child: Text("TEXT"),
      ),
    ),
    Tab(
      child: Align(
        alignment: Alignment.center,
        child: Text("CHARTS"),
      ),
    ),
    Tab(
      child: Align(
        alignment: Alignment.center,
        child: Text("DATATABLES"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // here the desired height
          child: AppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            backgroundColor: darkPurple,
            elevation: 0,
            bottom: TabBar(
              indicatorPadding: EdgeInsets.zero,
              labelColor: primaryTextColor,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelColor: primaryColor,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: secondaryColor),
              tabs: myTabs,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SizedBox(
              child: MyFiles(),
            ),
            SizedBox(
              child: RecentCharts(),
            ),
            SizedBox(
              child: RecentFiles(),
            ),
          ],
        ),
      ),
    );
  }
}
