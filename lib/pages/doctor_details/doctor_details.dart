import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../widgets/custom_drawer.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';
import 'package:doctor_dashboard/widgets/custom_appbar.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({Key? key}) : super(key: key);

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String selectedOption = "About";

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
                      Text(
                        "Doctor Details",
                        style: CustomFonts.poppins20W600(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
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
                            width: 10,
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
                            width: 10,
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
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              // selectedOption = 'About';
                            }),
                            child: Container(
                              height: 37,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: HexColor("#FF724C"),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Text(
                                  'Make Live',
                                  style: CustomFonts.poppins14W700(
                                    color: HexColor("#FFFFFF"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: HexColor("#FFE8BF"),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Stack(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                  ),
                                  Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Image.asset(
                                      "assets/images/edit.png",
                                      height: 20,
                                      width: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Container(
                              width: double.infinity,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Colors.white,
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
                                            color: HexColor("#222425")),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: Image.asset(
                                        "assets/images/edit.png",
                                        height: 20,
                                        width: 20,
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
                                color: Colors.white,
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
                                          color: HexColor("#222425")),
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
                                color: Colors.white,
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
                                          color: HexColor("#222425")),
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
                                color: Colors.white,
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
                                      hintText: "Phone Number 2",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#222425")),
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
                                color: Colors.white,
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
                                      hintText: "Whatsapp Number",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#222425")),
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
                                color: Colors.white,
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
                                      hintText: "Experience",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#222425")),
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
                                color: Colors.white,
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
                                      hintText: "Degree",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#222425")),
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
                                color: Colors.white,
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
                                      hintText: "Specialization",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#222425")),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Text(
                              "More Details",
                              style: CustomFonts.poppins20W600(),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () => setState(() {
                                      selectedOption = 'About';
                                    }),
                                    child: Container(
                                      height: 37,
                                      decoration: BoxDecoration(
                                          color: selectedOption == 'About'
                                              ? HexColor("#FF724C")
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Center(
                                        child: Text(
                                          'About',
                                          style: CustomFonts.poppins14W700(
                                            color: selectedOption == 'About'
                                                ? Colors.white
                                                : HexColor("#FF724C"),
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
                                      selectedOption = 'Education';
                                    }),
                                    child: Container(
                                      height: 37,
                                      decoration: BoxDecoration(
                                          color: selectedOption == 'Education'
                                              ? HexColor("#FF724C")
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Center(
                                        child: Text(
                                          'Education',
                                          style: CustomFonts.poppins14W700(
                                            color: selectedOption == 'Education'
                                                ? Colors.white
                                                : HexColor("#FF724C"),
                                          ),
                                        ),
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
                                  child: InkWell(
                                    onTap: () => setState(() {
                                      selectedOption = 'Specialization';
                                    }),
                                    child: Container(
                                      height: 37,
                                      decoration: BoxDecoration(
                                          color:
                                              selectedOption == 'Specialization'
                                                  ? HexColor("#FF724C")
                                                  : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Center(
                                        child: Text(
                                          'Specialization',
                                          style: CustomFonts.poppins14W700(
                                            color: selectedOption ==
                                                    'Specialization'
                                                ? Colors.white
                                                : HexColor("#FF724C"),
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
                                      selectedOption = 'Experience';
                                    }),
                                    child: Container(
                                      height: 37,
                                      decoration: BoxDecoration(
                                          color: selectedOption == 'Experience'
                                              ? HexColor("#FF724C")
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Center(
                                        child: Text(
                                          'Experience',
                                          style: CustomFonts.poppins14W700(
                                            color:
                                                selectedOption == 'Experience'
                                                    ? Colors.white
                                                    : HexColor("#FF724C"),
                                          ),
                                        ),
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
                                  child: InkWell(
                                    onTap: () => setState(() {
                                      selectedOption = 'Achievements';
                                    }),
                                    child: Container(
                                      height: 37,
                                      decoration: BoxDecoration(
                                          color:
                                              selectedOption == 'Achievements'
                                                  ? HexColor("#FF724C")
                                                  : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Center(
                                        child: Text(
                                          'Achievements',
                                          style: CustomFonts.poppins14W700(
                                            color:
                                                selectedOption == 'Achievements'
                                                    ? Colors.white
                                                    : HexColor("#FF724C"),
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
                                      selectedOption = 'Membership';
                                    }),
                                    child: Container(
                                      height: 37,
                                      decoration: BoxDecoration(
                                          color: selectedOption == 'Membership'
                                              ? HexColor("#FF724C")
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Center(
                                        child: Text(
                                          'Membership',
                                          style: CustomFonts.poppins14W700(
                                            color:
                                                selectedOption == 'Membership'
                                                    ? Colors.white
                                                    : HexColor("#FF724C"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Text(selectedOption,
                                style: CustomFonts.poppins14W700(
                                  color: HexColor("#FF724C"),
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.",
                                style: CustomFonts.poppins10W500(
                                  color: HexColor("#222425"),
                                )),
                            const SizedBox(
                              height: 40,
                            ),
                            Text(
                              "Address",
                              style: CustomFonts.poppins20W600(),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Colors.white,
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
                                      hintText: "Address Line 1",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#222425")),
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
                                color: Colors.white,
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
                                      hintText: "Address Line 2",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#222425")),
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
                                color: Colors.white,
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
                                      hintText: "Address Line 3",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#222425")),
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
                                color: Colors.white,
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
                                          color: HexColor("#222425")),
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
                                color: Colors.white,
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
                                      hintText: "Zip Code",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#222425")),
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
                                color: Colors.white,
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
                                      hintText: "State",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#222425")),
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
                                color: Colors.white,
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
                                      hintText: "Country",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#222425")),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Text(
                              "Doctors Documents",
                              style: CustomFonts.poppins20W600(),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Stack(
                              children: [
                                Container(
                                  height: 120,
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                    child: Text(
                                      "Document 1",
                                      style: CustomFonts.poppins16W600(
                                          color: HexColor("#222425")
                                              .withOpacity(.5)),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 14,
                                  right: 24,
                                  child: Container(
                                      height: 36,
                                      width: 36,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: HexColor("#FF724C"),
                                          shape: BoxShape.circle),
                                      child: Center(
                                          child: Image.asset(
                                              'assets/images/download.png'))),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Stack(
                              children: [
                                Container(
                                  height: 120,
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                    child: Text(
                                      "Document 2",
                                      style: CustomFonts.poppins16W600(
                                          color: HexColor("#222425")
                                              .withOpacity(.5)),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 14,
                                  right: 24,
                                  child: Container(
                                      height: 36,
                                      width: 36,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: HexColor("#FF724C"),
                                          shape: BoxShape.circle),
                                      child: Center(
                                          child: Image.asset(
                                              'assets/images/download.png'))),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
