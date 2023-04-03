
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/route_name.dart';
import 'package:portfolio/view/widget/background.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      if(mounted){
        context.pushReplacement(RouteName.aboutMe);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Container(),
      ),
    );
  }
}

