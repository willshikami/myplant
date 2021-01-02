import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Function buttonCallback;
  final String buttonTitle;

  const PrimaryButton({
    Key key,
    @required this.buttonCallback,
    @required this.buttonTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonCallback,
      child: Container(
        width: double.infinity,
        height: 48.0,
        margin: EdgeInsets.symmetric(
          horizontal: 32,
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                .copyWith(color: Theme.of(context).splashColor),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
