import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppBarIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            CupertinoIcons.add,
            color: Theme.of(context).textSelectionColor,
            size: 28,
          ),
        ],
      ),
    );
  }
}
