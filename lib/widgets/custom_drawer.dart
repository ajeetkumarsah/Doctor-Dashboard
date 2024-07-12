import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';

class CustomDrawer extends StatefulWidget {
  final scaffoldKey;
  const CustomDrawer({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  List options = [
    'Home',
    'Send Invitations',
    'Send APK',
    'Create Specialization',
    'Sub Admin',
    'Recent Activity',
    'Payment',
    'SMS & Voice Call (22)'
  ];

  List icons = [
    'home',
    'invitation',
    'apk',
    'specialization',
    'sub_admin',
    'activity',
    'payment',
    'sms'
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: GestureDetector(
              onTap: () => widget.scaffoldKey.currentState.closeEndDrawer(),
              child: const SizedBox()),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.all(20),
            color: HexColor("FF724C"),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/image.png",
                    height: 100,
                    width: 100,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Center(
                  child: Text(
                    "Admin Name",
                    style: CustomFonts.poppins20W700(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                for (String option in options)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/icons/${icons[options.indexOf(option)]}.png",
                          height: 25,
                          width: 25,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          option,
                          style: CustomFonts.poppins16W600(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                const Spacer(),
                Container(
                  height: 42,
                  width: 110,
                  decoration: BoxDecoration(
                      color: HexColor("#FFFFFF"),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      'LOGOUT',
                      style:
                          CustomFonts.poppins14W700(color: HexColor("#FF724C")),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
