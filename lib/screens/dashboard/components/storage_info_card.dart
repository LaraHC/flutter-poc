import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard(
      {Key? key,
      required this.yearsTitle,
      required this.yearsInfo,
      required this.sexTitle,
      required this.sexInfo,
      required this.heightTitle,
      required this.heightInfo})
      : super(key: key);

  final String yearsTitle,
      yearsInfo,
      sexTitle,
      sexInfo,
      heightTitle,
      heightInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultPadding),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(yearsTitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.w700)),
                      Text(yearsInfo),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Text(sexTitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.w700)),
                      Text(sexInfo),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Text(heightTitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.w700)),
                      Text(heightInfo)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
