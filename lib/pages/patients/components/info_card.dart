import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: HexColor("#222425")),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Patient Data",
                  style: CustomFonts.poppins16W900(color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Name",
                          style: CustomFonts.poppins10W600(
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Arnold Marley",
                          style: CustomFonts.poppins10W700(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Age",
                          style: CustomFonts.poppins10W600(
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "29",
                          style: CustomFonts.poppins10W700(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Email ID",
                          style: CustomFonts.poppins10W600(
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Arnold111M@gmail.com",
                          style: CustomFonts.poppins10W700(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Name",
                          style: CustomFonts.poppins10W600(
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Arnold Marley",
                          style: CustomFonts.poppins10W700(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Phone No.",
                          style: CustomFonts.poppins10W600(
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "+91 9087654321",
                          style: CustomFonts.poppins10W700(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Doctor ID",
                          style: CustomFonts.poppins10W600(
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "HD35KS39OOS1",
                          style: CustomFonts.poppins10W700(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "User ID",
                          style: CustomFonts.poppins10W600(
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "AX3485JK251SL",
                          style: CustomFonts.poppins10W700(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Appointment  No.",
                          style: CustomFonts.poppins10W600(
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "JD628FHREU29F",
                          style: CustomFonts.poppins10W700(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                        color: HexColor("#FFFFFF").withOpacity(0.2))),
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/share.png",
                  width: 20,
                  height: 20,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                        color: HexColor("#FFFFFF").withOpacity(0.2))),
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/copy.png",
                  width: 20,
                  height: 20,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                        color: HexColor("#FFFFFF").withOpacity(0.2))),
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/edit_1.png",
                  width: 20,
                  height: 20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
