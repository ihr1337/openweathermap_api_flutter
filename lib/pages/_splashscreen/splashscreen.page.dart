import 'package:flutter/material.dart';

import 'package:openweathermap_api_flutter/pages/_splashscreen/widgets/slidein_from_bottom_widget.dart';

class SplashscreenPage extends StatefulWidget {
  const SplashscreenPage({super.key});

  @override
  State<SplashscreenPage> createState() => _SplashscreenPageState();
}

class _SplashscreenPageState extends State<SplashscreenPage> {
  bool initializeAnimation = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 50),
      () => setState(() => initializeAnimation = true),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color.fromARGB(255, 17, 66, 10),
                    Color.fromARGB(255, 7, 213, 0),
                  ],
                ),
              ),
            ),
            SlideinFromBottomWidget(
              initializeAnimation: initializeAnimation,
              animationDuration: const Duration(seconds: 1),
              opacityChangeDuration: const Duration(seconds: 1),
              finalPotision: screenHeight / 2,
              child: const Text(
                'OpenWeatherMap API\n with Flutter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SlideinFromBottomWidget(
              initializeAnimation: initializeAnimation,
              animationDuration: const Duration(seconds: 2),
              opacityChangeDuration: const Duration(seconds: 2),
              finalPotision: screenHeight / 2.5,
              child: const Text.rich(
                TextSpan(
                  text: 'by ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: 'K',
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ),
                    TextSpan(
                      text: 'evych Solutions',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
