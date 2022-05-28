import 'package:flutter/material.dart';

import '../../../resources/resource.dart';

class TabButton extends StatefulWidget {
  String text;
  double width;
  double height;
  int activeTab;
  int index;
  void Function() onPressed;

  TabButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.activeTab,
    required this.index,
  }) : super(key: key);

  @override
  State<TabButton> createState() => _TabState();
}

class _TabState extends State<TabButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.activeTab == widget.index
              ? R.colors.COLOR_DARK_BLUE
              : R.colors.COLOR_WHITE,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            widget.text,
            style: TextStyle(
              color: widget.activeTab == widget.index
                  ? R.colors.COLOR_WHITE
                  : R.colors.COLOR_BLACK,
            ),
          ),
        ),
      ),
    );
  }
}
