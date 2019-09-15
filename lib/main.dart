import 'package:flutter/material.dart';
import 'package:flutter_login/pages/login-page.dart';

import 'pages/login/provider/login-inhried.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: Colors.red[300]),
      title: 'Awesome App',
      home: Material(
        child: LoginInherited(child: LoginPage()),
      ),
    );
  }
}
