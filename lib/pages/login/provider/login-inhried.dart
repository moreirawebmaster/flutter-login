import 'package:flutter/material.dart';

class LoginInherited extends InheritedWidget {
  
  PageController controller = PageController(initialPage: 0);

  Widget child;

  LoginInherited({this.child}) : super(child: child);

  static LoginInherited of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(LoginInherited) as LoginInherited;
  }

  void goTo(int page) {
    controller.animateToPage(page, curve: Curves.ease, duration: Duration(milliseconds: 1000));
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return oldWidget != this;
  }
}
