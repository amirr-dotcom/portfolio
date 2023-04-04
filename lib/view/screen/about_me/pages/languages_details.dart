
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/app_manager/helper/responsive/widget/responsive_screen.dart';
import 'package:portfolio/model/option.dart';
import 'package:portfolio/repository/languages_constant.dart';
import 'package:portfolio/widget/delayed_widget.dart';

class LanguagesDetails extends StatelessWidget {
  const LanguagesDetails({Key? key}) : super(key: key);

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
                        "Languages",
                        style: theme.textTheme.headlineLarge?.copyWith(
                            color: Colors.white
                        ),
                      ),
                    ),

                    const DelayedWidget(
                      delayDuration: Duration(milliseconds: 1000),
                      from: DelayFrom.top,
                      child: Icon(FontAwesomeIcons.language,
                        color: Colors.white,),
                    ),
                  ],
                ),
                const SizedBox(height: 40,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(LanguagesConstant.languageList.length, (index){
                    Option language=LanguagesConstant.languageList[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DelayedWidget(
                            delayDuration: const Duration(milliseconds: 1000),
                            from: DelayFrom.right,
                            child: SelectableText(
                              language.title??"",
                              style: theme.textTheme.bodyLarge?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          DelayedWidget(
                            delayDuration: const Duration(milliseconds: 1500),
                            from: DelayFrom.left,
                            child: RatingBar.builder(
                              ignoreGestures: true,
                              itemSize: 20,
                              unratedColor: Colors.white30,
                              initialRating: language.value??0,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemCount: 5,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 4,
                              ),
                              onRatingUpdate: (rating) {

                              },
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
