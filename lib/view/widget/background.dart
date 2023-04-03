import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg.png"),
                fit: BoxFit.fill
            )
        ),
        child: Container(
          color: Colors.black54,
          child:  child,
        ),
      ),
    );
  }
}
