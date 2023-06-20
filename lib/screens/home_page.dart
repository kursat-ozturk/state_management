import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/widgets/notification_widget.dart';

import '../services/service.dart';
import '../widgets/my_widget.dart';
import 'next_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const [NotificationWidget()]),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: MyWidget(color: Colors.green, label: 'Top Widget'),
            ),
          ),
          const Expanded(
            child: Center(
              child: MyWidget(color: Colors.purple, label: 'Bottom Widget'),
            ),
          ),
          TextButton(
            onPressed: () {
              var combinedService =
                  Provider.of<CombinedService>(context, listen: false);
              combinedService.setBothColorAndValue(context, Colors.orange, 100);
            },
            child: const Text('Change Both'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const NextPage()),
              );
            },
            child: const Text('Go to another page'),
          ),
        ],
      ),
    );
  }
}
