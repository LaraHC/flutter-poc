import 'package:admin/models/RecentFile.dart';
import 'package:admin/screens/dashboard/components/recent_files.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class MyDataTable extends StatelessWidget {
  const MyDataTable({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DataTable(
      horizontalMargin: 0,
      columnSpacing: defaultPadding,
      columns: List.generate(
        demoTableHeaders.length,
        (index) => recentFileDataHeaders(demoTableHeaders[index]),
      ),
      rows: List.generate(
        demoRecentFiles.length,
        (index) => recentFileDataRow(demoRecentFiles[index]),
      ),
    );
  }
}
