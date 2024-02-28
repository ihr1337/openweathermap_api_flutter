import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'package:openweathermap_api_flutter/app.dart';
import 'package:openweathermap_api_flutter/app_module.dart';
import 'package:openweathermap_api_flutter/config.dart';

void main() async {
  appConfig = AppConfig();

  await appConfig.init();

  runApp(
    ModularApp(
      module: AppModule(),
      child: MyApp(store: store),
    ),
  );
}
