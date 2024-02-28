import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:openweathermap_api_flutter/interceptor.dart';
import 'package:openweathermap_api_flutter/pages/_splashscreen/splashscreen.container.dart';
import 'package:openweathermap_api_flutter/pages/app.page.dart';
import 'package:openweathermap_api_flutter/pages/home_screen/home_screen.container.dart';
import 'package:openweathermap_api_flutter/store/_app.api.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => Dio()),
        Bind.singleton((i) => AppInterceptor()),

        ///API classes
        Bind.singleton((i) => DioAppApi()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const AppPage(),
        ),
        ChildRoute(
          '/splashscreen',
          child: (context, args) => const SplashscreenContainer(),
        ),
        ChildRoute(
          '/home_screen',
          child: (context, args) => const HomeScreenContainer(),
        ),
      ];
}
