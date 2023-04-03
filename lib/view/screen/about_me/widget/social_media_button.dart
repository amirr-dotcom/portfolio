import 'package:portfolio/util/url_launcher.dart';
import 'package:portfolio/widget/animated_opacity_when_hovered.dart';
import 'package:portfolio/widget/delayed_widget.dart';
import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final String url;
  final IconData iconData;
  final double size;
  final int index;
  final String? text;

  const SocialMediaButton({
    required this.url,
    required this.iconData,
    required this.index,
    this.text,
    this.size = 30.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DelayedWidget(
      delayDuration: Duration(milliseconds: 1500 + ((index + 1) * 125)),
      from: DelayFrom.bottom,
      child: AnimatedOpacityWhenHovered(
        child: TextButton(
          onPressed: () => launchUrl(url),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                iconData,
                color: Colors.white,
                size: size,
              ),
              text==null? Container(
                width: 0,
              ): Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(text!),
              )
            ],
          ),
        ),
      ),
    );
  }
}
