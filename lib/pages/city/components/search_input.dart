import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        color: HexColor("#FFF7E9"),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                hintText: "Search here",
                hintStyle:
                    CustomFonts.poppins14W500(color: HexColor("#40664D21")),
                border: InputBorder.none,
              ),
            ),
            Positioned(
              right: 0,
              height: 34,
              width: 34,
              child: CircleAvatar(
                backgroundColor: HexColor("#FF724C"),
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
