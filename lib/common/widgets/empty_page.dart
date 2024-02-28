import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
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
          ),
          const Text(
            'No data found',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
