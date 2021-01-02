import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {
  final Function appBarActionCallback;
  final IconData appBarIcon;
  final Color iconColor;
  final double iconSize;

  const AppBarIcons({
    Key key,
    @required this.appBarActionCallback,
    @required this.appBarIcon,
    @required this.iconColor,
    @required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: appBarActionCallback,
      child: Container(
        child: Icon(
          appBarIcon,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
