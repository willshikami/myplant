import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myplants/constants/widgets/app_bar_icons.dart';
import 'package:myplants/constants/widgets/custom_container.dart';
import 'package:myplants/routes/routes.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomContainer(
          childWidget: Column(
            children: <Widget>[
              Container(
                child: AppBarIcons(
                  appBarActionCallback: () => Navigator.pushNamed(
                    context,
                    Routes.home,
                  ),
                  appBarIcon: CupertinoIcons.back,
                  iconSize: 28,
                  iconColor: Theme.of(context).textSelectionColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
