import 'package:flutter/material.dart';
import '../../widgets/pagination.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_drawer.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';

class SubAdminList extends StatefulWidget {
  const SubAdminList({Key? key}) : super(key: key);

  @override
  State<SubAdminList> createState() => _SubAdminListState();
}

class _SubAdminListState extends State<SubAdminList> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int currentPage = 1;

  callback(page) {
    setState(() {
      currentPage = page;
    });
  }

  int selectedCard = 0;

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
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 4,
                    child: Text(
                      "Sub - Admin’s\nList",
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => setState(() {
                        // selectedOption = 'About';
                      }),
                      child: Container(
                        height: 37,
                        decoration: BoxDecoration(
                            color: HexColor("#2A2C41"),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            'Update',
                            style: CustomFonts.poppins14W700(
                              color: HexColor("#FF724C"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => setState(() {
                        // selectedOption = 'About';
                      }),
                      child: Container(
                        height: 37,
                        decoration: BoxDecoration(
                            color: HexColor("#2A2C41"),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            'Save',
                            style: CustomFonts.poppins14W700(
                              color: HexColor("#FF724C"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => setState(() {
                        // selectedOption = 'About';
                      }),
                      child: Container(
                        height: 37,
                        decoration: BoxDecoration(
                            color: HexColor("#2A2C41"),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            'Add',
                            style: CustomFonts.poppins14W700(
                              color: HexColor("#FF724C"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
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
          ],
        ));
  }

  Widget card(index) {
    return InkWell(
      onTap: () => setState(() {
        selectedCard = index;
      }),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
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
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: selectedCard == index
                          ? HexColor("#FF724C")
                          : Colors.white,
                    ),
                  ),
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 30,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: HexColor("#FF724C"),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Change Password',
                    style: CustomFonts.poppins12W700(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Container(
                height: 30,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: HexColor("#FF724C"),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Resend',
                    style: CustomFonts.poppins12W700(color: Colors.white),
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
      ),
    );
  }
}
