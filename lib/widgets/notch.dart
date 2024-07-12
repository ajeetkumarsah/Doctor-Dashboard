
import 'package:flutter/material.dart';

class Notch extends StatelessWidget {
  const Notch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 30,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              color: Colors.white
            ),
          ),
        ),
        SizedBox(
          width: 80,
          height: 30,
          child: Column(
            children: [
              Container(
                height: 10,
                margin: const EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                height: 14,
                decoration: const BoxDecoration(
                  color: Colors.white
                ),
              )
            ],
          )
        ),
        Expanded(
          child: Container(
            height: 30,
            width: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              color: Colors.white
            ),
          ),
        )
      ],
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0); // Start at the top center
    path.lineTo(size.width, size.height); // Draw line to bottom right corner
    path.lineTo(0, size.height); // Draw line to bottom left corner
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}