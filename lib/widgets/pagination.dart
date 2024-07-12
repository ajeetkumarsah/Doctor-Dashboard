import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';

class Pagination extends StatelessWidget {
  final int pagesLenght, currentPage;
  final Function callback;
  const Pagination(
      {Key? key,
      required this.pagesLenght,
      required this.callback,
      required this.currentPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            if (currentPage > 1) {
              callback(currentPage - 1);
            }
          },
          child: Container(
            padding: const EdgeInsets.all(4),
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: HexColor("#F5F5F5")),
            child: Image.asset(
              "assets/images/arrow-left.png",
              color: HexColor("#FF724C").withOpacity(currentPage == 1 ? .5 : 1),
            ),
          ),
        ),
        for (int i = currentPage; i < currentPage + 3 && i <= pagesLenght; i++)
          InkWell(
            onTap: () => callback(i),
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: currentPage == i ? 3.0 : 1),
              child: Container(
                  padding: const EdgeInsets.all(4),
                  height: 23,
                  width: 23,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentPage == i
                          ? HexColor("#F5F5F5")
                          : Colors.transparent),
                  child: Center(
                      child: Text(
                    "$i",
                    style: CustomFonts.poppins10W700(
                        color: currentPage == i
                            ? HexColor("#222425")
                            : HexColor("#222425").withOpacity(.5)),
                  ))),
            ),
          ),
        if (currentPage < pagesLenght - 3)
          Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 2),
            child: Text(
              "....",
              style: CustomFonts.poppins16W700(
                  color: HexColor("#222425").withOpacity(.5)),
            ),
          )),
        if (currentPage < pagesLenght - 3)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Container(
                padding: const EdgeInsets.all(4),
                height: 23,
                width: 13,
                child: Center(
                    child: Text(
                  "$pagesLenght",
                  style: CustomFonts.poppins10W700(color: HexColor("#222425")),
                ))),
          ),
        InkWell(
          onTap: () {
            if (currentPage < pagesLenght) {
              callback(currentPage + 1);
            }
          },
          child: Container(
            padding: const EdgeInsets.all(4),
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: HexColor("#F5F5F5")),
            child: Image.asset(
              "assets/images/arrow-right.png",
              color: HexColor("#FF724C")
                  .withOpacity(currentPage == pagesLenght ? .5 : 1),
            ),
          ),
        )
      ],
    );
  }
}
