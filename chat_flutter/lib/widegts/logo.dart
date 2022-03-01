import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme/theme.dart';

class Logo extends StatelessWidget {
  const Logo({Key key, @required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final darkMode = context.watch<ThemeChanger>();
    return Center(
      child: Container(
        width: 170,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Icon(Icons.message,
                color: darkMode.darkTheme ? Colors.black : Color(0xff060a37),
                size: 70),
            Text(
              this.title,
              style: TextStyle(
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
