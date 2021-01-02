import 'package:flutter/material.dart';
import 'package:myplants/client/widgets/app_bar_actions.dart';
import 'package:myplants/client/widgets/app_title.dart';

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
              AppBarActions(),
              AppTitle(),
            ],
          ),
        ),
      ),
    );
  }
}
