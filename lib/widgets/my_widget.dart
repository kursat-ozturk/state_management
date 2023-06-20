import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/service.dart';
import 'my_child_widget.dart';

class MyWidget extends StatelessWidget {
  final String? label;
  final Color? color;

  const MyWidget({super.key, this.label, this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Consumer<ValueService>(
          builder: (context, vService, child) {
            return Text(
              '${label!}, ${vService.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            );
          },
        ),
        MyChildWidget(
          label: "Click to update number!",
          onWidgetClicked: () {
            var valueService =
                Provider.of<ValueService>(context, listen: false);
            valueService.count++;
          },
        ),
        MyChildWidget(
          label: "Click to update color",
          onWidgetClicked: () {
            var colorService =
                Provider.of<ColorService>(context, listen: false);
            colorService.color = color!;
          },
        )
      ],
    );
  }
}
