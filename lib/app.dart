import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'package:openweathermap_api_flutter/store/app.state.dart';

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  const MyApp({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/splashscreen');

    return StoreProvider(
      store: store,
      child: MaterialApp.router(
        theme: ThemeData(scaffoldBackgroundColor: Colors.transparent),
        debugShowCheckedModeBanner: false,
        routerDelegate: Modular.routerDelegate,
        routeInformationParser: Modular.routeInformationParser,
        title: 'OpenWeatherMap API Flutter',
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context),
            child: child!,
          );
        },
      ),
    );
  }
}
