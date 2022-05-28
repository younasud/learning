import 'package:flutter/cupertino.dart';

import '../../../resources/resources.dart';

class CustomTab extends StatefulWidget {
  String text;
  double width;
  double height;
  int activeTab;
  int index;
  void Function() onPressed;

  CustomTab({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.activeTab,
    required this.index,
  }) : super(key: key);

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.activeTab == widget.index
              ? R.color.purpleBlueColor
              : R.color.whiteColor,
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
                  ? R.color.whiteColor
                  : R.color.blackColor,
            ),
          ),
        ),
      ),
    );
  }
}
