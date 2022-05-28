import 'package:flutter/cupertino.dart';

class ExtraScreen extends StatefulWidget {
  const ExtraScreen({Key? key}) : super(key: key);

  @override
  State<ExtraScreen> createState() => _ExtraScreenState();
}

class _ExtraScreenState extends State<ExtraScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('hello'),
    );
  }
}
