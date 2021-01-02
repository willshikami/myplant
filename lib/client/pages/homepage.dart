import 'package:flutter/material.dart';
import 'package:myplants/client/widgets/app_bar_actions.dart';
import 'package:myplants/client/widgets/app_title.dart';
import 'package:myplants/constants/widgets/custom_container.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: CustomContainer(
          childWidget: Column(
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
