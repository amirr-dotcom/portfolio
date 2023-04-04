
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/app_manager/helper/responsive/widget/responsive_screen.dart';
import 'package:portfolio/model/education.dart';
import 'package:portfolio/repository/education_constant.dart';
import 'package:portfolio/widget/delayed_widget.dart';

class EducationDetails extends StatelessWidget {
  const EducationDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0,),
          child: MyResponsiveScreen(
            child:   Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 20,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    DelayedWidget(
                      delayDuration: const Duration(milliseconds: 1000),
                      from: DelayFrom.right,
                      child: Text(
                        "Education",
                        style: theme.textTheme.headlineLarge?.copyWith(
                            color: Colors.white
                        ),
                      ),
                    ),

                    const DelayedWidget(
                      delayDuration: Duration(milliseconds: 1000),
                      from: DelayFrom.top,
                      child: Icon(FontAwesomeIcons.graduationCap,
                      color: Colors.white,),
                    ),
                  ],
                ),
                const SizedBox(height: 40,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(EducationConstant.educationList.length, (index){
                    Education education=EducationConstant.educationList[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DelayedWidget(
                            delayDuration: const Duration(milliseconds: 1000),
                            from: DelayFrom.right,
                            child: SelectableText(
                              education.title??"",
                              style: theme.textTheme.bodyLarge?.copyWith(
                                  color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          DelayedWidget(
                            delayDuration: const Duration(milliseconds: 1000),
                            from: DelayFrom.left,
                            child: SelectableText(
                              education.year??"",
                              style: theme.textTheme.bodySmall?.copyWith(
                                  color: Colors.white
                              ),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          DelayedWidget(
                            delayDuration: const Duration(milliseconds: 1000),
                            from: DelayFrom.right,
                            child: SelectableText(
                              education.percentage??"",
                              style: theme.textTheme.bodySmall?.copyWith(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
