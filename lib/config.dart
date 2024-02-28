// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:redux/redux.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'package:openweathermap_api_flutter/app_module.dart';
import 'package:openweathermap_api_flutter/store/app.reducer.dart';
import 'package:openweathermap_api_flutter/store/app.state.dart';

late DevToolsStore<AppState> store;

late final AppConfig appConfig;

class AppConfig {
  AppConfig();

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    await Modular.isModuleReady<AppModule>();

    store = await _storeConfiguration();
  }

  Future<DevToolsStore<AppState>> _storeConfiguration() async {
    final DevToolsStore<AppState> store = DevToolsStore<AppState>(
      AppReducer(),
      initialState: AppState.initialState(),
      middleware: [
        thunkMiddleware,
        if (kDebugMode) LoggingMiddleware(),
      ],
    );

    return store;
  }
}

class LoggingMiddleware extends TypedMiddleware<AppState, dynamic> {
  static void _log(Store<AppState> store, dynamic action, NextDispatcher next) {
    debugPrint('Logging action: ${action.runtimeType}');
    next(action);
  }

  LoggingMiddleware() : super(_log);
}
