import 'package:flutter/material.dart';
import 'package:portfolio/app_manager/helper/responsive/responsive.dart';
import 'package:portfolio/model/option.dart';
import 'package:portfolio/util/app_constant.dart';
import 'package:portfolio/widget/delayed_widget.dart';

class BottomDetails extends StatelessWidget {
  final List<Option> options;
  const BottomDetails({Key? key, required this.options}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return DelayedWidget(
      duration: const Duration(milliseconds: 1000),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          border: Border(
              top: BorderSide(
                color: Colors.white
              )
          )
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding:  EdgeInsets.all(Responsive.isSmallScreen(context)? 20:40.0),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: List.generate(options.length, (index) =>
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DelayedWidget(
                        delayDuration: const Duration(milliseconds: 1000),
                        from: DelayFrom.right,
                        child: Text(options[index].title??"",
                          style: theme.textTheme.titleMedium?.copyWith(
                              color: Colors.white
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      DelayedWidget(
                        delayDuration: const Duration(milliseconds: 1000),
                        from: DelayFrom.left,
                        child: SelectableText(options[index].value??"",
                          style: theme.textTheme.bodySmall?.copyWith(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
