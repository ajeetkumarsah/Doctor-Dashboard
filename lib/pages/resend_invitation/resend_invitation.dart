import 'package:flutter/material.dart';
import '../../widgets/pagination.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../widgets/custom_drawer.dart';
import '../../widgets/single_select.dart';
import '../../widgets/single_select2.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';
import '../send_invititaion/components/invitation_card.dart';
import 'package:doctor_dashboard/widgets/custom_appbar.dart';
import '../invitation/invitation_link/add_invitation_link_view.dart';

class ResendInvitation extends StatefulWidget {
  const ResendInvitation({Key? key}) : super(key: key);

  @override
  State<ResendInvitation> createState() => _ResendInvitationState();
}

class _ResendInvitationState extends State<ResendInvitation> {
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
            CustomAppbar(showback: true, scaffoldKey: scaffoldKey),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Resend Invitation",
                            style: CustomFonts.poppins20W600(),
                          ),
                          InkWell(
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AddInvitationLinkView()))
                            },
                            child: Container(
                              height: 32,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: HexColor("#222425"),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Text(
                                  'Add Invitation Link',
                                  style: CustomFonts.poppins10W600(
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: HexColor("#FF724C"),
                        ),
                        child: Column(
                          children: [
                            const SingleSelect(
                                label: "Brand",
                                invert: true,
                                items: [
                                  'Default',
                                  'Orange Brand',
                                  'Precilo',
                                  'Nutrelis'
                                ]),
                            const SizedBox(
                              height: 16,
                            ),
                            const SingleSelect(
                                label: "Specialization",
                                invert: true,
                                items: [
                                  'Default',
                                  'Dental',
                                  'Homeopathy',
                                  'Orthopedics'
                                ]),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: double.infinity,
                              height: 48,
                              decoration: BoxDecoration(
                                color: HexColor("#F7F8FC").withOpacity(.1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    TextField(
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 16),
                                        hintText: "Doctor Name",
                                        hintStyle: CustomFonts.poppins14W500(
                                            color: HexColor("#FFFFFF")),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: Image.asset(
                                        "assets/images/edit.png",
                                        height: 20,
                                        width: 20,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: double.infinity,
                              height: 48,
                              decoration: BoxDecoration(
                                color: HexColor("#F7F8FC").withOpacity(.1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 16),
                                      hintText: "Email ID",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#FFFFFF")),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: double.infinity,
                              height: 48,
                              decoration: BoxDecoration(
                                color: HexColor("#F7F8FC").withOpacity(.1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 16),
                                      hintText: "Phone Number",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#FFFFFF")),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: double.infinity,
                              height: 48,
                              decoration: BoxDecoration(
                                color: HexColor("#F7F8FC").withOpacity(.1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 16),
                                      hintText: "City",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#FFFFFF")),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 37,
                                width: 160,
                                decoration: BoxDecoration(
                                    color: HexColor("#FFFFFF"),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text(
                                    'Send Invitation',
                                    style: CustomFonts.poppins14W700(
                                        color: HexColor("#FF724C")),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 140,
                            child: SingleSelect2(items: [
                              "All Brands",
                              "Orange Brand Dental",
                              "Orange Brand Orthopedics",
                              "Orange Brand Homeopathy",
                              "Precilo Brand Dental",
                              "Precilo Brand Orthopedics1",
                              "Precilo Brand Orthopedics2",
                              "Precilo Brand Orthopedics3"
                            ], label: 'All Brands'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 120,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                                color: HexColor("#FF724C"),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Filter",
                                  style: CustomFonts.poppins14W600(
                                      color: Colors.white),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Text(
                                "Doctor’s Invitation List (124)",
                                style: CustomFonts.poppins20W600(),
                              ),
                            ),
                            Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 3),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: HexColor("#FFFFFF")),
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
                      SingleChildScrollView(
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                              color: HexColor("#FFF7E9"),
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            children: [
                              for (int index = 0; index < 5; index++)
                                InvitationCard(index: index),
                            ],
                          ),
                        ),
                      ),
                    ],
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
            Expanded(
              flex: 3,
              child: Container(
                height: 22,
                // width: 66,
                decoration: BoxDecoration(
                    color: HexColor("#FF724C"),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Resend',
                    style: CustomFonts.poppins10W700(color: Colors.white),
                  ),
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
