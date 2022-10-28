import 'package:flutter/material.dart';

import '../Presentaion/Screens/HomeDashBoard/home_dashboard.dart';
import '../Presentaion/Screens/Onboarding/onBoarding_screen.dart';
import '../Presentaion/Screens/Search/search_screen.dart';

class Routes {
  static const String splashRoute = '/';
  static const String homeRoute = '/home';
  static const String searchRoute = '/searchRoute';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    // final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeDashBoard());
      case Routes.searchRoute:
        return MaterialPageRoute(builder: (_) => const SearchScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('No Route Found'),
              ),
              body: const Center(
                child: Text('No Route Found'),
              ),
            ));
  }
}
