import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';

class CountInfo extends StatelessWidget {
  const CountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: HexColor("#FFE8E1"),
                child: Image.asset(
                  "assets/images/user.png",
                  width: 25,
                  height: 25,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Patients Treated",
                      style: CustomFonts.poppins10W500(
                          color: HexColor("#80222425")),
                    ),
                    Text(
                      "371",
                      style: CustomFonts.poppins32W800(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: HexColor("#FFE8E1"),
                child: Image.asset(
                  "assets/images/doctor.png",
                  width: 25,
                  height: 25,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Doctors",
                      style: CustomFonts.poppins10W500(
                          color: HexColor("#80222425")),
                    ),
                    Text(
                      "429",
                      style: CustomFonts.poppins32W800(),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
