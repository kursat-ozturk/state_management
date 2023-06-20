import 'package:flutter/material.dart';

class MyChildWidget extends StatelessWidget {
  final Function? onWidgetClicked;
  final String? label;
  const MyChildWidget({super.key, this.onWidgetClicked, this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onWidgetClicked!();
      },
      child: Text(label!),
    );
  }
}
