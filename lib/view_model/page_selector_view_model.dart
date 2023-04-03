import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageSelectorViewModel extends ChangeNotifier {

  static PageSelectorViewModel of(BuildContext context)=>Provider.of<PageSelectorViewModel>(context,listen: false);

}