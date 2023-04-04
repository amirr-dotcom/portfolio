
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/app_manager/helper/responsive/widget/responsive_screen.dart';
import 'package:portfolio/model/option.dart';
import 'package:portfolio/repository/hobies_constant.dart';
import 'package:portfolio/repository/languages_constant.dart';
import 'package:portfolio/widget/delayed_widget.dart';

class HobbiesDetails extends StatelessWidget {
  const HobbiesDetails({Key? key}) : super(key: key);

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
                        "Hobbies",
                        style: theme.textTheme.headlineLarge?.copyWith(
                            color: Colors.white
                        ),
                      ),
                    ),

                    const DelayedWidget(
                      delayDuration: Duration(milliseconds: 1000),
                      from: DelayFrom.top,
                      child: Icon(FontAwesomeIcons.freeCodeCamp,
                        color: Colors.white,),
                    ),
                  ],
                ),
                const SizedBox(height: 40,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(HobbiesConstant.hobbiesList.length, (index){
                    Option hobie=HobbiesConstant.hobbiesList[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DelayedWidget(
                            delayDuration: const Duration(milliseconds: 1000),
                            from: DelayFrom.right,
                            child: SelectableText(
                              hobie.title??"",
                              style: theme.textTheme.bodyLarge?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          DelayedWidget(
                            delayDuration: const Duration(milliseconds: 1500),
                            from: DelayFrom.left,
                            child: Icon(hobie.value,
                            color: Colors.white,),
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
