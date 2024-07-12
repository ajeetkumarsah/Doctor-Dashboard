import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';

class SingleSelectFilter extends StatefulWidget {
  const SingleSelectFilter({super.key});

  @override
  State<SingleSelectFilter> createState() => _SingleSelectFilterState();
}

class _SingleSelectFilterState extends State<SingleSelectFilter> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;

    return OverlayEntry(
      builder: (context) => Positioned(
        width: 280,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(-50.0, size.height + 5.0),
          child: Material(
              elevation: 4.0,
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
              child: GestureDetector(
                onTap: () => _removeOverlay(),
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                      color: HexColor("#FF724C").withOpacity(0.85),
                      borderRadius: BorderRadius.circular(17)),
                  constraints: const BoxConstraints(maxHeight: 260),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListView(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: HexColor("#FFFFFF").withOpacity(0.1),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.05)),
                            borderRadius: BorderRadius.circular(26)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        child: const Text('ALL OPTION',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                fontSize: 12)),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        decoration: BoxDecoration(
                            color: HexColor("#FFFFFF").withOpacity(0.1),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.05)),
                            borderRadius: BorderRadius.circular(26)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Expanded(
                                  child: Text('INVITATION SENT',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white,
                                          fontSize: 12)),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            const SizedBox(height: 6),
                            const Text('. All',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 12)),
                            const SizedBox(height: 6),
                            const Text('. All Types of Registration',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 12)),
                            const SizedBox(height: 6),
                            const Padding(
                              padding: EdgeInsets.only(left: 24, bottom: 6),
                              child: Text('. Registered',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 12)),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 24, bottom: 6),
                              child: Text('. Express Registration',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 12)),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 24, bottom: 6),
                              child: Text('. Partial Registration',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 12)),
                            ),
                            const Text('. Unregistered',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 12)),
                            const SizedBox(height: 6),
                            const Text('. Resend 2 or more',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 12)),
                            const SizedBox(height: 6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 24,
                                  // width: 66,
                                  margin: const EdgeInsets.only(right: 8),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  decoration: BoxDecoration(
                                      color: HexColor("#2A2C41"),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                    child: Text(
                                      'All',
                                      style: CustomFonts.poppins10W700(
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Container(
                                  height: 24,
                                  // width: 66,
                                  margin: const EdgeInsets.only(right: 8),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                    child: Text(
                                      'Exclude Moved to APK',
                                      style: CustomFonts.poppins10W700(
                                          color: HexColor("#FF724C")),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        decoration: BoxDecoration(
                            color: HexColor("#FFFFFF").withOpacity(0.1),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.05)),
                            borderRadius: BorderRadius.circular(26)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text('APK SENT',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white,
                                          fontSize: 12)),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            SizedBox(height: 6),
                            Text('. Moved to APK Page',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 12)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        decoration: BoxDecoration(
                            color: HexColor("#FFFFFF").withOpacity(0.1),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.05)),
                            borderRadius: BorderRadius.circular(26)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        child: const Text('DELETED INVITATION LINK',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                fontSize: 12)),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }

  void _showOverlay() {
    if (_overlayEntry == null) {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
    }
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: () => _showOverlay(),
        child: Container(
          width: 120,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
              color: HexColor("#FF724C"),
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Filter",
                style: CustomFonts.poppins14W600(color: Colors.white),
              ),
              const Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
