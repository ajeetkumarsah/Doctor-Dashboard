import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';

class ConsultationGraph extends StatelessWidget {
  const ConsultationGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: HexColor("#FFFFFF").withOpacity(0.2)),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(35)),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: HexColor("#222425"),
                        child: Image.asset("assets/images/touch.png",
                            color: Colors.white, width: 18, height: 18),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Treatment",
                        style: CustomFonts.poppins14W800(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/images/graph1.png",
                      width: double.infinity, height: 100, fit: BoxFit.fill)
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(35)),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: HexColor("#222425"),
                        child: Image.asset("assets/images/touch.png",
                            color: Colors.white, width: 18, height: 18),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Results",
                        style: CustomFonts.poppins14W800(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "assets/images/graph2.png",
                    width: double.infinity,
                    height: 100,
                    fit: BoxFit.fill,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
