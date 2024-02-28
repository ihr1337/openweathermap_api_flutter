import 'package:flutter/material.dart';

class ForecastLengthSwitchItem extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback onTap;

  const ForecastLengthSwitchItem({
    super.key,
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isActive ? Colors.white : Colors.green,
          border: Border.all(
            color: isActive ? Colors.black : Colors.transparent,
            width: 1,
          ),
        ),
        child: Center(
          child: Text(text,
              style: TextStyle(color: isActive ? Colors.black : Colors.white)),
        ),
      ),
    );
  }
}
