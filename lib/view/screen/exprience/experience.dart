
import 'package:flutter/material.dart';
import 'package:portfolio/model/option.dart';
import 'package:portfolio/util/app_constant.dart';
import 'package:portfolio/util/experience_constant.dart';
import 'package:portfolio/view/screen/about_me/widget/bottom_details.dart';
import 'package:portfolio/view/screen/about_me/widget/profile_widget.dart';
import 'package:portfolio/view/screen/about_me/widget/summary.dart';
import 'package:portfolio/view/screen/exprience/widget/project_listing.dart';
import 'package:portfolio/view/widget/background.dart';
import 'package:portfolio/view/widget/page_selector.dart';
import 'package:portfolio/widget/delayed_widget.dart';
import 'package:portfolio/view/screen/about_me/widget/social_media_buttons.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    List<Option> options=[
      Option(
          title: "Years",
          value: "${(DateTime.now().difference(ExperienceConstant.workingSince).inDays/365).toStringAsFixed(1)} years"
      ),
      Option(
          title: "Total Projects",
          value: ExperienceConstant.projectList.length.toString()
      ),
      Option(
          title: "Companies",
          value: ExperienceConstant.workedIn.length.toString()
      ),
    ];
    return Scaffold(
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PageSelector(),
            Expanded(
              child: ProjectListing(
                projects: ExperienceConstant.projectList,
              ),
            ),
             BottomDetails(
              options: options,
            )
          ],
        ),
      ),
    );
  }
}
