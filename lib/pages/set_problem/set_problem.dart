import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../widgets/custom_drawer.dart';
import 'package:doctor_dashboard/widgets/pagination.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';
import 'package:doctor_dashboard/widgets/custom_appbar.dart';

class SetProblem extends StatefulWidget {
  const SetProblem({Key? key}) : super(key: key);

  @override
  State<SetProblem> createState() => _SetProblemState();
}

class _SetProblemState extends State<SetProblem> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String selectedOption = "Set Problem";

  int currentPage = 1;

  callback(page) {
    setState(() {
      currentPage = page;
    });
  }

  int selectedCard = 1;

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
                      Container(
                        width: double.infinity,
                        height: 48,
                        decoration: BoxDecoration(
                          color: HexColor("#FFF7E9"),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(
                                      left: 32, right: 10),
                                  hintText: "Search",
                                  hintStyle: CustomFonts.poppins14W500(
                                      color:
                                          HexColor("#222425").withOpacity(.5)),
                                  border: InputBorder.none,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                child: Image.asset(
                                  "assets/images/search.png",
                                  height: 20,
                                  width: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () => setState(() {
                                selectedOption = 'Set Problem';
                              }),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: selectedOption == 'Set Problem'
                                        ? HexColor("#FF724C")
                                        : HexColor("#FFF7E9"),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text(
                                    'Set Problem',
                                    style: CustomFonts.poppins16W700(
                                      color: selectedOption == 'Set Problem'
                                          ? HexColor("#FFF7E9")
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
                                selectedOption = 'Set Test';
                              }),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: selectedOption == 'Set Test'
                                        ? HexColor("#FF724C")
                                        : HexColor("#FFF7E9"),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text(
                                    'Set Test',
                                    style: CustomFonts.poppins16W700(
                                      color: selectedOption == 'Set Test'
                                          ? HexColor("#FFF7E9")
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
                                selectedOption = 'Set Medicine';
                              }),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: selectedOption == 'Set Medicine'
                                        ? HexColor("#FF724C")
                                        : HexColor("#FFF7E9"),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text(
                                    'Set Medicine',
                                    style: CustomFonts.poppins16W700(
                                      color: selectedOption == 'Set Medicine'
                                          ? HexColor("#FFF7E9")
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
                                selectedOption = 'Set Surgery';
                              }),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: selectedOption == 'Set Surgery'
                                        ? HexColor("#FF724C")
                                        : HexColor("#FFF7E9"),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text(
                                    'Set Surgery',
                                    style: CustomFonts.poppins16W700(
                                      color: selectedOption == 'Set Surgery'
                                          ? HexColor("#FFF7E9")
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
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Text(
                              "Doctor Details",
                              style: CustomFonts.poppins20W600(),
                            ),
                          ),
                          Expanded(
                              flex: 7,
                              child: Pagination(
                                  pagesLenght: 10,
                                  callback: callback,
                                  currentPage: currentPage))
                        ],
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
                                height: 29,
                                decoration: BoxDecoration(
                                    color: HexColor("#2A2C41"),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text(
                                    'Delete',
                                    style: CustomFonts.poppins9W700(
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
                                height: 29,
                                decoration: BoxDecoration(
                                    color: HexColor("#2A2C41"),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text(
                                    'Add',
                                    style: CustomFonts.poppins9W700(
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
                                height: 29,
                                decoration: BoxDecoration(
                                    color: HexColor("#2A2C41"),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text(
                                    'Update',
                                    style: CustomFonts.poppins9W700(
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
                                height: 29,
                                decoration: BoxDecoration(
                                    color: HexColor("#2A2C41"),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text(
                                    'Refresh',
                                    style: CustomFonts.poppins9W700(
                                      color: HexColor("#FF724C"),
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
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: HexColor("#FFE8BF"),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [for (int i = 1; i < 5; i++) card(i)],
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

  Widget card(index) {
    return InkWell(
      onTap: () => setState(() {
        selectedCard = index;
      }),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "$index",
                      style:
                          CustomFonts.poppins15W600(color: HexColor("#222425")),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: selectedCard == index
                        ? HexColor("#FF724C")
                        : Colors.white,
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
                        'Problem Name',
                        style: CustomFonts.poppins10W600(
                            color: HexColor("#222425").withOpacity(.5)),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Dental Braces',
                        style: CustomFonts.poppins12W600(
                            color: HexColor("#222425")),
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
                        'Price',
                        style: CustomFonts.poppins10W600(
                            color: HexColor("#222425").withOpacity(.5)),
                      ),
                      Text(
                        'Rs. 10,000',
                        style: CustomFonts.poppins12W600(
                            color: HexColor("#222425")),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description',
                  style: CustomFonts.poppins10W600(
                      color: HexColor("#222425").withOpacity(.5)),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis.',
                  style: CustomFonts.poppins10W500(color: HexColor("#222425")),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor("#FFE8BF")),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Light Icon",
                          style: CustomFonts.poppins12W600(
                              color: HexColor("#222425").withOpacity(.5)),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor("#FFE8BF")),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Dark Icon",
                          style: CustomFonts.poppins12W600(
                              color: HexColor("#222425").withOpacity(.5)),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
            if (index < 4)
              Divider(
                color: HexColor(
                  "#EFD19A",
                ),
                height: 40,
              )
          ],
        ),
      ),
    );
  }
}
