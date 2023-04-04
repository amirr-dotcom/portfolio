import 'package:flutter/material.dart';
import 'package:portfolio/repository/app_constant.dart';
import 'package:portfolio/util/url_launcher.dart';
import 'package:portfolio/widget/delayed_widget.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return  DelayedWidget(
      delayDuration: const Duration(milliseconds: 1500),
      from: DelayFrom.top,
      child: TextButton(
        onPressed: () => launchUrl(AppConstants.flutterWebSiteURL),
        style: TextButton.styleFrom(
          backgroundColor: Colors.blueAccent.withOpacity(0.2)
        ),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const FlutterLogo(),
            Text(
              AppConstants.profile,
              style: theme.textTheme.titleMedium?.copyWith(
                  color: Colors.blueAccent
              ),
            ),
          ],
        ),
      ),
    );
  }
}
