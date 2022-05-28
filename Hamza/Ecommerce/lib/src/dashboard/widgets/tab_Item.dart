import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../resources/resource.dart';

class tab_Item extends StatefulWidget {
  final String tab_text;
  final bool is_active;
  void Function() onTabPressed;

  tab_Item(
      {Key? key,
      required this.tab_text,
      required this.is_active,
      required this.onTabPressed})
      : super(key: key);

  @override
  State<tab_Item> createState() => _tab_ItemState();
}

class _tab_ItemState extends State<tab_Item> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: 60,
        decoration: BoxDecoration(
          color:
              widget.is_active == true ? R.colors.theme : R.colors.whiteColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            widget.tab_text,
            style: widget.is_active == true
                ? R.textStyle.whiteSmallHeading()
                : R.textStyle.graySmallHeading(),
          ),
        ),
      ),
      onTap: widget.onTabPressed,
    );
  }
}
