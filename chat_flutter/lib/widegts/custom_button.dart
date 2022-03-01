import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme/theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key key, @required this.onPressed, @required this.text})
      : super(key: key);
  final Function onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    final darkMode = context.watch<ThemeChanger>();
    return RaisedButton(
      elevation: 2,
      highlightElevation: 5,
      color: darkMode.darkTheme ? Colors.black : Color(0xff060a37),
      shape: StadiumBorder(),
      onPressed: this.onPressed,
      child: Container(
        width: double.infinity,
        height: 45,
        child: Center(
          child: Text(
            this.text,
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
