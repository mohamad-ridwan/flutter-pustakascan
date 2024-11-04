import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wireframe_mobile/common/pages/splash_page.dart';
import 'package:wireframe_mobile/home/view/about_page.dart';
import 'package:wireframe_mobile/home/view/home_page.dart';
import 'package:wireframe_mobile/scanner/view/scanner_page.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<AboutRoute>(path: 'about'),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@TypedGoRoute<SplashRoute>(path: '/splash')
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashPage();
  }
}

class AboutRoute extends GoRouteData {
  const AboutRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AboutPage();
  }
}

@TypedGoRoute<ScannerRoute>(path: '/scan')
class ScannerRoute extends GoRouteData {
  const ScannerRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ScannerPage();
  }
}
