import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget childWidget;

  const CustomContainer({
    Key key,
    @required this.childWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 8,
      ),
      child: childWidget,
    );
  }
}
