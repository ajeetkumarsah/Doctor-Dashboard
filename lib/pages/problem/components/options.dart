import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';

class Options extends StatelessWidget {
  final int selected;
  final ValueChanged onClick;
  const Options({super.key, required this.selected, required this.onClick});

  @override
  Widget build(BuildContext context) {
    var items = [
      "Profile",
      "Fee",
      "SMS, Voice Call & Email",
      "Set Time",
      "Set Problem",
      "Set Test",
      'Set Medicine',
      "Set Surgery"
    ];

    return GridView.builder(
        shrinkWrap: true,
        itemCount: 8,
        padding: const EdgeInsets.symmetric(vertical: 0),
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 12,
            childAspectRatio: 2.8),
        itemBuilder: (_, idx) {
          return InkWell(
            onTap: () {
              onClick(idx);
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: selected == idx
                      ? HexColor("#FF724C")
                      : HexColor("#FFE8BF"),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: idx == 3
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(items[idx],
                                textAlign: TextAlign.center,
                                style: CustomFonts.poppins14W800(
                                    color: selected == idx
                                        ? Colors.white
                                        : HexColor("#FF724C"))),
                            const SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: selected == idx
                                  ? Colors.white
                                  : HexColor("#FF724C"),
                              size: 18,
                            )
                          ],
                        )
                      : Text(items[idx],
                          textAlign: TextAlign.center,
                          style: idx == 2
                              ? CustomFonts.poppins12W800(
                                  color: selected == idx
                                      ? Colors.white
                                      : HexColor("#FF724C"))
                              : CustomFonts.poppins14W800(
                                  color: selected == idx
                                      ? Colors.white
                                      : HexColor("#FF724C")))),
            ),
          );
        });
  }
}
