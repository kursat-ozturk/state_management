import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home_page.dart';
import 'services/service.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ValueService(),
        ),
        ChangeNotifierProvider(
          create: (_) => ColorService(),
        ),
        Provider(
          create: (_) => CombinedService(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    ),
  );
}
