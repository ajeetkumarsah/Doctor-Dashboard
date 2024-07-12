import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';

class InvitationCard extends StatelessWidget {
  final int index;
  const InvitationCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'No.',
                    style: CustomFonts.poppins10W600(
                        color: HexColor("#222425").withOpacity(.5)),
                  ),
                  Text(
                    '${index + 1}',
                    style:
                        CustomFonts.poppins12W600(color: HexColor("#222425")),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Precilo',
                    style: CustomFonts.poppins10W600(
                        color: HexColor("#FF724C").withOpacity(.5)),
                  ),
                  Text(
                    'Homeopathy',
                    style:
                        CustomFonts.poppins12W600(color: HexColor("#222425")),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date',
                    style: CustomFonts.poppins10W600(
                        color: HexColor("#222425").withOpacity(.5)),
                  ),
                  Text(
                    'Nov 21',
                    style:
                        CustomFonts.poppins12W600(color: HexColor("#222425")),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Time',
                    style: CustomFonts.poppins10W600(
                        color: HexColor("#222425").withOpacity(.5)),
                  ),
                  Text(
                    '12:34 pm',
                    style:
                        CustomFonts.poppins12W600(color: HexColor("#222425")),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Doctor Name',
                    style: CustomFonts.poppins10W600(
                        color: HexColor("#222425").withOpacity(.5)),
                  ),
                  Text(
                    'Dr. Arnold Nilson',
                    style:
                        CustomFonts.poppins12W600(color: HexColor("#222425")),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone Number',
                    style: CustomFonts.poppins10W600(
                        color: HexColor("#222425").withOpacity(.5)),
                  ),
                  Text(
                    '+91 9087654321',
                    style:
                        CustomFonts.poppins12W600(color: HexColor("#222425")),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: CustomFonts.poppins10W600(
                        color: HexColor("#222425").withOpacity(.5)),
                  ),
                  Text(
                    'Drnilson89@gmail.com',
                    style:
                        CustomFonts.poppins12W600(color: HexColor("#222425")),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'City',
                    style: CustomFonts.poppins10W600(
                        color: HexColor("#222425").withOpacity(.5)),
                  ),
                  Text(
                    'Delhi',
                    style:
                        CustomFonts.poppins12W600(color: HexColor("#222425")),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            if (index == 0)
              Container(
                height: 24,
                // width: 66,
                margin: const EdgeInsets.only(right: 8),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Unregistered',
                    style: CustomFonts.poppins10W700(
                        color: HexColor("#222425").withOpacity(0.7)),
                  ),
                ),
              ),
            if (index == 1 || index == 3)
              Container(
                height: 24,
                // width: 66,
                margin: const EdgeInsets.only(right: 8),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: HexColor("#222425"),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Registered',
                    style: CustomFonts.poppins10W700(color: Colors.white),
                  ),
                ),
              ),
            if (index == 2)
              Container(
                height: 24,
                // width: 66,
                margin: const EdgeInsets.only(right: 8),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: HexColor("#FFDD4C"),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Express Registration',
                    style:
                        CustomFonts.poppins10W700(color: HexColor("#6E5900")),
                  ),
                ),
              ),
            if (index == 4)
              Container(
                height: 24,
                // width: 66,
                margin: const EdgeInsets.only(right: 8),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: HexColor("#50CC1D"),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Partial Registration',
                    style: CustomFonts.poppins10W700(color: Colors.white),
                  ),
                ),
              ),
            if (index == 0 || index == 1 || index == 2)
              Container(
                height: 24,
                // width: 66,
                margin: const EdgeInsets.only(right: 8),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: HexColor("#42BEF3"),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Moved to APK Page',
                    style: CustomFonts.poppins10W700(color: Colors.white),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 22,
                // width: 66,
                decoration: BoxDecoration(
                    color: HexColor("#FF724C"),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Delete',
                    style: CustomFonts.poppins10W700(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 22,
                // width: 66,
                decoration: BoxDecoration(
                    color: HexColor("#FF724C"),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Profile',
                    style: CustomFonts.poppins10W700(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 22,
                // width: 66,
                decoration: BoxDecoration(
                    color: HexColor("#FF724C"),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Send APK',
                    style: CustomFonts.poppins10W700(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 22,
                // width: 66,
                decoration: BoxDecoration(
                    color: HexColor("#FF724C"),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Resend',
                    style: CustomFonts.poppins10W700(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
        if (index < 9)
          Divider(
            color: HexColor("#F8E3BD"),
            height: 32,
          )
      ],
    );
  }
}
