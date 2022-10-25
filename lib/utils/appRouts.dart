import 'package:flutter/material.dart';

import '../screen/detail_room.dart';
import '../screen/home_page.dart';
import '../screen/login.dart';
import '../screen/login_Filed.dart';
import '../screen/sign_up.dart';

abstract class RouteName {
  static const home = '/';
  static const detail = '/detail';
  static const login1 = '/login1';
  static const login2 = '/login2';
  static const signUp = '/signUp';
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return MaterialPageRoute(builder: (_) => HomeWidget());
      case RouteName.detail:
        return MaterialPageRoute(builder: (_) => DetailPageWidget());
      case RouteName.login2:
        return MaterialPageRoute(builder: (_) => LoginFiledWidget());
      case RouteName.signUp:
        return MaterialPageRoute(builder: (_) => SignUpWidget());
      case RouteName.login1:
        return MaterialPageRoute(builder: (_) => LoginPageWidget() );
      default:
        return MaterialPageRoute(builder: (_) => Scaffold());
    }
  }
}
