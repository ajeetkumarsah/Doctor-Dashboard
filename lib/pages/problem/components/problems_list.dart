import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';

class ProblemsList extends StatelessWidget {
  const ProblemsList({super.key});

  @override
  Widget build(BuildContext context) {
    List problems = [
      'Dental Braces',
      'Decayed Tooth',
      'Tooth Extraction',
      'Dental Crown',
      'Gum Treatment',
      'Dental Cleaning',
      'Teeth Straightening',
    ];
    final ScrollController firstController = ScrollController();
    return Container(
        decoration: BoxDecoration(
          color: HexColor("#FFF7E9"),
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.only(top: 10, bottom: 8, left: 8, right: 16),
        child: RawScrollbar(
          thickness: 10.0,
          trackVisibility: true,
          thumbVisibility: true,
          controller: firstController,
          trackColor: HexColor("#F2F7FB"),
          thumbColor: HexColor("#FF724C"),
          radius: const Radius.circular(10.0),
          trackRadius: const Radius.circular(30.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SingleChildScrollView(
              controller: firstController,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    for (int i = 0; i < problems.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 66,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45),
                                color: HexColor("#FFFFFF")),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: HexColor("#201A3F")),
                                  child: Image.asset(
                                      "assets/images/icons/problems/icon${i + 1}.png",
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        problems[i],
                                        style: CustomFonts.poppins12W700(
                                            color: HexColor("#201A3F")),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  height: 20,
                                  width: 75,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: HexColor("#FF724C"),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Text(
                                    "Rs. 5000",
                                    style: CustomFonts.poppins10W700(
                                        color: HexColor("#FFFFFF")),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
