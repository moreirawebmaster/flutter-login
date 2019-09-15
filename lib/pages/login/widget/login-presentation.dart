import 'package:flutter/material.dart';
import 'package:flutter_login/pages/login/provider/login-inhried.dart';
import 'package:flutter_login/widgets/circle-button.dart';

class LoginPresentation extends StatefulWidget {
  LoginPresentation({Key key}) : super(key: key);

  _LoginPresentationState createState() => _LoginPresentationState();
}

class _LoginPresentationState extends State<LoginPresentation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor.withOpacity(0.8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.headset_mic,
              color: Colors.white,
              size: 42,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Awesome', style: TextStyle(color: Colors.white, fontSize: 20),),
                SizedBox(width: 5),
                Text('App', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20))
              ],
            ),

            SizedBox(height: 150),
            CircleButton(
             text: Text('SIGN UP', style: TextStyle(color: Colors.white)),
              borderColor: Colors.white,
              onTap: () {
                LoginInherited.of(context).goTo(0);
              },
            ),
            SizedBox(height: 30),
            CircleButton(
              text: Text('LOGIN', style: TextStyle(color: Theme.of(context).accentColor)),
              color: Colors.white,
              onTap: () {
                LoginInherited.of(context).goTo(2);
              },
            ),
          ],
        ),
      ),
    );
  }
}
