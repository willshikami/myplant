import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myplants/business/utils/utils.dart';
import 'package:myplants/constants/strings_and_paths.dart';
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
            appBarIconPath: notificationAssetPath,
          ),
          SizedBox(
            width: 48,
          ),
          // Add plant page
          AppBarIcons(
            appBarActionCallback: () {
              Utils.addPlants(context);
            },
            appBarIconPath: addAssetPath,
          ),
        ],
      ),
    );
  }
}
