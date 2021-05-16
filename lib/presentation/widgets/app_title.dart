import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            'My Plants',
            style: Theme.of(context).textTheme.headline1.copyWith(
                  color: Theme.of(context).highlightColor,
                ),
          )
        ],
      ),
    );
  }
}
