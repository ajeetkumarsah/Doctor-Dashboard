import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/widgets/pagination.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';
import 'package:doctor_dashboard/widgets/custom_appbar.dart';
import 'package:doctor_dashboard/widgets/custom_drawer.dart';

class RegisteredDoctor extends StatefulWidget {
  const RegisteredDoctor({Key? key}) : super(key: key);

  @override
  State<RegisteredDoctor> createState() => _RegisteredDoctorState();
}

class _RegisteredDoctorState extends State<RegisteredDoctor> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int currentPage = 1;

  callback(page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        endDrawer: CustomDrawer(
          scaffoldKey: scaffoldKey,
        ),
        body: Column(
          children: [
            CustomAppbar(
              showback: true,
              scaffoldKey: scaffoldKey,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 4,
                    child: Text(
                      "Registered\nDoctor’s Details",
                      style: CustomFonts.poppins20W600(),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: HexColor("#2A2C41")),
                            child: Text(
                              "Refresh",
                              style: CustomFonts.poppins10W700(
                                  color: HexColor("#FF724C")),
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Pagination(
                            pagesLenght: 10,
                            currentPage: currentPage,
                            callback: callback,
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                          color: HexColor("#FFF7E9"),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          for (int index = 0; index < 10; index++) card(index),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget card(index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 23,
          width: 165,
          decoration: BoxDecoration(
              color: HexColor("#2A2C41"),
              borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: Text(
              'Registered on 13 Mar, 2020',
              style: CustomFonts.poppins10W700(color: Colors.white),
            ),
          ),
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
                    'Doctor Code',
                    style: CustomFonts.poppins10W600(
                        color: HexColor("#222425").withOpacity(.5)),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: HexColor("#FFE8BF"),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'A24K',
                            style: CustomFonts.poppins14W700(
                                color: HexColor("#222425")),
                          ),
                        ),
                        Container(
                          height: 22,
                          width: 66,
                          decoration: BoxDecoration(
                              color: HexColor("#FF724C"),
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              'Refersh',
                              style: CustomFonts.poppins10W700(
                                  color: Colors.white),
                            ),
                          ),
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
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      height: 36,
                      width: 36,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: HexColor("#FFE8BF")),
                      child: Image.asset("assets/images/arrow-down.png"))
                ],
              ),
            ),
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
