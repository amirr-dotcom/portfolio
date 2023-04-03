import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/model/option.dart';
import 'package:portfolio/route_name.dart';
import 'package:portfolio/widget/delayed_widget.dart';

class PageSelector extends StatelessWidget {

  const PageSelector({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    List<Option> options=[
      Option(
        title: "About Me",
        value: RouteName.aboutMe
      ),
      Option(
          title: "Experience",
        value: RouteName.experience

      ),
    ];
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Expanded(
            child: Wrap(
              children: List.generate(options.length, (index) =>

                  DelayedWidget(
                    delayDuration: const Duration(milliseconds: 1000),
                    from: DelayFrom.right,
                    child: TextButton(
                      onPressed: (){
                        context.push(options[index].value);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(options[index].title??"",
                          style: theme.textTheme.titleMedium?.copyWith(
                              color: ModalRoute.of(context)?.settings.name==options[index].value? Colors.white:Colors.white54
                          ),
                        ),
                      ),
                    ),
                  ),
              ),
            ),
          ),
          DelayedWidget(
            delayDuration: const Duration(milliseconds: 1000),
            from: DelayFrom.left,
            child: TextButton(onPressed: (){}, child: Wrap(
              children: [
                const Icon(Icons.download,color: Colors.white,),
                const SizedBox(width: 10,),
                Text(
                  "Download CV",
                  style: theme.textTheme.titleMedium?.copyWith(
                      color: Colors.white
                  ),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
