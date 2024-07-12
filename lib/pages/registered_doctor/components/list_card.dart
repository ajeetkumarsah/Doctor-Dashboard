import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';

class ListCard extends StatelessWidget {
  final int index;
  const ListCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  Expanded(
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
                          style: CustomFonts.poppins12W600(
                              color: HexColor("#222425")),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
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
                          style: CustomFonts.poppins12W600(
                              color: HexColor("#222425")),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
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
                          style: CustomFonts.poppins12W600(
                              color: HexColor("#222425")),
                        ),
                      ],
                    ),
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
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 22,
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  color: HexColor("#2A2C41"),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  'Last Updated On 21 Nov, 2022 at 03:37 PM',
                  style: CustomFonts.poppins10W700(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Container(
              height: 22,
              width: 60,
              decoration: BoxDecoration(
                  color: HexColor("#FF724C"),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  'Update',
                  style: CustomFonts.poppins10W700(color: Colors.white),
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
