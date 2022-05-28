import 'package:flutter/cupertino.dart';

import '../../../resources/resource.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "About",
          style: R.textStyle.heading_5(),
        ),
      ),
    );
  }
}
