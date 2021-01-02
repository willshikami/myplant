import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myplants/client/widgets/notification_section.dart';
import 'package:myplants/constants/widgets/app_bar_icons.dart';
import 'package:myplants/constants/widgets/custom_container.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: CustomContainer(
          childWidget: Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    child: AppBarIcons(
                      appBarActionCallback: () => Navigator.pop(context),
                      appBarIcon: CupertinoIcons.back,
                      iconSize: 28,
                      iconColor: Theme.of(context).textSelectionColor,
                    ),
                  ),
                  SizedBox(
                    width: 96,
                  ),
                  Container(
                    child: Text(
                      'Notifications',
                      style: Theme.of(context).textTheme.headline2.copyWith(
                          color: Theme.of(context).textSelectionColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Notifications(
                      notificationDate: null,
                      notificationImage: null,
                      notificationPlantName: null,
                      notificationTime: null,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
