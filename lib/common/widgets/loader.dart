import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';

import 'package:openweathermap_api_flutter/store/app.state.dart';

class Loader extends StatelessWidget {
  final Widget? child;

  const Loader({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int>(
        converter: (store) => store.state.loader,
        builder: (context, loader) {
          return Stack(
            children: <Widget>[
              if (child != null) child!,
              loader > 0
                  ? Container(
                      decoration: const BoxDecoration(
                        color: Colors.black38,
                      ),
                      child: const Center(
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(Colors.green),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink()
            ],
          );
        });
  }
}
