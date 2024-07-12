import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';

class DetailsTabBar extends StatefulWidget {
  const DetailsTabBar({super.key});

  @override
  State<DetailsTabBar> createState() => _DetailsTabBarState();
}

class _DetailsTabBarState extends State<DetailsTabBar> {
  var icons = ["problem", "test", "medicine", "surgary"];
  var labels = ["Set Problem", "Set Test", "Set Medicine", "Set Surgery"];

  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 0),
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 10, childAspectRatio: 0.7),
        itemCount: 4,
        itemBuilder: (_, idx) {
          return InkWell(
            onTap: () {
              setState(() {
                selected = idx;
              });
            },
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: selected == idx
                      ? HexColor("#2A2C41")
                      : Colors.white.withOpacity(0.2),
                  child: Image.asset(
                    "assets/images/problems/${icons[idx]}.png",
                    width: 28,
                    height: 28,
                  ),
                ),
                Text(
                  labels[idx],
                  style: CustomFonts.poppins10W600(
                      color: selected == idx
                          ? Colors.white
                          : Colors.white.withOpacity(0.5)),
                )
              ],
            ),
          );
        });
  }
}
