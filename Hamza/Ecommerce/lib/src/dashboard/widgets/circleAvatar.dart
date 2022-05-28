import 'package:flutter/material.dart';

import '../../../resources/resource.dart';

class myCircleAvatar extends StatelessWidget {
  final IconData circleAvatar_Icon;
  const myCircleAvatar({Key? key, required this.circleAvatar_Icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: R.colors.whiteColor,
      child: IconButton(
        icon: Icon(circleAvatar_Icon),
        iconSize: 20,
        color: R.colors.theme,
        focusColor: R.colors.theme,
        onPressed: () {},
      ),
    );
  }
}
