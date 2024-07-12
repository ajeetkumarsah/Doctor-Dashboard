import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../widgets/custom_appbar.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';
import 'package:doctor_dashboard/widgets/copy_schedule_popup.dart';

class SetScheduleView extends StatefulWidget {
  const SetScheduleView({Key? key}) : super(key: key);

  @override
  State<SetScheduleView> createState() => _SetScheduleViewState();
}

class _SetScheduleViewState extends State<SetScheduleView>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  late double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int currentPage = 1;

  callback(page) {
    setState(() {
      currentPage = page;
    });
  }

  List icons = ['Set Problem', 'Set Test', 'Set Medicine', 'Set Surgery'];

  int selectedIcon = 0;
  int selectedSchedule = 0;

  final timeController = TextEditingController();
  final minController = TextEditingController();

  List days = [
    'Sun',
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
  ];
  int selectedDate = 3;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          Brightness.light, //<-- For Android SEE HERE (dark icons)
      statusBarBrightness: Brightness.dark,
    ));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
        extendBody: true,
        body: Stack(
          children: [content(context)],
        ));
  }

  Widget content(context) {
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(isCollapsed ? 0 : 40)),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(
                showback: true,
                scaffoldKey: scaffoldKey,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Text(
                  "Set Schedule",
                  style: CustomFonts.poppins20W600(),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: HexColor("#FFF7E9")),
                                  child: Center(
                                    child: Icon(
                                      Icons.keyboard_arrow_left,
                                      size: 20,
                                      color: HexColor("#FF724C"),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Jan",
                                  style: CustomFonts.poppins24W700(
                                      color: HexColor("#222425")),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: HexColor("#FF724C")),
                                  child: const Center(
                                    child: Icon(
                                      Icons.keyboard_arrow_right,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: HexColor("#222425")),
                              child: Center(
                                child: Text(
                                  "DONE",
                                  style: CustomFonts.poppins12W700(
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            children: [
                              for (int i = 1; i < 20; i++)
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: GestureDetector(
                                    onTap: () => setState(() {
                                      selectedDate = i;
                                    }),
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: i == selectedDate
                                              ? HexColor("#FF724C")
                                              : HexColor("#FFF7E9"),
                                          borderRadius:
                                              BorderRadius.circular(35)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "$i",
                                            style: CustomFonts.poppins32W800(
                                                color: i == selectedDate
                                                    ? Colors.white
                                                    : HexColor("#E0D6C5")),
                                          ),
                                          Text(
                                            "${days[i % 7]}",
                                            style: CustomFonts.poppins16W500(
                                                color: i == selectedDate
                                                    ? Colors.white
                                                    : HexColor("#E0D6C5")),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Set Time",
                            style: CustomFonts.poppins16W700(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/pattern2.png"),
                                    fit: BoxFit.fill)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Start Time",
                                              style: CustomFonts.poppins12W700(
                                                  color: HexColor("#948365")),
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            Container(
                                              // height: 60,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 4),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(45),
                                                  color: Colors.white),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: TextField(
                                                      controller:
                                                          timeController,
                                                      style: CustomFonts
                                                          .poppins26W800(
                                                              color: HexColor(
                                                                  "#201A3F")),
                                                      decoration:
                                                          InputDecoration(
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 12),
                                                        border:
                                                            InputBorder.none,
                                                        hintText: "00:00",
                                                        hintStyle: CustomFonts
                                                            .poppins26W800(
                                                                color: HexColor(
                                                                        "#201A3F")
                                                                    .withOpacity(
                                                                        .3)),
                                                      ),
                                                      onChanged: (value) {
                                                        if (value.length == 3 &&
                                                            value[2] == ':') {
                                                          timeController.text =
                                                              timeController
                                                                  .text
                                                                  .substring(
                                                                      0, 2);
                                                        }
                                                        if (value.length == 3) {
                                                          String char =
                                                              timeController
                                                                  .text[2];
                                                          timeController.text =
                                                              timeController
                                                                  .text
                                                                  .substring(
                                                                      0, 2);
                                                          timeController.text +=
                                                              ':$char';
                                                        } else if (value
                                                                .length ==
                                                            5) {
                                                          FocusManager.instance
                                                              .primaryFocus
                                                              ?.unfocus();
                                                        } else if (value
                                                                .length >
                                                            5) {
                                                          timeController.text =
                                                              timeController
                                                                  .text
                                                                  .substring(
                                                                      0, 5);
                                                        }
                                                      },
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            HexColor("#FF724C"),
                                                        shape: BoxShape.circle),
                                                    child: Center(
                                                      child: Text(
                                                        "AM",
                                                        style: CustomFonts
                                                            .poppins10W700(
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 4,
                                                  ),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                        color: HexColor(
                                                                "#FF724C")
                                                            .withOpacity(.5),
                                                        shape: BoxShape.circle),
                                                    child: Center(
                                                      child: Text(
                                                        "PM",
                                                        style: CustomFonts
                                                            .poppins10W700(
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "End Time",
                                              style: CustomFonts.poppins12W700(
                                                  color: HexColor("#948365")),
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            Container(
                                              // height: 60,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 4),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(45),
                                                  color: Colors.white),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: TextField(
                                                      controller:
                                                          timeController,
                                                      style: CustomFonts
                                                          .poppins26W800(
                                                              color: HexColor(
                                                                  "#201A3F")),
                                                      decoration:
                                                          InputDecoration(
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 12),
                                                        border:
                                                            InputBorder.none,
                                                        hintText: "00:00",
                                                        hintStyle: CustomFonts
                                                            .poppins26W800(
                                                                color: HexColor(
                                                                        "#201A3F")
                                                                    .withOpacity(
                                                                        .1)),
                                                      ),
                                                      onChanged: (value) {
                                                        if (value.length == 3 &&
                                                            value[2] == ':') {
                                                          timeController.text =
                                                              timeController
                                                                  .text
                                                                  .substring(
                                                                      0, 2);
                                                        }
                                                        if (value.length == 3) {
                                                          String char =
                                                              timeController
                                                                  .text[2];
                                                          timeController.text =
                                                              timeController
                                                                  .text
                                                                  .substring(
                                                                      0, 2);
                                                          timeController.text +=
                                                              ':$char';
                                                        } else if (value
                                                                .length ==
                                                            5) {
                                                          FocusManager.instance
                                                              .primaryFocus
                                                              ?.unfocus();
                                                        } else if (value
                                                                .length >
                                                            5) {
                                                          timeController.text =
                                                              timeController
                                                                  .text
                                                                  .substring(
                                                                      0, 5);
                                                        }
                                                      },
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            HexColor("#FF724C"),
                                                        shape: BoxShape.circle),
                                                    child: Center(
                                                      child: Text(
                                                        "AM",
                                                        style: CustomFonts
                                                            .poppins10W700(
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 4,
                                                  ),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                        color: HexColor(
                                                                "#FF724C")
                                                            .withOpacity(.5),
                                                        shape: BoxShape.circle),
                                                    child: Center(
                                                      child: Text(
                                                        "PM",
                                                        style: CustomFonts
                                                            .poppins10W700(
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Column(
                                          children: [
                                            Text(
                                              "Start Interval",
                                              style: CustomFonts.poppins12W700(
                                                  color: HexColor("#948365")),
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(16),
                                              decoration: BoxDecoration(
                                                color: HexColor("#222425"),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(56),
                                                  topRight: Radius.circular(56),
                                                  bottomLeft:
                                                      Radius.circular(56),
                                                  bottomRight:
                                                      Radius.circular(30),
                                                ),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                        color: HexColor(
                                                                "#FF724C")
                                                            .withOpacity(0.3),
                                                        shape: BoxShape.circle),
                                                    child: Center(
                                                      child: Text(
                                                        "-",
                                                        style: CustomFonts
                                                            .poppins20W700(
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ),
                                                  ),
                                                  TextField(
                                                    controller: minController,
                                                    style: CustomFonts
                                                        .poppins26W800(
                                                            color: HexColor(
                                                                "#FFFFFF")),
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              horizontal: 12),
                                                      border: InputBorder.none,
                                                      hintText: "00",
                                                      hintStyle: CustomFonts
                                                          .poppins26W800(
                                                              color: HexColor(
                                                                      "#FFFFFF")
                                                                  .withOpacity(
                                                                      .3)),
                                                    ),
                                                    onChanged: (value) {
                                                      if (value.length == 2) {
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      } else if (value.length >
                                                          2) {
                                                        minController.text =
                                                            minController.text
                                                                .substring(
                                                                    0, 2);
                                                      }
                                                    },
                                                  ),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                        color: HexColor(
                                                                "#FF724C")
                                                            .withOpacity(0.3),
                                                        shape: BoxShape.circle),
                                                    child: Center(
                                                      child: Text(
                                                        "+",
                                                        style: CustomFonts
                                                            .poppins20W700(
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 20, left: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  height: 50,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    color: HexColor("#FF724C"),
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        topRight: Radius.circular(35),
                                        bottomLeft: Radius.circular(17),
                                        bottomRight: Radius.circular(35)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "SAVE",
                                      style: CustomFonts.poppins12W700(
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Saved Schedules",
                                style: CustomFonts.poppins16W700(
                                    color: HexColor("#222425")),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor:
                                  HexColor("#222425").withOpacity(0.1),
                              child: Icon(
                                Icons.edit,
                                color: HexColor("#222425"),
                                size: 16,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: 112,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: HexColor("#222425")),
                              child: Center(
                                child: Text(
                                  "ADD NEW",
                                  style: CustomFonts.poppins16W700(
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              for (int i = 0; i < 8; i++)
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedSchedule = i;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 16),
                                      // height: 110,
                                      decoration: BoxDecoration(
                                        color: selectedSchedule == i
                                            ? HexColor("#FF724C")
                                            : HexColor("#FFF7E9"),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "am",
                                            style: CustomFonts.poppins10W600(
                                                color: selectedSchedule == i
                                                    ? Colors.white
                                                        .withOpacity(0.3)
                                                    : HexColor("#6A5633")
                                                        .withOpacity(.3)),
                                          ),
                                          Text(
                                            "09:00",
                                            style: CustomFonts.poppins14W700(
                                                color: selectedSchedule == i
                                                    ? Colors.white
                                                    : HexColor("#6A5633")),
                                          ),
                                          Text(
                                            "-",
                                            style: CustomFonts.poppins14W700(
                                                color: selectedSchedule == i
                                                    ? Colors.white
                                                    : HexColor("#6A5633")),
                                          ),
                                          Text(
                                            "09:30",
                                            style: CustomFonts.poppins14W700(
                                                color: selectedSchedule == i
                                                    ? Colors.white
                                                    : HexColor("#6A5633")),
                                          ),
                                          Text(
                                            "am",
                                            style: CustomFonts.poppins10W700(
                                                color: selectedSchedule == i
                                                    ? Colors.white
                                                        .withOpacity(0.3)
                                                    : HexColor("#6A5633")
                                                        .withOpacity(.3)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const CopySchedulePopup(
                          text: "Copy previous schedule for today"),
                      const SizedBox(
                        height: 8,
                      ),
                      const CopySchedulePopup(
                        text: "Copy today’s schedule for other days",
                        bottom: -420,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 4),
                              height: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: HexColor("#FF724C").withOpacity(.15),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    color: HexColor("#FF724C"),
                                    size: 12,
                                  ),
                                  Text(
                                    " Tap to edit",
                                    style: CustomFonts.poppins9W700(
                                        color: HexColor("#FF724C")),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 4),
                              height: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: HexColor("#FF724C").withOpacity(.15),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    color: HexColor("#FF724C"),
                                    size: 12,
                                  ),
                                  Text(
                                    " you can copy multiple schedules",
                                    style: CustomFonts.poppins9W700(
                                        color: HexColor("#FF724C")),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
