import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../responsive.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: primaryButton,
        padding: EdgeInsets.symmetric(
          horizontal: defaultPadding * 1.5,
          vertical:
          defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
        ),
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
      ),
      onPressed: () {},
      icon: Icon(Icons.add),
      label: Text("Add New"),
    );
  }
}
