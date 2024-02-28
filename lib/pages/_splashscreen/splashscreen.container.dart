import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'package:openweathermap_api_flutter/pages/_splashscreen/splashscreen.page.dart';
import 'package:openweathermap_api_flutter/store/app.actions.dart';
import 'package:openweathermap_api_flutter/store/app.state.dart';

class SplashscreenContainer extends StatelessWidget {
  const SplashscreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      onInit: (Store<AppState> store) async =>
          await store.dispatch(InitAppAction(context: context)),
      converter: _ViewModel.create,
      builder: (context, viewModel) {
        return const SplashscreenPage();
      },
    );
  }
}

class _ViewModel {
  const _ViewModel();

  factory _ViewModel.create(Store<AppState> store) {
    return const _ViewModel();
  }
}
