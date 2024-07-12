import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../widgets/custom_appbar.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';

class ProblemIconsView extends StatefulWidget {
  const ProblemIconsView({Key? key}) : super(key: key);

  @override
  State<ProblemIconsView> createState() => _ProblemIconsViewState();
}

class _ProblemIconsViewState extends State<ProblemIconsView>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int currentPage = 1;

  callback(page) {
    setState(() {
      currentPage = page;
    });
  }

  bool isCollapsed = true;
  late double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  late AnimationController _controller;

  final _scrollController = ScrollController();

  int selectedIcon = -1;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(extendBody: true, body: content(context));
  }

  Widget content(context) {
    return Material(
      animationDuration: duration,
      borderRadius: BorderRadius.all(Radius.circular(isCollapsed ? 0 : 40)),
      elevation: 8,
      color: Colors.white,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(isCollapsed ? 0 : 40)),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              CustomAppbar(
                showback: true,
                scaffoldKey: scaffoldKey,
                title: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/doctor_face.png",
                          width: 16,
                          height: 16,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Ashley Martin ( ID : ASO1235SX )",
                          style: CustomFonts.poppins10W600(color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Icon(
                            Icons.email,
                            color: HexColor("#FF724C"),
                            size: 10,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "ashley123@gmail.com",
                            textAlign: TextAlign.center,
                            style: CustomFonts.poppins8W600(
                                color: HexColor("#222425")),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.phone,
                            color: HexColor("#FF724C"),
                            size: 10,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "+91 9087654321",
                            textAlign: TextAlign.center,
                            style: CustomFonts.poppins8W600(
                                color: HexColor("#222425")),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/star.png",
                            width: 16, height: 16),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Precilo Dental",
                          style: CustomFonts.poppins10W600(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset(
                    "assets/images/icons/problems/bg.png",
                    fit: BoxFit.fill,
                    height: screenHeight * 0.38,
                    width: double.infinity,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.0175),
                                child: Text(
                                  "Problem Icons",
                                  style: CustomFonts.poppins32W800(
                                      color: HexColor("#FFFFFF")),
                                ),
                              ),
                              Text(
                                "select Icons",
                                style: CustomFonts.poppins14W500(
                                    color: HexColor("#FFFFFF").withOpacity(.5)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (isCollapsed)
                    Positioned(
                      bottom: screenWidth * .03 + screenWidth * .25,
                      // left: -width * .045,
                      child: Row(
                        children: [
                          for (int i = 1; i <= 3; i++)
                            Padding(
                              padding: EdgeInsets.only(
                                  right: i < 3 ? screenWidth * .03 : 0),
                              child: InkWell(
                                onTap: () => setState(() {
                                  if (selectedIcon == i) {
                                    selectedIcon = -1;
                                  } else {
                                    selectedIcon = i;
                                  }
                                }),
                                child: Container(
                                    padding: const EdgeInsets.all(30),
                                    height: screenWidth * .25,
                                    width: screenWidth * .25,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white.withOpacity(.05)),
                                    child: Center(
                                      child: Image.asset(
                                        "assets/images/icons/problems/icon$i.png",
                                        color: selectedIcon == i
                                            ? HexColor("#2A2C41")
                                            : Colors.white,
                                      ),
                                    )),
                              ),
                            ),
                        ],
                      ),
                    ),
                  if (isCollapsed)
                    Positioned(
                      bottom: screenWidth * .03,
                      left: -screenWidth * .045,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        child: Row(
                          children: [
                            for (int i = 4; i <= 7; i++)
                              Padding(
                                padding: EdgeInsets.only(
                                    right: i < 7 ? screenWidth * .03 : 0),
                                child: InkWell(
                                  onTap: () => setState(() {
                                    if (selectedIcon == i) {
                                      selectedIcon = -1;
                                    } else {
                                      selectedIcon = i;
                                    }
                                  }),
                                  child: Container(
                                      padding: const EdgeInsets.all(30),
                                      height: screenWidth * .25,
                                      width: screenWidth * .25,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white.withOpacity(.05)),
                                      child: Center(
                                        child: Image.asset(
                                          "assets/images/icons/problems/icon${i + 1}.png",
                                          color: selectedIcon == i
                                              ? HexColor("#2A2C41")
                                              : Colors.white,
                                        ),
                                      )),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 1; i <= 3; i++)
                      Padding(
                        padding: EdgeInsets.only(
                            right: i < 3 ? screenWidth * .03 : 0),
                        child: InkWell(
                          onTap: () => setState(() {
                            if (selectedIcon == i * 10) {
                              selectedIcon = -1;
                            } else {
                              selectedIcon = i * 10;
                            }
                          }),
                          child: Container(
                              padding: const EdgeInsets.all(30),
                              height: screenWidth * .25,
                              width: screenWidth * .25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: HexColor("#2A2C41")),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/icons/problems/icon${i + 2}.png",
                                  color: selectedIcon == i * 10
                                      ? HexColor("#2A2C41")
                                      : Colors.white,
                                ),
                              )),
                        ),
                      ),
                  ],
                ),
              ),
              Stack(
                children: [
                  SizedBox(
                    width: screenWidth,
                    height: screenWidth * .31,
                  ),
                  Positioned(
                    //bottom: width * .03,
                    left: -screenWidth * .045,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      child: Row(
                        children: [
                          for (int i = 4; i <= 7; i++)
                            Padding(
                              padding: EdgeInsets.only(
                                  right: i < 7 ? screenWidth * .03 : 0),
                              child: InkWell(
                                onTap: () => setState(() {
                                  if (selectedIcon == i * 10) {
                                    selectedIcon = -1;
                                  } else {
                                    selectedIcon = i * 10;
                                  }
                                }),
                                child: Container(
                                    padding: const EdgeInsets.all(30),
                                    height: screenWidth * .25,
                                    width: screenWidth * .25,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: HexColor("#2A2C41")),
                                    child: Center(
                                      child: Image.asset(
                                        "assets/images/icons/problems/icon${i + 3}.png",
                                        color: selectedIcon == i * 10
                                            ? HexColor("#2A2C41")
                                            : Colors.white,
                                      ),
                                    )),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 1; i <= 3; i++)
                      Padding(
                        padding: EdgeInsets.only(
                            right: i < 3 ? screenWidth * .03 : 0),
                        child: InkWell(
                          onTap: () => setState(() {
                            if (selectedIcon == i * 10) {
                              selectedIcon = -1;
                            } else {
                              selectedIcon = i * 10;
                            }
                          }),
                          child: Container(
                              padding: const EdgeInsets.all(30),
                              height: screenWidth * .25,
                              width: screenWidth * .25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: HexColor("#2A2C41")),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/icons/problems/icon${i + 4}.png",
                                  color: selectedIcon == i * 10
                                      ? HexColor("#2A2C41")
                                      : Colors.white,
                                ),
                              )),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                height: 60,
                width: 172,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: HexColor("#FF724C")),
                child: Center(
                  child: Text(
                    "DONE",
                    style: CustomFonts.poppins20W700(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
