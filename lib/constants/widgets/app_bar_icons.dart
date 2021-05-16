import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarIcons extends StatelessWidget {
  final Function appBarActionCallback;
  final String appBarIconPath;

  const AppBarIcons({
    Key key,
    @required this.appBarActionCallback,
    @required this.appBarIconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: appBarActionCallback,
      child: SvgPicture.asset(
        appBarIconPath,
        width: 28,
      ),
    );
  }
}
