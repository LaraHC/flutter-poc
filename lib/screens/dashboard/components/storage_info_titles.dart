import 'package:admin/screens/main/components/linkButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class StorageInfoTitles extends StatelessWidget {
  const StorageInfoTitles(
      {Key? key,
      required this.patientIDtitle,
      required this.patientID,
      required this.customID,
      required this.status})
      : super(key: key);

  final String patientIDtitle, patientID, customID, status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      child: Center(
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(Icons.badge, size: 24.0, color: darkGrey),
                  ),
                  TextSpan(
                    text: patientIDtitle,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: primaryTextColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: profilePadding),
            Text(
              customID,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              patientID,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: profilePadding),
            LinkButton(
              buttonText: "Edit data",
            ),
            SizedBox(height: profilePadding),
            Container(
              padding: EdgeInsets.all(defaultPadding * 0.3),
              decoration: BoxDecoration(
                color: primaryButton.withOpacity(0.1),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Text(
                status,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
