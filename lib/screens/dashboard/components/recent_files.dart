import 'package:admin/models/RecentFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:admin/screens/main/components/myDataTable.dart';
import '../../../constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

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
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Card(
            child: new ListTile(
              leading: new Icon(Icons.search),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: 'Search', border: InputBorder.none),
              ),
              trailing: new IconButton(
                  onPressed: onPressed(), icon: new Icon(Icons.cancel)),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: MyDataTable(),
          ),
        ],
      ),
    );
  }

  onPressed() {}
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title!),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.date!)),
      DataCell(Text(fileInfo.size!)),
    ],
  );
}

DataColumn recentFileDataHeaders(RecentHeader headerInfo) {
  return DataColumn(label: Text(headerInfo.header!));
}
