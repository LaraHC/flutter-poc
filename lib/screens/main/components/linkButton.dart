import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'form.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
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
      label: Text(buttonText),
      icon: Icon(Icons.edit),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(16.0),
        primary: darkGrey,
      ),
    );
  }
}
