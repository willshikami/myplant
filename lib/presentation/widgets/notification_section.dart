import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myplants/constants/apptheme.dart';
import 'package:myplants/data/dummy_data.dart';

class Notifications extends StatelessWidget {
  final String notificationTime;
  final String notificationDate;
  final String notificationImage;
  final String notificationPlantName;

  const Notifications({
    Key key,
    @required this.notificationTime,
    @required this.notificationDate,
    @required this.notificationImage,
    @required this.notificationPlantName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationSection();
  }
}

class NotificationSection extends StatelessWidget {
  const NotificationSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          // Section date title
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Today',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Theme.of(context).highlightColor),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 18,
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).splashColor,
            ),
            child: Column(
              children: <Widget>[
                // Notification time
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    '2 mins ago',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: CachedNetworkImage(
                        imageUrl: demoPlants[0].plantImage,
                        height: 42,
                        width: 42,
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Container(
                      child: RichText(
                        text: TextSpan(
                            text: demoPlants[0].plantName,
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      color: appTheme().primaryColor,
                                    ),
                            children: [
                              TextSpan(
                                text: ' is ready for watering',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(
                                      color: appTheme().highlightColor,
                                    ),
                              ),
                            ]),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
