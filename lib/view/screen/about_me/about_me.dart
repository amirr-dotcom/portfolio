import 'package:flutter/material.dart';
import 'package:portfolio/app_manager/helper/responsive/responsive.dart';
import 'package:portfolio/app_manager/helper/responsive/widget/responsive_screen.dart';
import 'package:portfolio/model/option.dart';
import 'package:portfolio/util/app_constant.dart';
import 'package:portfolio/view/screen/about_me/widget/bottom_details.dart';
import 'package:portfolio/view/screen/about_me/widget/profile_widget.dart';
import 'package:portfolio/view/screen/about_me/widget/summary.dart';
import 'package:portfolio/view/widget/background.dart';
import 'package:portfolio/view/widget/page_selector.dart';
import 'package:portfolio/widget/delayed_widget.dart';
import 'package:portfolio/view/screen/about_me/widget/social_media_buttons.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    List<Option> options=[
      Option(
          title: "Address",
          value: AppConstants.address
      ),
      Option(
          title: "Email",
          value: AppConstants.email
      ),
      Option(
          title: "Contact",
          value: AppConstants.contact
      ),
    ];
    return SafeArea(
      child: Scaffold(
        body: Background(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PageSelector(),
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0,),
                      child: MyResponsiveScreen(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              runAlignment: WrapAlignment.spaceBetween,
                              spacing: 40,
                              runSpacing: 20,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    DelayedWidget(
                                      delayDuration: const Duration(milliseconds: 1000),
                                      from: DelayFrom.right,
                                      child: SelectableText(
                                        AppConstants.landingTitle,
                                        style: theme.textTheme.headlineLarge?.copyWith(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                    DelayedWidget(
                                      delayDuration: const Duration(milliseconds: 1500),
                                      from: DelayFrom.top,
                                      child: SelectableText(
                                        AppConstants.landingMotto.toLowerCase(),
                                        style: theme.textTheme.titleMedium?.copyWith(
                                            color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const ProfileWidget()


                              ],
                            ),

                            SizedBox(height: Responsive.isSmallScreen(context)? 20:40,),
                            const SocialMediaButtons(),
                            SizedBox(height: Responsive.isSmallScreen(context)? 20:40,),
                            const Summary()
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
               BottomDetails(
                options: options,
              )
            ],
          ),
        ),
      ),
    );
  }
}
