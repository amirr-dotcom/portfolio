

import 'package:flutter/material.dart';
import 'package:portfolio/app_manager/helper/responsive/responsive.dart';
import 'package:portfolio/model/project.dart';
import 'package:portfolio/widget/delayed_widget.dart';

class ProjectSelector extends StatelessWidget {
  final List<Project> projects;
  final int currentIndex;
  final ValueChanged<int> onSelectIndex;
  const ProjectSelector({Key? key, required this.projects, required this.currentIndex, required this.onSelectIndex,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return Padding(
      padding:  Responsive.isSmallScreen(context)?const EdgeInsets.fromLTRB( 5.0,0.0,5.0,5.0):const EdgeInsets.fromLTRB( 20.0,0.0,20.0,20.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: 40,
          child: ListView.builder(
              itemCount: projects.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
            return DelayedWidget(
              delayDuration: const Duration(milliseconds: 1000),
              from: DelayFrom.right,
              child: TextButton(
                onPressed: (){
                  onSelectIndex(index);
                },
                child: Padding(
                  padding:  EdgeInsets.all(Responsive.isSmallScreen(context)? 2:8.0),
                  child: Text(projects[index].name??"",
                    style: theme.textTheme.titleMedium?.copyWith(
                        color: currentIndex==index? Colors.white:Colors.white54
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
