
import 'package:flutter/material.dart';
import 'package:portfolio/util/app_constant.dart';

import '../../../../widget/delayed_widget.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DelayedWidget(
          delayDuration: const Duration(milliseconds: 1000),
          from: DelayFrom.right,
          child: Text(
            "Summary",
            style: theme.textTheme.headlineSmall?.copyWith(
                color: Colors.white
            ),
          ),
        ),
        const SizedBox(height: 20,),
        DelayedWidget(
          delayDuration: const Duration(milliseconds: 1000),
          from: DelayFrom.left,
          child: Container(
            constraints: const BoxConstraints(
                maxWidth: 600
            ),
            child: Text(
              AppConstants.summary,
              style: theme.textTheme.bodySmall?.copyWith(
                  color: Colors.white
              ),
            ),
          ),
        ),
      ],
    );
  }
}
