import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class StorageInfoTitles extends StatelessWidget {
  const StorageInfoTitles({
    Key? key,
    required this.patientID,
    required this.customID,
    required this.status,
    required this.associatedCarers,
  }) : super(key: key);

  final String patientID, customID, status, associatedCarers;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      child: Center(
        child: Column(
          children: [
            Text(
              "Patient ID",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: primaryTextColor,
              ),
            ),
            SizedBox(height: profilePadding),
            Text(
              customID,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              patientID,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: defaultPadding),
            Container(
              padding: EdgeInsets.all(defaultPadding * 0.5),
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
            SizedBox(height: profilePadding),
            Text(
              associatedCarers,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
