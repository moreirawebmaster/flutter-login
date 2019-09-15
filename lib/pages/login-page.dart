import 'package:flutter/material.dart';
import 'package:flutter_login/pages/login/provider/login-inhried.dart';
import 'package:flutter_login/pages/login/widget/login-create-account.dart';
import 'package:flutter_login/pages/login/widget/login-presentation.dart';
import 'package:flutter_login/pages/login/widget/login-signin.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          'assets/images/montain.jpeg',
          fit: BoxFit.fill,
        ),
        PageView(
          controller: LoginInherited.of(context).controller,
          children: <Widget>[LoginCreateAccount(), LoginPresentation(), LoginSignin()],
        )
      ],
    );
  }
}
