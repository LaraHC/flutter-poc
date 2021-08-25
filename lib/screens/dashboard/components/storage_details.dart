import 'package:admin/screens/dashboard/components/storage_info_titles.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'storage_info_card.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: transparentWhite,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //SizedBox(height: defaultPadding),
          //LineChartWidget(),
          StorageInfoTitles(
              patientIDtitle: "Patient ID",
              patientID: "esijd84",
              customID: "Patient 34",
              status: "active"),
          Divider(
            color: secondaryTextColor,
          ),
          StorageInfoCard(
              yearsTitle: "Years",
              yearsInfo: " 32",
              sexTitle: "Sex",
              sexInfo: " Male",
              heightTitle: "Height",
              heightInfo: " 175cm"),
        ],
      ),
    );
  }
}
