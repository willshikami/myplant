import 'package:flutter/material.dart';

import 'package:myplants/ui/pages/homepage.dart';
import 'package:myplants/constants/apptheme.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: appTheme(),
    );
  }
}
