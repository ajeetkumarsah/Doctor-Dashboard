import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SingleSelect2 extends StatefulWidget {
  final List<String> items;
  final String label;
  const SingleSelect2({super.key, required this.items, required this.label});

  @override
  State<SingleSelect2> createState() => _SingleSelect2State();
}

class _SingleSelect2State extends State<SingleSelect2> {

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        hint: Row(
          children: [
            Expanded(
              child: Text(
                widget.label,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        selectedItemBuilder: (_){
          return widget.items.map((e){
            return Align(
              alignment: Alignment.centerLeft,
              child: Text(
                  e,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
            );
          }).toList();
        },
        items: widget.items.map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 12,),
                      Text(
                        item,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 12),
                      if(widget.items.indexOf(item)<widget.items.length-1)
                      const Divider(height: 0, color: Color(0x33FFFFFF),)
                    ],
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });
        },
        buttonStyleData: ButtonStyleData(
          height: 42,
          padding: const EdgeInsets.only(left: 16, right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: HexColor("#222425"),
          ),
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.keyboard_arrow_down_outlined,
          ),
          iconSize: 24,
          iconEnabledColor: Colors.white,
          iconDisabledColor: Colors.grey,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 200,
          width: 200,
          
          padding: const EdgeInsets.symmetric(horizontal:  16, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xEFFF724C),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 10), blurRadius: 20, color: Color(0x1A000000)
              ),
            ]
          ),
          offset: const Offset(0, 0),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            minThumbLength: 24,
            trackVisibility: const MaterialStatePropertyAll(true),
            trackColor: MaterialStatePropertyAll(HexColor("#ffffff").withOpacity(0.5)),
            thickness: MaterialStateProperty.all(6),
            thumbColor: const MaterialStatePropertyAll(Colors.white),
            thumbVisibility: MaterialStateProperty.all(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 42,
          padding: EdgeInsets.only(left: 14, right: 14),
        ),
      ),
    );
  }
}