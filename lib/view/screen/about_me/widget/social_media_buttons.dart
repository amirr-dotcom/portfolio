import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/app_manager/helper/responsive/responsive.dart';
import 'package:portfolio/repository/app_constant.dart';
import 'package:portfolio/view/screen/about_me/widget/social_media_button.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    const alignment =  WrapAlignment.start;
    const wrapAlignment = Alignment.center;

    return Container(
      alignment: wrapAlignment,
      child: Wrap(
        spacing: Responsive.isSmallScreen(context)? 8:16.0,
        runSpacing: Responsive.isSmallScreen(context)? 8:16.0,
        alignment: alignment,
        children: const [
          SocialMediaButton(
            index: 0,
            url: AppConstants.gitHubProfileURL,
            iconData: FontAwesomeIcons.github,
          ),
          SocialMediaButton(
            index: 1,
            url: AppConstants.eMail,
            iconData: Icons.alternate_email_rounded,
          ),
          SocialMediaButton(
            index: 2,
            url: AppConstants.linkedInProfileURL,
            iconData: FontAwesomeIcons.linkedin,
          ),
          SocialMediaButton(
            index: 4,
            url: AppConstants.facebookProfileURL,
            iconData: FontAwesomeIcons.facebook,
          ),
          SocialMediaButton(
            index: 5,
            url: AppConstants.instagramProfileURL,
            iconData: FontAwesomeIcons.instagram,
          ),
        ],
      ),
    );
  }
}
