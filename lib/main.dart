import 'package:flutter/material.dart';

import 'package:myplants/client/pages/homepage.dart';
import 'package:myplants/constants/apptheme.dart';
import 'package:myplants/routes/router_generator.dart';

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
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}
