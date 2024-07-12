import '../../../widgets/notch.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';

class ProblemsSheet extends StatelessWidget {
  final ValueChanged onChanged;
  const ProblemsSheet({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

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
      color: HexColor("#222425").withOpacity(0.7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 100,
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 24),
                padding: EdgeInsets.fromLTRB(
                    20, height < 600 ? 10 : 20, 20, height < 600 ? 10 : 0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(0))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Set",
                                  style: CustomFonts.poppins12W700(
                                      color: HexColor("#222425")),
                                ),
                                Text(
                                  "Problems",
                                  style: CustomFonts.poppins20W700(
                                      color: HexColor("#222425")),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: HexColor("#FF724C")),
                            child: Center(
                              child: Text(
                                "DONE",
                                style: CustomFonts.poppins16W700(
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        decoration: BoxDecoration(
                          color: HexColor("#FFFFFF"),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        // padding: const EdgeInsets.only(top: 10, bottom: 8, left: 8, right: 16),
                        child: RawScrollbar(
                          thickness: 10.0,
                          trackVisibility: true,
                          thumbVisibility: true,
                          controller: firstController,
                          trackColor: HexColor("#F2F7FB"),
                          thumbColor: HexColor("#FF724C"),
                          trackBorderColor: Colors.transparent,
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
                                        padding:
                                            const EdgeInsets.only(bottom: 12),
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            height: 66,
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(45),
                                                color: HexColor("#FFF7E9")),
                                            child: Row(
                                              children: [
                                                Container(
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  height: 60,
                                                  width: 60,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color:
                                                          HexColor("#201A3F")),
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        problems[i],
                                                        style: CustomFonts
                                                            .poppins14W700(
                                                                color: HexColor(
                                                                    "#201A3F")),
                                                      ),
                                                      Container(
                                                        height: 20,
                                                        width: 75,
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                            color: HexColor(
                                                                "#FF724C"),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30)),
                                                        child: Text(
                                                          "Rs. 5000",
                                                          style: CustomFonts
                                                              .poppins10W700(
                                                                  color: HexColor(
                                                                      "#FFFFFF")),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 12,
                                                ),
                                                CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor:
                                                      HexColor("#FF724C")
                                                          .withOpacity(0.2),
                                                  child: const Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                    size: 18,
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
                        ))
                  ],
                ),
              ),
              const Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Notch(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
