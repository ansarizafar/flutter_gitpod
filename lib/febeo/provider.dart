/*
https://www.raywenderlich.com/4074597-getting-started-with-the-bloc-pattern#toc-anchor-005

return BlocProvider<LocationBloc>(
  bloc: LocationBloc(),
  child: MaterialApp(
    title: 'Restaurant Finder',
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: MainScreen(),
  ),
);


return StreamBuilder<Location>(
  // 1
  stream: BlocProvider.of<LocationBloc>(context).locationStream,
  builder: (context, snapshot) {
    final location = snapshot.data;

    // 2
    if (location == null) {
      return LocationScreen();
    }
    
    // This will be changed this later
    return Container();
  },
);

*/

import 'package:flutter/material.dart';
import './service.dart';

// 1
class Provider<T extends Service> extends StatefulWidget {
  final Widget child;
  final T service;

  const Provider({Key key, @required this.service, @required this.child})
      : super(key: key);

  // 2
  static T of<T extends Service>(BuildContext context) {
    final type = _providerType<Provider<T>>();
    final Provider<T> provider = context.ancestorWidgetOfExactType(type);
    return provider.service;
  }

  // 3
  static Type _providerType<T>() => T;

  @override
  State createState() => _ProviderState();
}

class _ProviderState extends State<Provider> {
  // 4
  @override
  Widget build(BuildContext context) => widget.child;

  // 5
  @override
  void dispose() {
    widget.service.dispose();
    super.dispose();
  }
}
