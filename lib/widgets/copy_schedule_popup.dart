import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';
// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member

class CopySchedulePopup extends StatefulWidget {
  final String text;
  final double? bottom;
  const CopySchedulePopup({super.key, required this.text, this.bottom});

  @override
  State<CopySchedulePopup> createState() => _CopySchedulePopupState();
}

class _CopySchedulePopupState extends State<CopySchedulePopup> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  ValueNotifier<List> selected = ValueNotifier([]);

  OverlayEntry _createOverlayEntry() {
    // RenderBox renderBox = context.findRenderObject() as RenderBox;
    // var size = renderBox.size;

    return OverlayEntry(
      builder: (context) => Positioned(
        width: MediaQuery.of(context).size.width - 32,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(16.0, widget.bottom ?? -350.0),
          child: Material(
              elevation: 4.0,
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
              child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                      color: HexColor("#FFE8BF").withOpacity(0.85),
                      borderRadius: BorderRadius.circular(17)),
                  constraints: const BoxConstraints(maxHeight: 500),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ValueListenableBuilder(
                      valueListenable: selected,
                      builder: (_, value, __) {
                        return ListView(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Text('Copy Schedule',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: HexColor("#222425"),
                                        fontSize: 16)),
                              ),
                              GestureDetector(
                                onTap: () => _removeOverlay(),
                                child: Container(
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
                                      'DONE',
                                      style: CustomFonts.poppins10W700(
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          ...[
                            "21 Feb, Wed",
                            "22 Feb, Wed",
                            "23 Feb, Wed",
                            "24 Feb, Wed",
                            "25 Feb, Wed",
                            "26 Feb, Wed",
                            "27 Feb, Wed"
                          ].map((e) {
                            var clicked = value.contains(e);

                            return GestureDetector(
                              onTap: () {
                                if (selected.value.contains(e)) {
                                  selected.value.remove(e);
                                } else {
                                  selected.value.add(e);
                                }
                                selected.notifyListeners();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(45)),
                                margin: const EdgeInsets.only(bottom: 6),
                                padding:
                                    const EdgeInsets.fromLTRB(30, 12, 12, 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("2024",
                                            style: CustomFonts.poppins8W600(
                                                color: HexColor("#FF724C"))),
                                        const SizedBox(height: 4),
                                        Text(e,
                                            style: CustomFonts.poppins14W800(
                                                color: HexColor("#6A5633"))),
                                      ],
                                    ),
                                    CircleAvatar(
                                      radius: clicked ? 17 : 13,
                                      backgroundColor: clicked
                                          ? HexColor("#FF724C")
                                          : HexColor("#FFE8BF"),
                                      child: Icon(
                                          clicked ? Icons.check : Icons.add,
                                          color: clicked
                                              ? Colors.white
                                              : HexColor("#6A5633"),
                                          size: 16),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                          const SizedBox(
                            height: 16,
                          ),
                        ]);
                      }))),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: HexColor("#FFE8BF"),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset("assets/images/icons/note.png"),
                ),
                Expanded(
                    child: Text(
                  widget.text,
                  style: CustomFonts.poppins12W700(color: HexColor("#6A5633")),
                )),
                const SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: HexColor("#6A5633"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
