import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myplants/constants/widgets/app_bar_icons.dart';
import 'package:myplants/routes/routes.dart';

class AppBarActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Notifications page
          AppBarIcons(
            appBarActionCallback: () => Navigator.pushNamed(
              context,
              Routes.notifications,
            ),
            appBarIcon: CupertinoIcons.bell,
            iconSize: 28,
            iconColor: Theme.of(context).textSelectionColor,
          ),
          SizedBox(
            width: 32,
          ),
          // Add plant page
          AppBarIcons(
            appBarActionCallback: () {},
            appBarIcon: CupertinoIcons.add,
            iconSize: 28,
            iconColor: Theme.of(context).textSelectionColor,
          ),
        ],
      ),
    );
  }
}
