import 'package:flutter/material.dart';
import 'package:flutter_login/pages/login/provider/login-inhried.dart';
import 'package:flutter_login/widgets/circle-button.dart';
import 'package:flutter_login/widgets/text-field-labeled.dart';

class LoginCreateAccount extends StatefulWidget {
  LoginCreateAccount({Key key}) : super(key: key);

  _LoginCreateAccountState createState() => _LoginCreateAccountState();
}

class _LoginCreateAccountState extends State<LoginCreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.headset_mic,
              color: Theme.of(context).accentColor,
              size: 42,
            ),
            SizedBox(height: 160),
            TextFieldLabeled(text: 'EMAIL'),
            SizedBox(height: 20),
            TextFieldLabeled(text: 'PASSWORD'),
            SizedBox(height: 20),
            TextFieldLabeled(text: 'CONFIRM PASSWORD'),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                'Already have an account?',
                style: TextStyle(color: Theme.of(context).accentColor, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
            CircleButton(
              color: Theme.of(context).accentColor,
              text: Text(
                'SIGN UP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){
                LoginInherited.of(context).goTo(2);
              },
            )
          ],
        ),
      ),
    );
  }
}
