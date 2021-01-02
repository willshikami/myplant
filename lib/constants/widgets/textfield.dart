import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String fieldTitle;
  const CustomTextField({
    Key key,
    @required this.fieldTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldTitle,
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Theme.of(context).textSelectionColor),
        ),
        SizedBox(height: 12),
        Container(
          height: 46,
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            ),
          ),
        ),
      ],
    );
  }
}
