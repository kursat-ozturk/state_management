import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/service.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        margin: const EdgeInsets.only(right: 10),
        child: Row(children: [
          const Icon(Icons.notifications, color: Colors.white, size: 25),
          Consumer<ColorService>(builder: (context, cService, child) {
            return Container(
                height: 30,
                padding: const EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: cService.color),
                child:
                    Consumer<ValueService>(builder: (context, vService, child) {
                  return Text(vService.count.toString());
                }));
          })
        ]));
  }
}
