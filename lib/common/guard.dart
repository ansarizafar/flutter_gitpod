/*
class _HomePageState extends State<HomePage> with ExampleGuard {

  HomePageBloc _bloc = HomePageBloc();

  @override
  void initState() {
      if (!this.canActivate(context)) {
          // Get out of here
      }
  }

*/

import 'package:flutter/widgets.dart';

bool canActivate(BuildContext context) {
  return true;
}
