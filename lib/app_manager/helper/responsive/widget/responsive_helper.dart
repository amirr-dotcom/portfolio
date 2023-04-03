
import 'package:flutter/material.dart';
import 'package:portfolio/app_manager/helper/responsive/responsive.dart';

class ResponsiveHelperWidget extends StatelessWidget {
  final Widget? mobile;
  final Widget? desktop;

  const ResponsiveHelperWidget({Key? key, this.mobile, this.desktop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (Responsive.isSmallScreen(context)) {
        return mobile!;
      } else {
        return desktop!;
      }
    });
  }
}
