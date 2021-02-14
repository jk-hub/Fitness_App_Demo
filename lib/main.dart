import 'package:Fitness_app_demo/screens/dashboard.dart';
import 'package:Fitness_app_demo/screens/detailed_screen.dart';
import 'package:Fitness_app_demo/screens/home_page.dart';
import 'package:Fitness_app_demo/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: routing,
    );
  }

  Route routing(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return PageTransition(
          child: HomePageScreen(),
          type: PageTransitionType.rightToLeftWithFade,
        );
        break;
      case '/dashboard':
        return PageTransition(
          child: DashboardScreen(),
          type: PageTransitionType.rightToLeftWithFade,
        );
        break;
      case '/detailScreen':
        return PageTransition(
          child: DetailScreen(),
          type: PageTransitionType.rightToLeftWithFade,
        );
        break;

      default:
        return PageTransition(
          child: SplashScreen(),
          type: PageTransitionType.rightToLeftWithFade,
        );
        break;
    }
  }
}
