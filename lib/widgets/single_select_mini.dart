import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';

class SingleSelectMini extends StatefulWidget {
  final List<String> items;
  final String label;
  final bool invert;
  final double? dropdownWidth;
  const SingleSelectMini(
      {super.key,
      required this.items,
      required this.label,
      this.invert = false,
      this.dropdownWidth});

  @override
  State<SingleSelectMini> createState() => _SingleSelectMiniState();
}

class _SingleSelectMiniState extends State<SingleSelectMini> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        customButton: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: widget.invert ? HexColor("#FF724C") : HexColor("#2A2C41"),
              borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(vertical: 9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.label,
                  textAlign: TextAlign.center,
                  style: CustomFonts.poppins8W600(color: Colors.white)),
              const SizedBox(
                width: 6,
              ),
              const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.white,
                size: 10,
              )
            ],
          ),
        ),
        items: widget.items
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        item,
                        style: CustomFonts.poppins10W500(
                            color: HexColor("#FFFFFF")),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 12),
                      if (widget.items.indexOf(item) < widget.items.length - 1)
                        const Divider(
                          height: 0,
                          color: Color(0x33FFFFFF),
                        )
                    ],
                  ),
                ))
            .toList(),
        onChanged: (value) {},
        buttonStyleData: ButtonStyleData(
          width: 100,
          // This is necessary for the ink response to match our customButton radius.
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 200,
          width: widget.dropdownWidth ?? 100,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xEFFF724C),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 20,
                    color: Color(0x1A000000)),
              ]),
          offset: const Offset(-40, 0),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            minThumbLength: 24,
            trackVisibility: const MaterialStatePropertyAll(true),
            trackColor:
                MaterialStatePropertyAll(HexColor("#ffffff").withOpacity(0.5)),
            thickness: MaterialStateProperty.all(6),
            thumbColor: const MaterialStatePropertyAll(Colors.white),
            thumbVisibility: MaterialStateProperty.all(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 42,
          padding: EdgeInsets.only(left: 16, right: 16),
        ),
      ),
    );
  }
}
