import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/app_manager/helper/responsive/responsive.dart';
import 'package:portfolio/model/project.dart';
import 'package:portfolio/view/screen/about_me/widget/social_media_button.dart';
import 'package:portfolio/view/screen/exprience/widget/project_selector.dart';
import 'package:portfolio/view/widget/photos_view.dart';
import 'package:portfolio/widget/animated_opacity_when_hovered.dart';
import 'package:portfolio/widget/delayed_widget.dart';

class ProjectListing extends StatefulWidget {
  final List<Project> projects;
  const ProjectListing({Key? key, required this.projects}) : super(key: key);

  @override
  State<ProjectListing> createState() => _ProjectListingState();
}

class _ProjectListingState extends State<ProjectListing> {
  int _currentIndex=0;
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ProjectSelector(
            projects: widget.projects,
            currentIndex: _currentIndex,
          onSelectIndex: (int val){
            carouselController.animateToPage(val);
          },
        ),
        Expanded(
          child: Stack(
            children: [
              CarouselSlider.builder(
                carouselController: carouselController,
                options: CarouselOptions(
                  viewportFraction: 1,
                  aspectRatio: Responsive.size(context).width/(Responsive.size(context).height-200),
                  initialPage: 0,
                  autoPlay: false,
                  autoPlayAnimationDuration: const Duration(seconds: 3),
                  enableInfiniteScroll: true,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: ((index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  }),
                ),
                itemCount: widget.projects.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  Project project = widget.projects[index];
                  return ProjectView(project: project);
                },
              ),
              Positioned(
                left: 20,
                top: 0,
                bottom: 0,
                child: AnimatedOpacityWhenHovered(
                    child: IconButton(onPressed: (){
                      carouselController.previousPage();
                    }, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,))),
              ),
              Positioned(
                right: 20,
                top: 0,
                bottom: 0,
                child: AnimatedOpacityWhenHovered(
                    child: IconButton(onPressed: (){
                      carouselController.nextPage();
                }, icon: const Icon(Icons.arrow_forward_ios,color: Colors.white,))),
              )
            ],
          ),
        ),
      ],
    );
  }
}




class ProjectView extends StatelessWidget {
  final Project project;
  const ProjectView({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: DelayedWidget(
            delayDuration: const Duration(milliseconds: 1000),
            from: DelayFrom.right,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(child: PhotosView(images: project.images??[],)),
            ),
          ),
        ),

        Padding(
          padding: Responsive.isSmallScreen(context)? const EdgeInsets.fromLTRB(20.0,0.0,20.0,10.0):const EdgeInsets.fromLTRB(20.0,0.0,20.0,40.0),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Wrap(
              spacing: Responsive.isSmallScreen(context)? 20:40,
              runSpacing: 20,
              clipBehavior: Clip.hardEdge,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DelayedWidget(
                      delayDuration: const Duration(milliseconds: 1000),
                      from: DelayFrom.right,
                      child: Text(
                        project.name??"",
                        style: theme.textTheme.titleLarge?.copyWith(
                            color: Colors.white
                        ),
                      ),
                    ),
                    const SizedBox(height: 2,),
                    DelayedWidget(
                      delayDuration: const Duration(milliseconds: 1000),
                      from: DelayFrom.right,
                      child: Text(
                        project.company??"",
                        style: theme.textTheme.titleMedium?.copyWith(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),

                project.website==null? Container(
                  width: 0,
                ):SocialMediaButton(url: project.website??"", iconData: FontAwesomeIcons.chrome, index: 0,
                  text: Responsive.isSmallScreen(context)? null:project.website,),

                project.playStore==null? Container(
                  width: 0,
                ):SocialMediaButton(url: project.playStore??"", iconData: FontAwesomeIcons.googlePlay, index: 0,
                text: Responsive.isSmallScreen(context)? null:project.playStore,),

                project.appStore==null? Container(
                  width: 0,
                ):SocialMediaButton(url: project.appStore??"", iconData: FontAwesomeIcons.appStore, index: 1,
                  text: Responsive.isSmallScreen(context)? null:project.appStore,),
              ],
            ),
          ),
        ),

      ],
    );
  }
}
