import 'package:admin/constants.dart';
import 'package:admin/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../../responsive.dart';
import '../textStyles.dart';
import '../form.dart';

class SuccessButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool disabled;
  final bool busy;
  final void Function()? onPressed;
  final bool outline;

  const SuccessButton({
    Key? key,
    required this.title,
    required this.icon,
    this.disabled = false,
    this.busy = false,
    this.onPressed,
  })  : outline = false,
        super(key: key);

  const SuccessButton.outline({
    required this.title,
    required this.icon,
    this.onPressed,
  })  : disabled = false,
        busy = false,
        outline = true;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: Icon(icon, color: !outline ? HumanuiWhite : HumanuiSuccess),
      label: Text(title,
          style: bodyStyle.copyWith(
            fontWeight: !outline ? FontWeight.bold : FontWeight.w400,
            color: !outline ? Colors.white : HumanuiSuccess,
          )),
      style: TextButton.styleFrom(
          primary: !outline
              ? (!disabled ? HumanuiSuccess : HumanuiGrey)
              : Colors.transparent,
          padding: EdgeInsets.symmetric(
            horizontal: defaultPadding * 1.5,
            vertical: defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
          ),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
              side: BorderSide(color: HumanuiSuccess, width: !outline ? 0 : 1)),
          elevation: 0),
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('AlertDialog description'),
          actions: <Widget>[
            MyForm(),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}
