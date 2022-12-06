import 'package:flutter/material.dart';

import 'screens/landing.dart';
import 'screens/sign_in.dart';
// import 'screens/sign_up.dart';
// import 'screens/home.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  final name = settings.name;

  return MaterialPageRoute(
    builder: routes[name]!,
    settings: settings,
  );
}

var routes = <String, WidgetBuilder>{
  Landing.routeName: (ctx) => const Landing(),
  SignIn.routeName: (ctx) => const SignIn(),
  // SignUp.routeName: (ctx) => const SignUp(),
  // Home.routeName: (ctx) => const Home(),
};