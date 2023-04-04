import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/route_name.dart';
import 'package:portfolio/view/screen/about_me/about_me.dart';
import 'package:portfolio/view/screen/exprience/experience.dart';
import 'package:portfolio/view/splash_screen_view.dart';
import 'package:portfolio/repository/app_constant.dart';
import 'package:portfolio/view_model/page_selector_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<PageSelectorViewModel>(
            create: (_) => PageSelectorViewModel()),
      ],
      child: const MyApp()));
}
const primaryColor = Color.fromRGBO(47, 49, 64, 1.0);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: AppConstants.appTitle,
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: primaryColor
      ),
    );
  }
}





final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreenView();
      },
    ),
    GoRoute(
      path: RouteName.aboutMe,
      builder: (BuildContext context, GoRouterState state) {
        return const AboutMe();
      },
    ),
    GoRoute(
      path: RouteName.experience,
      builder: (BuildContext context, GoRouterState state) {
        return const Experience();
      },
    ),
  ],
);



