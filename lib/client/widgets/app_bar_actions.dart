import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myplants/constants/widgets/app_bar_icons.dart';

class AppBarActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppBarIcons(
            appBarActionCallback: () {},
            appBarIcon: CupertinoIcons.bell,
            iconSize: 28,
            iconColor: Theme.of(context).textSelectionColor,
          ),
          SizedBox(
            width: 32,
          ),
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
