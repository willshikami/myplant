import 'package:flutter/material.dart';
import 'package:myplants/ui/widgets/appbar.dart';
import 'package:myplants/ui/widgets/apptitle.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 8,
          ),
          child: Column(
            children: <Widget>[
              AppBarIcons(),
              AppTitle(),
            ],
          ),
        ),
      ),
    );
  }
}
