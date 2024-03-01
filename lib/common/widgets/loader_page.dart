import 'package:flutter/material.dart';

class LoaderPage extends StatelessWidget {
  const LoaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color.fromARGB(255, 28, 111, 17),
            Color.fromARGB(255, 7, 213, 0),
          ],
        ),
      ),
      child: const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Loading data...',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
