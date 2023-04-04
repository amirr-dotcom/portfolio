import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app_manager/helper/responsive/responsive.dart';
import 'package:portfolio/model/option.dart';
import 'package:portfolio/repository/app_constant.dart';
import 'package:portfolio/view/screen/about_me/pages/education_details.dart';
import 'package:portfolio/view/screen/about_me/pages/hobies_details.dart';
import 'package:portfolio/view/screen/about_me/pages/languages_details.dart';
import 'package:portfolio/view/screen/about_me/pages/link_and_summary.dart';
import 'package:portfolio/view/screen/about_me/widget/bottom_details.dart';
import 'package:portfolio/view/widget/background.dart';
import 'package:portfolio/view/widget/page_selector.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {

  int _currentIndex=0;
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
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


    List<Widget> pages=[
      const LinkAndSummary(),
      const EducationDetails(),
      const LanguagesDetails(),
      const HobbiesDetails(),
    ];

    return SafeArea(
      child: Scaffold(
        body: Background(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PageSelector(),
               Expanded(
                child:   Stack(
                  children: [
                    CarouselSlider.builder(
                      carouselController: carouselController,
                      options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        viewportFraction: 1,
                        aspectRatio: Responsive.size(context).width/(Responsive.size(context).height-200),
                        initialPage: 0,
                        autoPlay: false,
                        disableCenter: true,
                        autoPlayAnimationDuration: const Duration(seconds: 3),
                        enableInfiniteScroll: true,
                        scrollDirection: Axis.vertical,
                        onPageChanged: ((index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        }),
                      ),
                      itemCount: pages.length,
                      itemBuilder: (BuildContext context, int index, int realIndex) {
                        return pages[index];
                      },
                    ),

                    Positioned(
                      right: 10,
                      bottom: 0,
                      top: 0,
                      child: Center(
                        child: Container(
                          decoration:  BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(2,0,2,0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: pages.asMap().entries.map((entry) {
                                return Container(
                                  width: 8.0,
                                  height: 8.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 4.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(
                                        _currentIndex == entry.key ? 0.9 : 0.4),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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
